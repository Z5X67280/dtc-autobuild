# CI Script
# Copyright (C) LiteRako

git clone https://github.com/fabianonline/telegram.sh telegram
 
TELEGRAM_ID=-1001268516549
TELEGRAM=telegram/telegram
TELEGRAM_TOKEN=${BOT_API_KEY}
BOT_API_KEY=723044228:AAFpmF9aHsMTinCJ7Yq3HLxEzjEBiO47rlU
 
export TELEGRAM_TOKEN
 
function push() {
	JIP=$echo DTC-9.0.tar.xz
	curl -F document=@$JIP  "https://api.telegram.org/bot$BOT_API_KEY/sendDocument" \
			-F chat_id="$TELEGRAM_ID"
}

sudo apt-get install build-essential git git-svn bc binfmt-support libllvm-3.6-ocaml-dev llvm-3.6 llvm-3.6-dev llvm-3.6-runtime cmake automake autogen autoconf autotools-dev libtool shtool python m4 gcc libtool zlib1g-dev libomp-dev repo

repo init -u https://github.com/dragon-tc/DragonTC -b master
repo sync -j8 -c -f
cd build
chmod +x build-dtc
./build-dtc 9.0 opt
ls ../out/9.0
cd ../out/9.0
tar cxvf DTC-9.0.tar.xz *
push