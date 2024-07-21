path=$PWD
echo $path

make_st() {
    cd ./st/
    make & sudo make install
    cd $path
}

make_dwm() {
    cd ./dwm/
    make
    sudo make install
    sudo mkdir /usr/share/xsessions/
    sudo cp ./desktop/dwm.desktop /usr/share/xsessions/
    cd $path
}

make_slstatus() {
    cd ./slstatus/
    make && sudo make install
    cd $path
}

ln_script() {
    ln -s $PWD/scripts ~/.dwm
}

make_st
make_dwm
make_slstatus
ln_script
