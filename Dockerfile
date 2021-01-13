FROM debian:testing-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		dbconfig-no-thanks \
		opendmarc \
		publicsuffix \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 50023
CMD ["sh", "-c", "/usr/sbin/opendmarc -c /etc/opendmarc.conf -f"]
