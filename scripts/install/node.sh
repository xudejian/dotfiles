#!/bin/bash
#require brew
which node >/dev/null 2>&1 && exit
brew install node

npm config set registry https://registry.npm.taobao.org # 注册模块镜像
npm config set disturl https://npm.taobao.org/dist # node-gyp 编译依赖的 node 源码镜像

#以下选择添加
npm config set chromedriver_cdnurl http://cdn.npm.taobao.org/dist/chromedriver # chromedriver 二进制包镜像
npm config set operadriver_cdnurl http://cdn.npm.taobao.org/dist/operadriver # operadriver 二进制包镜像
npm config set phantomjs_cdnurl http://cdn.npm.taobao.org/dist/phantomjs # phantomjs 二进制包镜像
npm config set fse_binary_host_mirror https://npm.taobao.org/mirrors/fsevents # fsevents 二进制包
npm config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass # node-sass 二进制包镜像
npm config set electron_mirror http://cdn.npm.taobao.org/dist/electron/ # electron 二进制包镜像
