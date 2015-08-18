#!/bin/bash
## To hopefully give graphical desktop environments accessibility with gtk aps

export SAL_USE_VCLPLUGIN="gtk"
export GTK_MODULES=gail:atk-bridge

