FROM jupyterhub/jupyterhub:1.0.0

RUN pip install jupyterhub-dummyauthenticator

COPY jupyterhub_config.py .

COPY . dataprocspawner/
RUN cd dataprocspawner && pip install .

ENTRYPOINT ["jupyterhub"]
