set -e
mkdocs build
rsync -rtP site/ kachel:/fast/enc/software/proxy/static/nhwiki
