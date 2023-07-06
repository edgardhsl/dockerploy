FROM node:16.13.2-alpine as build

ARG org
ARG repo
ARG git_token
ARG branch

RUN apk --no-cache add git
WORKDIR /usr/src/app

RUN git clone --depth 1 --branch $branch https://$git_token:x-oauth-basic@github.com/$org/$repo.git . \
    && export tag=$(git rev-parse --abbrev-ref HEAD) \
    && npm pkg set 'version-name'=$tag \
    && export NPM_AUTH_TOKEN=$git_token \
    && npm i --no-progress --loglevel=error \
    && node --max_old_space_size=16384 ./node_modules/@angular/cli/bin/ng build --base-href=./

FROM nginx:1.21.3-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
CMD ["/bin/sh",  "-c", "envsubst < /usr/share/nginx/html/assets/env.template.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]
