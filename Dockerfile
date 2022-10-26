FROM sphinxdoc/sphinx:5.0.2

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

RUN apt update -y && apt install -y git
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
