FROM minidocks/poppler
LABEL maintainer="Martin Hasoň <martin.hason@gmail.com>"

RUN apk --update add ghostscript && clean

COPY rootfs /

CMD [ "gs", "-dSAFER", "-dBATCH", "-sDEVICE=png16m", "-r300", "-sOutputFile=/app/output.png", "input.ps"  ]
