FROM alpine:3.10.2

RUN apk update && \
    apk upgrade && \
    apk add zsh zsh-vcs clang lld git cmake ninja

COPY zshenv /root/.zshenv
COPY zshrc /root/.zshrc

ENTRYPOINT ["zsh"]
