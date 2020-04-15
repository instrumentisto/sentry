ARG sentry_ver=9.1.2

FROM sentry:${sentry_ver}

ARG sentry_telegram_ver=0.4.0

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>

RUN pip install sentry-telegram==${sentry_telegram_ver}
