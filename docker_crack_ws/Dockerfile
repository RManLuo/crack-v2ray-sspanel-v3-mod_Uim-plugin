# 基础镜像
FROM phusion/baseimage
# 软件源加速
# COPY sources.list /etc/apt/sources.list
RUN apt update
RUN apt-get install wget curl -y

# 安装v2ray
ARG panelurl
ARG panelkey
ARG nodeid
ARG downwithpanel
ARG speedtestrate
ARG paneltype
ARG usemysql

RUN wget -N --no-check-certificate https://raw.githubusercontent.com/RManOfCN/pay-v2ray-sspanel-v3-mod_Uim-plugin/master/install-release.sh &&chmod +x install-release.sh
RUN bash install-release.sh --panelurl ${panelurl} --panelkey ${panelkey} --nodeid ${nodeid} --downwithpanel ${downwithpanel} --speedtestrate ${speedtestrate} --paneltype ${paneltype} --usemysql ${usemysql}

COPY ./start.sh /
RUN chmod 755 /start.sh
CMD /start.sh
