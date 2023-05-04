#!/bin/bash

(git clone -b v21.02.6 https://github.com/immortalwrt/immortalwrt openwrt) || (cd openwrt && git stash && git pull)

cd openwrt

echo "src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git xiaorouji2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default

./scripts/feeds update -a
./scripts/feeds install -a
