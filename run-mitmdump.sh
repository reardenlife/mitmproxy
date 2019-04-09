#!/bin/sh
. venv/bin/activate  # "venv\Scripts\activate" on Windows
mitmdump --version
mitmdump --set console_eventlog_verbosity=debug --mode transparent --set block_global=false --listen-host 127.0.0.1 2>&1 > mitmdump.log &
