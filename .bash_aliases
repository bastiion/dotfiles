#
alias eix="aptitude search "


#
alias emerge="sudo aptitude install "


#List all Files from a package
alias dpkgListFiles="dpkg -L "


#List packages, to whoch path or filepattern belngs to
alias dpkgFileOrigin="dpkg -S "


#Show all defined aliases out of ~/.bash_aliases*
alias showAliases="grep -B1 \"^alias \" ~/.bash_aliases*"


#start Picasa3 localy
alias picasa3="env WINEPREFIX=~/.wine_picasa/ wine ~/.wine_picasa/drive_c/Program\ Files\ \(x86\)/Google/Picasa3/Picasa3.exe"


#takes a screenshot from the first davice connected to adb
alias screenshotAndroid="adb shell screencap -p /sdcard/screenshot.png;adb pull /sdcard/screenshot.png;adb shell rm /sdcard/screenshot.png;"


#
alias allegrograph-start="sudo /opt/allegroGraph/bin/agraph-control --config /etc/allegroGraph/agraph.cfg start"


#
alias allegrograph-stop="sudo /opt/allegroGraph/bin/agraph-control --config /etc/allegroGraph/agraph.cfg stop"


#
alias Suspend="i3lock -i background/lovis/lockscreen.png & dbus-send --system --print-reply     --dest="org.freedesktop.UPower"     /org/freedesktop/UPower     org.freedesktop.UPower.Suspend"


#Android crosscompilation with cmake
alias cmake-android="cmake -DCMAKE_TOOLCHAIN_FILE=android.toolchain.cmake -DANDROID_NDK=${NDK} -DCMAKE_BUILD_TYPE=Release -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_ABI=\"armeabi-v7a with NEON\""


#
alias vim7modules="module-toggler -a ~/.vim/bundles_available/ -e ~/.vim/bundle/"


#
alias restartIBus="ibus-daemon -rd"


#
alias gp="gpicview"


# ssh with x and high compresson
alias ssh-x='/usr/bin/ssh -c arcfour,blowfish-cbc -XC'


#
alias dotgit="git --git-dir ~/dotfiles/.git --work-tree=$HOME"


# Scala with all libraries found in com.typesafe.play
alias scala-with-play="scala -cp $(find  ~/.ivy2/cache/com.typesafe.play/ -iname '*2.11*' -name '*.jar' | tr '\n' ':' | sed 's/:$/\n/')"


#
alias cscope_cpp_files="find . -type f -print | grep -E '\.(c(pp)?|h)$' > cscope.files"


#
alias c3d2pavu="PULSE_SERVER=cidre.local pavucontrol"


#give group and others access to dirs and files, if x is set to user give x to others (capital X)
alias chmodD755F644="chmod -R u+rwX,go+rX,go-w"


#
alias git-submodule-recursive-update="git submodule update --recursive --remote"
