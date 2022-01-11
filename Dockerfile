FROM newtmitch/sonar-scanner:4.5

LABEL "com.github.actions.name"="SonarQube Scan"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.3"
LABEL repository="https://github.com/kitabisa/sonarqube-action"
LABEL homepage="https://kitabisa.github.io"
LABEL maintainer="dwisiswant0"

RUN echo $http_proxy
RUN echo $https_proxy
RUN echo $HTTP_PROXY
RUN echo $HTTPS_PROXY

RUN apk add --no-cache ca-certificates jq

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
