type_cpu=$(lscpu|grep Architecture|awk '{print $2}')
if [ $type_cpu == "aarch64" ]
then
    type_cpu="arm64"
elif [ $type_cpu == "x86_64" ]
then
    type_cpu="64bit"
fi
if [ ! -f "./hugo_0.109.0_Linux-"$type_cpu".deb" ]
then
    curl -L "https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_0.109.0_linux-"$type_cpu".deb" -o last.deb
fi
apt install ./last.deb
rm last.deb
make build
