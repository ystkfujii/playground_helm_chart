# syntax=docker/dockerfile:1

FROM golang:1.26-alpine AS build

WORKDIR /src

COPY apps/oci-push-smoke/go.mod ./
RUN go mod download

COPY apps/oci-push-smoke/ ./

ARG VERSION=dev
ARG COMMIT=none
ARG DATE=unknown

RUN CGO_ENABLED=0 GOOS=linux go build \
    -trimpath \
    -ldflags="-s -w -X main.version=${VERSION} -X main.commit=${COMMIT} -X main.date=${DATE}" \
    -o /out/oci-push-smoke \
    oci-push-smoke

FROM gcr.io/distroless/static-debian12:nonroot

COPY --from=build /out/oci-push-smoke /oci-push-smoke

USER nonroot:nonroot
ENTRYPOINT ["/oci-push-smoke"]
