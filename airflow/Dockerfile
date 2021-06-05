ARG AIRFLOW_VERSION
FROM apache/airflow:${AIRFLOW_VERSION}

USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    vim \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY config/airflow.cfg /opt/airflow/airflow.cfg
COPY requirements.txt /opt/airflow/requirements.txt
RUN pip install -r /opt/airflow/requirements.txt
RUN chown -R airflow: /opt/airflow

USER airflow