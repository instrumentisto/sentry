ARG sentry_ver=9.1.2
FROM sentry:${sentry_ver}

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>

RUN pip install sentry-telegram
