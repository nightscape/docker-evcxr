FROM sylwekrapala/rust-ubuntu:1-bionic
RUN apt update && apt install -y \
    jupyter-notebook \
    cmake && rm -rf /var/lib/apt/lists/*
RUN cargo install evcxr_jupyter && evcxr_jupyter --install && rm -rf /usr/local/cargo/registry

COPY notebooks /notebooks
COPY config/jupyter /root/.jupyter
ENTRYPOINT ["/usr/bin/jupyter", "notebook", "--config=/root/.jupyter/jupyter_notebook_config.py", "--allow-root"]
