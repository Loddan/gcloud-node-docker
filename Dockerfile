FROM node:8

FROM google/cloud-sdk:176.0.0

COPY --from=0 /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=0 /usr/local/bin/node /usr/local/bin/node

RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm
