# Opendmarc Debian Docker
The Opendmarc milter for Alpine is currently only available on alpine:edge

This image provides Opendmarc via the ever so slightly less "edgy" debian-slim:testing

Bind mount config from the host into /etc/opendmarc.conf.

For logging, bind mount /dev/log:/dev/log.

Note that this image does not come with a data store for aggregate reports, so using it "as is" might not be RFC 7489 compliant (depending on your construal of "best-effort").
