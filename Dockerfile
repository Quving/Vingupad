FROM node:latest
ENV EPAD epad
WORKDIR /vingupad

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get install -y wget curl gzip git curl python libssl-dev pkg-config build-essential unzip

# Get Etherpad
RUN wget -O $EPAD.zip http://github.com/ether/etherpad-lite/zipball/master && \
	unzip $EPAD.zip && \
	mv ether-etherpad-lite-* $EPAD && \
	rm $EPAD.zip

# Install Deps
RUN $EPAD/bin/installDeps.sh

VOLUME ["$EPAD/var"]

CMD ["epad/bin/run.sh", "--root"]
