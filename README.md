# docker-gum

A `ghcr.io/mdb/gum` version of [gum](https://github.com/charmbracelet/gum), but with a shell.

Because `ghcr.io/mdb/gum` has a shell, you can use it to run shell scripts containing `gum` commands like...

```
echo "gum input --placeholder \"What's your name?\"" > gum.sh

chmod +x gum.sh

docker run \
  --tty \
  --rm \
  --interactive \
  --volume "$$PWD:/src" \
  --workdir "/src" \
  --entrypoint hello.sh \
  ghcr.io/mdb/gum
```
