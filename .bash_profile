shopt -s expand_aliases

# MacPorts Installer addition on 2013-10-18_at_17:27:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:/usr/local/bin:/usr/bin

export LANG=en_US.UTF-8

#use keychain to allow cron jobs access to GitHub
#eval `keychain --eval --agents ssh --inherit any id_rsa`
#keychain ~/.ssh/id_rsa

alias Assembler=/Users/charlesfrye/Summer2015/nand2tetris/tools/Assembler.sh
alias HardwareSimulator=/Users/charlesfrye/Summer2015/nand2tetris/tools/HardwareSimulator.sh
alias CPUEmulator=/Users/charlesfrye/Summer2015/nand2tetris/tools/CPUEmulator.sh
alias VMEmulator=/Users/charlesfrye/Summer2015/nand2tetris/tools/VMEmulator.sh
alias JackCompiler=/Users/charlesfrye/Summer2015/nand2tetris/tools/JackCompiler.sh
alias py3="source activate py3"
alias py27="source activate root"
py3 2> /dev/null

# added by Anaconda3 5.0.0 installer
export PATH="/Users/charlesfrye/anaconda3/bin:$PATH"
