FROM alpine:3.10.2

ENV KUSTOMIZE=3.1.0

RUN apk add --no-cache openssh git curl && \
	curl -L -o /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64 && \
  chmod +x /usr/local/bin/kustomize

