FROM debian:9.7-slim

LABEL "com.github.actions.name"="WPEngine Deployment"
LABEL "com.github.actions.description"="An action to deploy your repository to a WP Engine site via git."
LABEL "com.github.actions.icon"="chevrons-right"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/leogopal/github-action-wpengine-git-deploy"
LABEL "maintainer"="Leo Gopal <leo@leogopal.com>"

RUN apt-get update && apt-get install -y git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
