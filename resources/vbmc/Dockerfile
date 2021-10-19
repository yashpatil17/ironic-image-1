ARG BASE_IMAGE=docker.io/centos:centos8

FROM $BASE_IMAGE

RUN dnf install -y python3 python3-requests python3-pip && \
     curl https://raw.githubusercontent.com/openstack/tripleo-repos/master/plugins/module_utils/tripleo_repos/main.py | python3 - -b master current-tripleo --no-stream && \
     dnf upgrade -y && \
     dnf install -y python3-virtualbmc && \
     dnf install -y wget && \
     dnf clean all && \
     rm -rf /var/cache/{yum,dnf}/*

COPY download-certificates.sh /bin/
RUN chmod +x /bin/download-certificates.sh

CMD /bin/download-certificates.sh; /usr/bin/vbmcd --foreground
