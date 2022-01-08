ARG IMAGE=intersystemsdc/iris-community
ARG IMAGE=intersystemsdc/iris-ml-community:2021.2.0.617.0-zpm
#ARG IMAGE=store/intersystems/iris-community:2021.2.0.617.0
FROM $IMAGE

USER root   
        
WORKDIR /opt/irisbuild
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisbuild
USER ${ISC_PACKAGE_MGRUSER}

#COPY  Installer.cls .
COPY  src src
COPY module.xml module.xml
COPY iris.script iris.script

RUN iris start IRIS \
	&& iris session IRIS < iris.script \
    && iris stop IRIS quietly
