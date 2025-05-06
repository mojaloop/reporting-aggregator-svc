ARG NODE_VERSION=lts-alpine
# NOTE: Ensure you set NODE_VERSION Build Argument as follows...
#
#  export NODE_VERSION="$(cat .nvmrc)-alpine" \
#  docker build \
#    --build-arg NODE_VERSION=$NODE_VERSION \
#    -t mojaloop/reporting-aggregator-svc:local \
#    . \

FROM node:${NODE_VERSION} AS builder

WORKDIR /opt/app
COPY tsconfig.json package*.json ./
COPY src ./src

RUN npm ci
RUN npm run build

## *Application*
FROM node:${NODE_VERSION}

WORKDIR /opt/app
COPY package*.json ./
RUN npm ci --omit=dev

# Create a non-root user: ml-user
RUN adduser -D ml-user
USER ml-user

## Copy of dist directory from builder
COPY --chown=ml-user --from=builder /opt/app/dist ./dist

CMD [ "node" , "./dist/index.js" ]
