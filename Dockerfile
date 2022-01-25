FROM alpine:3.15 as builder 

FROM scratch
COPY --from=builder /lib/ld-musl-x86_64.so.1 /usr/lib/libtls.so.2 /usr/lib/libcrypto.so.1.1 /usr/lib/libssl.so.1.1 /lib/
COPY --from=builder /bin/sh /bin/ls /bin/mkdir /bin/sleep /usr/bin/wget /usr/bin/ssl_client /bin/
COPY --from=builder /etc/ssl1.1/cert.pem /etc/ssl1.1/
ENTRYPOINT ["/bin/sh"]
