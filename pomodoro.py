#!/usr/bin/env python
# coding: utf-8

##
import ipywidgets as widgets
from ipywidgets import Layout, VBox, HBox
import numpy as np
import pandas as pd
import qgrid
from datetime import datetime,timedelta
import time
import _thread

import simpleaudio as sa
from os import getcwd
cwd=getcwd()
##
def play(name):
    '''SexyWays, Invincible, BattleAgainstClown
    '''
    wave_obj = sa.WaveObject.from_wave_file( cwd+'/'+name+'.wav')
    play_obj = wave_obj.play()
    #play_obj.wait_done()

##
class PomoApp0(widgets.VBox):
# TIMES
    statusWidget = widgets.Text( description='Status',
            placeholder='CurrentStatus - due in hh:mm | Action', 
            layout=Layout(width='80%'))#style = {'description_width': 'initial'},
    df_times = pd.DataFrame(data=[24,18,3],index=['work','longBreak','shortBreak'],columns=['Duration(min)'],dtype=int) #90,60,30
    qw_times = qgrid.show_grid(df_times, show_toolbar=False)
    restartIntervalButton = widgets.Button(description='Restart interval', icon='clock-o')
    #timerActiveCheckBox = widgets.Checkbox(value=False, description='Timer Active', indent=True)
    # TO DO LIST
    df_todo = pd.DataFrame(data=[['Planning','default task','commit message'],
                                 ['Chores'  ,'Dishes'      ,'hate it!']], 
                         columns=['Activity','Task','Comment'] )
    df_todo.index.set_names('indexName', inplace=True)
    qw_todo = qgrid.show_grid(df_todo, show_toolbar=True)
    # LOG
    df_log = pd.DataFrame(data  =[['App','Started','Hello world!' ]], 
                         index=pd.DatetimeIndex([datetime.now()], name='DatetimeIndex'),
                         columns=['Activity','Task','Comment'] )
    qw_log = qgrid.show_grid(df_log, show_toolbar=False)
    manualLogButton = widgets.Button( description='Manual log', disabled=False, 
                                   button_style='', # 'success', 'info', 'warning', 'danger' or ''    
                                   tooltip='Click to log', icon='check-square-o' ) #check
# APP STATUS
    count  ={'work':0,
       'shortBreak':-1,
        'longBreak':0}
    restartFlag=False
    sessionStartTime = datetime.now()
    dueTime= None
    remTime= None
    waitTime = None
    sr=0
    status = 'shortBreak'#'work' # 'longBreak'
# RESTART
    def restartIntervalHandler(self, event):
        self.restartFlag=True
        self.restartIntervalButton.icon='clock'
        self.restartIntervalButton.description='...restarting'
        time.sleep(4)
        self.restartIntervalButton.icon='clock-o'
        self.restartIntervalButton.description='Restart interval'
        self.restartFlag=False
# WAIT
    def waitUpdate(self):
        self.dueTime=datetime.now()+timedelta(minutes=int(self.waitTime)) #seconds
        for i in range(360):
            time.sleep(2)
            now=datetime.now()
            if now>self.dueTime:
                self.statusWidget.value=self.status+' is Due!'
                return
            if self.restartFlag:
                self.statusWidget.value=self.status+' restartFlag!'
                self.dueTime=datetime.now()+timedelta(seconds=int(self.waitTime))
            self.remTime=self.dueTime-now
            self.statusWidget.value=self.status+',\tis due at '+self.dueTime.strftime('%X')+',\tdue in '+str(self.remTime).split('.')[0]+',\tcumulative:'+str(self.count)
# STATUS CYCLING
    def doNext(self, statusWidget, restartFlag):
        if self.status=='work':
            self.count['work']+=1 
            if self.count['work'] %4 == 0:
                self.status='longBreak'
                statusWidget.value='work->longBreak'
                self.waitTime=self.qw_times.get_changed_df().loc['longBreak','Duration(min)']
                play('SexyWays')
            else:
                self.status='shortBreak'
                statusWidget.value='work->shortBreak'
                self.waitTime=self.qw_times.get_changed_df().loc['shortBreak','Duration(min)']
                play('BattleAgainstClown')
        elif self.status=='shortBreak':
            self.count['shortBreak']+=1 
            self.status='work'
            statusWidget.value='shortBreak->work'
            self.waitTime=self.qw_times.get_changed_df().loc['work','Duration(min)']
            play('Invincible')
        elif self.status=='longBreak':
            self.count['longBreak']+=1 
            self.status='work'
            statusWidget.value='longBreak->work'
            self.waitTime=self.qw_times.get_changed_df().loc['work','Duration(min)']
            play('Invincible')
        else:
            print('WTF Exit!')
            return 
        self.waitUpdate()
        self.Log(None)
        try:
            return self.doNext(self.statusWidget, self.restartFlag)
        finally:
            pass
    #def timerActiveCheckBoxHandler(self, change):
    #    if change.new:
    #        _thread.start_new_thread( self.doNext, ( self.statusWidget, self.restartFlag,))
    #    else:
    #        _thread.exit()
# LINE CHANGED
    def qw_todo_selection_changed_handler(self, event, qgrid_widget):
        sr=event['new']
        #sr=qgrid_widget.get_selected_rows()
        if len(sr)!=1:
            self.statusWidget.value='ALERT Select just ONE row'
            return
        sr=sr[0]
        self.sr=sr
# LOG LINE
    def Log(self, event):
        if self.status=='work':
            self.qw_log.add_row( [ ('DatetimeIndex',datetime.now()) ]+ list(self.qw_todo.get_changed_df().loc[self.sr].items()) )
        elif self.status=='shortBreak':
            self.qw_log.add_row( [ ('DatetimeIndex',datetime.now()), ('Activity','shortBreak'), ('Task','shortBreak'),('Comment',self.count['shortBreak']) ] )
        elif self.status== 'longBreak':
            self.qw_log.add_row( [ ('DatetimeIndex',datetime.now()), ('Activity', 'longBreak'), ('Task', 'longBreak'),('Comment',self.count[ 'longBreak']) ] )
# INIT
    def __init__(self):
        super().__init__()
# PLUG
        self.qw_todo.on('selection_changed', self.qw_todo_selection_changed_handler)  
        self.restartIntervalButton.on_click( self.restartIntervalHandler)
        self.manualLogButton.on_click( self.Log)
        #self.timerActiveCheckBox.observe( self.timerActiveCheckBoxHandler)
        #change=Event()
        #change.new=True
        #self.timerActiveCheckBoxHandler(change)
        #self.children = [ self.statusWidget, HBox([ self.timerActiveCheckBox, self.restartIntervalButton]),  self.qw_times] 
# RUN BACKGROUND STATUS CLOCK
        try:
            _thread.start_new_thread( self.doNext, ( self.statusWidget, self.restartFlag,))
        finally:
            pass
# LAYOUT
        mainbox=VBox([ HBox([ self.manualLogButton, self.restartIntervalButton]), self.qw_todo ])
        self.tab = widgets.Tab(children = [mainbox, self.qw_log, self.qw_times])
        self.tab.set_title(0, 'Activities')
        self.tab.set_title(1, 'Log')
        self.tab.set_title(2, 'TimeSetup')
        self.children = [ self.statusWidget, self.tab] 
