# Build-mode apt CVE scan demo. Pins the apt source to a 2021 debian snapshot so the build is
# reproducible AND installs a genuinely vulnerable curl (7.74.0-1.2 → 11 HIGH/CRITICAL CVEs).
# The audit builds this image, scans it, and pins `curl=<fixed>` on the RUN line below.
# Base debian:11-slim is already patched, so the only findings come from the apt-installed curl.
FROM debian:11-slim
RUN printf 'deb [check-valid-until=no trusted=yes] http://snapshot.debian.org/archive/debian/20210601T000000Z bullseye main\n' > /etc/apt/sources.list \
 && apt-get -o Acquire::Retries=5 -o Acquire::Check-Valid-Until=false update \
 && apt-get install -y --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/*
