FROM airhacks/wildfly-s2i
LABEL maintainer="Adam Bien, airhacks.com"

ENV BUILDER_VERSION 0.0.1

LABEL io.k8s.description="WildFly S2I Image" \
      io.k8s.display-name="WildFly S2I Builder" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,airhacks,microprofile,wildfly,javaee,microprofile"

COPY ./s2i/bin/ /usr/libexec/s2i

USER 1001

