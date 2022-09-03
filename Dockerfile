FROM ghcr.io/charmbracelet/gum as gum

FROM alpine

LABEL "maintainer"="Mike Ball <mikedball@gmail.com>" \
      "repository"="https://github.com/mdb/docker-gum" \
      "homepage"="https://github.com/mdb/docker-gum" \
      "org.opencontainers.image.title"="gum" \
      "org.opencontainers.image.description"="A gum Docker image with a shell" \
      "org.opencontainers.image.url"="https://github.com/mdb/docker-gum" \
      "org.opencontainers.image.source"="https://github.com/mdb/docker-gum"
COPY --from=gum /usr/local/bin/gum /usr/local/bin/gum
ENTRYPOINT [ "/usr/local/bin/gum" ]
