FROM windev/webdev-base:US270103s

COPY stockprueba.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/stockprueba

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/stockprueba/