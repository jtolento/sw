# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

##### --- EXPORTS --- #####

export PS1='\u@\h:\w\$ ' 

export PATH="./:/Users/jtolento/sh:/Users/jtolento/bin:/opt/local/bin:/opt/local/libexec/gnubin:/usr/local:/usr/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"
export LD_LIBRARY_PATH="/Users/jtolento/lib:/usr/local/lib:/opt/local/lib:/opt/local/bin:/usr/lib:$LD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="/Users/jtolento/lib:/usr/local/lib:/opt/local/lib:/usr/lib:/opt/local/bin:$DYLD_LIBRARY_PATH"

export NETCDF_ROOT=/opt/local
export NETCDF_INC=/opt/local/include
export NETCDF_LIB=/opt/local/lib



export LINUX_CC=gcc
export LINUX_CXX=g++
export MY_BIN_DIR=$HOME/bin
export MY_LIB_DIR=$HOME/lib
export DATA=$HOME

export ANTLR_ROOT=$HOME
export UDUNITS2_XML_PATH='/opt/local/lib/ncarg/udunits/udunits2.xml'


###### --- ALIAS --- ###### 

alias cc='clear'

alias downloadMerrra2='wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --auth-no-challenge=on --keep-session-cookies --content-disposition -i'


alias pathport='export PATH="/Users/jtolento/sh:/Users/jtolento/bin:/opt/local/bin:/opt/local/sbin:/opt/local/libexec/gnubin:/usr/local:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"'
alias ldpathport='export LD_LIBRARY_PATH="/opt/local/lib:/opt/local/bin:/usr/lib:/Users/jtolento/lib:/usr/local/lib:$LD_LIBRARY_PATH"'

alias pathbuild='export PATH="/Users/jtolento/sh:/Users/jtolento/bin:/opt/local/bin:/opt/local/libexec/gnubin:/usr/local:/usr/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"'
alias ldpathbuild='export LD_LIBRARY_PATH="/Users/jtolento/lib:/usr/local/lib:/opt/local/lib:/opt/local/bin:/usr/lib:$LD_LIBRARY_PATH"'


alias zenpath='export PATH="/Users/jtolento/sh:/Users/jtolento/bin:/opt/local/libexec/gnubin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/jtolento/bin"'
alias ldzenpath='export LD_LIBRARY_PATH="/Users/jtolento/lib:/usr/local/lib:/opt/local/lib:/usr/lib"'

alias resetpath='export PATH="/Users/jtolento/sh:/Users/jtolento/bin:/opt/local/bin:/opt/local/libexec/gnubin:/usr/local:/usr/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"'
alias resetldpath='export LD_LIBRARY_PATH="/Users/jtolento/lib:/usr/local/lib:/opt/local/lib:/opt/local/bin:/usr/lib"'

echo "Bashrc has ran"

