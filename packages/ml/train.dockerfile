# *.dockerfile discovery + untrusted-registry posture: gcr.io is NOT in trustedRegistries, so
# this fires docker/untrusted-registry. Untagged → also floating-tag + no-digest-pin. Distroless
# is a real, minimal base (no shell), so the CVE scan finds little — this file is about posture.
FROM gcr.io/distroless/static-debian12
COPY train.py /
CMD ["/train.py"]
