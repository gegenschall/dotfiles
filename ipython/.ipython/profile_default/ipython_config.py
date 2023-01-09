#from powerline.bindings.ipython.since_7 import PowerlinePrompts
c = get_config()

#c.TerminalInteractiveShell.simple_prompt = False
#c.TerminalInteractiveShell.prompts_class = PowerlinePrompts

c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
