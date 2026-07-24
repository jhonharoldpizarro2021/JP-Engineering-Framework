# syntax=docker/dockerfile:1.7

ARG BASE_IMAGE=ubuntu:24.04

FROM ${BASE_IMAGE} AS base

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=1000

ENV DEBIAN_FRONTEND=noninteractive
ENV APP_HOME=/workspace

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        tini \
    && groupadd --gid "${USER_GID}" "${USERNAME}" \
    && useradd --uid "${USER_UID}" --gid "${USER_GID}" --create-home "${USERNAME}" \
    && mkdir -p "${APP_HOME}" \
    && chown -R "${USERNAME}:${USERNAME}" "${APP_HOME}" \
    && rm -rf /var/lib/apt/lists/*

WORKDIR ${APP_HOME}

ENTRYPOINT ["/usr/bin/tini", "--"]

FROM base AS development

ARG USERNAME=vscode

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        make \
        sudo \
    && echo "${USERNAME} ALL=(root) NOPASSWD:ALL" > "/etc/sudoers.d/${USERNAME}" \
    && chmod 0440 "/etc/sudoers.d/${USERNAME}" \
    && rm -rf /var/lib/apt/lists/*

USER ${USERNAME}

CMD ["sleep", "infinity"]

FROM base AS production

ARG USERNAME=vscode

COPY --chown=${USERNAME}:${USERNAME} . ${APP_HOME}

USER ${USERNAME}

CMD ["sh", "./scripts/start.sh"]
