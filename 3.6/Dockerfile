FROM centos:7
MAINTAINER Sylvanus HOUGBEKEY <shougbekey@prestaconcept.net>
ENV LO_VERSION=3.6.7.2
RUN curl -o libreoffice.tar.gz https://downloadarchive.documentfoundation.org/libreoffice/old/${LO_VERSION}/rpm/x86_64/LibO_${LO_VERSION}_Linux_x86-64_install-rpm_en-US.tar.gz \
    && tar -xzf libreoffice.tar.gz \
    && cd LibO_${LO_VERSION}_Linux_x86-64_install-rpm_en-US \
    && yum -y localinstall RPMS/*.rpm \
    && yum -y  install libSM \
    && cd - \
    && rm libreoffice.tar.gz \
    && rm -rf LibO_${LO_VERSION}_Linux_x86-64_install-rpm_en-US \
    && yum -y install sudo \
    && yum clean all

ADD script/entrypoint.sh /
ADD script/soffice /

ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["sh", "/soffice"]
