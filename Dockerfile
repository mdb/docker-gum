FROM ghcr.io/charmbracelet/gum as gum

FROM alpine
COPY --from=gum /usr/local/bin/gum /usr/local/bin/gum
ENTRYPOINT [ "/usr/local/bin/gum" ]
