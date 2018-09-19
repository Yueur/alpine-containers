FROM debian

# Install basic notebook

# Commented since it doesn't work for CMD
# ENV BOOT_BASH /srv/start_container.sh

ENV USER_NAME notebook_daemon
ENV WORKING_FOLDER /srv/notebook/
ENV LISTEN_PORT 8888

RUN apt-get update && \
	apt-get -y install python3 python3-pip && \
#	apt-get -y install python3-dev && \
	apt-get purge -y --auto-remove ${build_deps} && \
	rm -r /var/lib/apt/lists/*

#RUN python3 -m pip install --upgrade pip && \
#	python3 -m pip install jupyter

RUN \
#	pip3 install --upgrade pip && \
	pip3 install jupyter

# User
RUN adduser --system \
		--shell /bin/bash \
		--disabled-password \
		--group \
		--home  $WORKING_FOLDER \
		$USER_NAME

RUN echo "#!/bin/bash" > /srv/start_container.sh && \
	echo "" >> /srv/start_container.sh && \
	echo "jupyter notebook --ip=0.0.0.0 --port=$LISTEN_PORT" >> /srv/start_container.sh && \
	chmod 755 /srv/start_container.sh

USER $USER_NAME:$USER_NAME

EXPOSE $LISTEN_PORT

WORKDIR $WORKING_FOLDER

# $LISTEN_PORT
CMD ["/srv/start_container.sh"]

