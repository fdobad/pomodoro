Pomodoro Auto Tracker : Anti Procastination Time Management App
# The technique
Thanks to [Francesco Cirillo](https://francescocirillo.com/pages/pomodoro-technique), more [info](https://en.wikipedia.org/wiki/Pomodoro_Technique)
1. __Choose a task you'd like to get done__  
_Something big, something small, something you’ve been putting off for a million years: it doesn’t matter. What matters is that it’s something that deserves your full, undivided attention._  

2. __Set the Pomodoro for 25 minutes__  
_Make a small oath to yourself: I will spend 25 minutes on this task and I will not interrupt myself. You can do it! After all, it’s just 25 minutes._  

3. __Work on the task until the Pomodoro rings__  
_Immerse yourself in the task for the next 25 minutes. If you suddenly realize you have something else you need to do, write the task down on a sheet of paper._  

4. __When the Pomodoro rings, put a checkmark on a paper__  
_Congratulations! You’ve spent an entire, interruption-less Pomodoro on a task._  

5. __Take a short break__  
_Breathe, meditate, grab a cup of coffee, go for a short walk or do something else relaxing (i.e., not work-related). Your brain will thank you later._  

6. __Every 4 pomodoros, take a longer break__  
_Once you’ve completed four pomodoros, you can take a longer break. 20 minutes is good. Or 30. Your brain will use this time to assimilate new information and rest before the next round of Pomodoros._  

# Usage

1. (Restart Kernel &) __Run up to the indicated cell__ (6th cell)
2. __Press play on the widget__ (3th cell output) to start the timer (and start working on your first pomodoro interval!)
3. __Select your current activity__ before the work interval ends, by selecting a row on the Activities table, don't worry a ringtone will get your attention giving you 30s to spare before each interval change.  

_That's it, more options:_
   - Add or edit your goals on the Activities sheet 
   - View each log and overall achievements (>4 registers) 
   - Configure the lenght of each interval in minutes 
   - Enable/disable change .wav ringtones 
   - Import/Export all 3 tables (todo, log, setup) as .csv files 
   - Skip to next interval 
   - Delay the interval one minute 

# Current state

Version 2:
- PomodoroV2.ipynb
- Play, pause and stop for the timer
- Skip to next & add one minute for each deadline
- Configurable (.wav) sounds play ending 30s before each interval change

Version 1:
- PomodoroV1.ipynb + pomodoro.py
- The selected row will be the logged one.
- Sounds are hardcoded
- Time setup table are read as seconds

## Modules or Libraries used
- ipywidgets, qgrid, jupyterlab  
- Ringtones [simpleaudio](https://github.com/hamiltron/py-simple-audio)
  - `$ apt install libasound2-dev`
  - v1: configure files
- "Database" as [pandas dataframe](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.html)
  - v1: csv import/export
- Timer as background
  - v0: [_thread](https://docs.python.org/3/library/_thread.html)
- UI 
  - v0: [ipywidgets](https://github.com/jupyter-widgets/ipywidgets) + [qgrid](https://github.com/quantopian/qgrid): jupyterlab-notebook  
  - v1: tkinter [PySimpleGui](https://github.com/PySimpleGUI/PySimpleGUI): cross-platform installers?