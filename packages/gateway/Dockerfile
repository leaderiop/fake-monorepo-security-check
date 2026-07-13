# Base-image CVE scan + hadolint autofix demo. debian:11.6-slim is a real, vulnerable base
# (dozens of HIGH/CRITICAL fixable CVEs); the audit bumps it to debian:11-slim (same distro
# line, patched). Uses a literal tag so the bump autofix can rewrite the FROM line. Also
# exercises a skipped multi-stage alias and hadolint rules (ADD→COPY, last-USER-root, shell CMD).
FROM debian:11-slim AS build
WORKDIR /app
ADD ./app /app
USER root
CMD node app/index.js

FROM build AS packaged
RUN echo packaged
