FROM python:3.9-alpine
LABEL name=ie.psmware.pyMkDocs
LABEL vendor="psmware ltd"
LABEL ie.psmware.pyMkDocs.version="0.1"
LABEL ie.psmware.pyMkDocs.version.release-date="2022-03-03"
LABEL ie.psmware.pyMkDocs.version.version.is-production="False"

RUN echo "===> Creating installing MkDocs..." \
    && python -m pip install --upgrade pip
COPY requirements.txt /root
RUN pip3 install -r /root/requirements.txt
RUN rm -fR /root/requirements.txt

COPY mkDeploy /usr/local/bin
COPY mikeDeploy /usr/local/bin
RUN chmod 755 /usr/local/bin