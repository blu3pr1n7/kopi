FROM 1.20.2-alpine3.17
COPY . /app
WORKDIR /app

RUN ./app/bin/dev/install.bash
RUN ./app/bin/dev/clean.bash