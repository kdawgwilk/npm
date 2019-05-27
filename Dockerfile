FROM node:8

LABEL version="0.1.0"
LABEL repository="https://github.com/kdawgwilk/npm"
LABEL homepage="https://github.com/kdawgwilk/npm"

LABEL com.github.actions.name="GitHub Action for npm v8"
LABEL com.github.actions.description="Wraps the npm CLI to enable common npm commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
