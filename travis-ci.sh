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

git config --global user.name "1"
git config --global user.email "1"
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo -o repo
chmod +x repo
./repo init -u https://github.com/dragon-tc/DragonTC -b master --color=true
./repo sync -j8 -c -f
cd build
chmod +x build-dtc
./build-dtc 9.0 opt
ls ../out/9.0
cd ../out/9.0
tar cxvf DTC-9.0.tar.xz *
push