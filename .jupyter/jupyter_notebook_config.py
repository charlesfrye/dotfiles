# Configuration file for jupyter-notebook.

## (bytes/sec) Maximum rate at which stream output can be sent on iopub before
#  they are limited.
c.NotebookApp.iopub_data_rate_limit = 1000000000

## Listen on all IP addresses
c.NotebookApp.ip = "0.0.0.0"

## Whether to open in a browser after starting. The specific browser used is
#  platform dependent and determined by the python standard library `webbrowser`
#  module, unless it is overridden using the --browser (NotebookApp.browser)
#  configuration option.
c.NotebookApp.open_browser = False

## The port the notebook server will listen on.
c.NotebookApp.port = 8890
