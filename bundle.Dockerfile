FROM scratch

LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=activemq-artemis
LABEL operators.operatorframework.io.bundle.channels.v1=current
LABEL operators.operatorframework.io.bundle.channel.default.v1=current

COPY manifests /manifests/
COPY metadata/annotations.yaml /metadata/annotations.yaml

LABEL \
      com.redhat.component="activemq-artemis-operator-bundle-container"  \
      com.redhat.delivery.operator.bundle="true" \
      com.redhat.openshift.versions="v4.5" \
      description="ActiveMQ Artemis 2.11 Operator Bundle"  \
      io.k8s.description="An associated operator bundle of metadata."  \
      io.k8s.display-name="ActiveMQ Artemis 2.11 Operator Bundle"  \
      io.openshift.tags="messaging,artemis,integration,operator,golang"  \
      maintainer="Roddie Kieley <rkieley@redhat.com>"  \
      name="artemiscloud/activemq-artemis-operator-bundle" \
      summary="ActiveMQ Artemis 2.11 Operator Bundle"  \
      version="0.14"

