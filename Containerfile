FROM python:3.14-slim AS builder

RUN pip install --no-cache-dir mkdocs-material

WORKDIR /tmp/build
COPY . .
RUN mkdocs build

FROM nginxinc/nginx-unprivileged:stable

COPY --from=builder /tmp/build/site /usr/share/nginx/html
