FROM python:3.8
ENV PYTHONIOENCODING utf-8

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
        libgeos-c1v5 \
        python-numpy \
        python-scipy \
        python-matplotlib \
        ipython \
        python-pandas \
        python-sympy \
        python-nose \
        g++ \
        libatlas-base-dev \
        gfortran \
    && rm -rf /var/lib/apt/lists/*

# Install some commonly used packages and the Python application
RUN pip3 install --no-cache-dir --upgrade --force-reinstall \
		beautifulsoup4 \
		bokeh \
		cloudpickle \
		colorama \
		cython \
		dill \
        httplib2 \
        ipython \
        flake8 \
        future \
        h5py \
        idna\<2.10\
        matplotlib \
        mlflow \
        numba \
        numexpr \
        numpy \
        nose \
        pandas\<1.0\
        patsy \
        pymongo \
        PyYaml \
        pytest \
        qgrid \
        requests\<2.24.0\
        seaborn \
        snowflake-connector-python \
        scipy \
        scikit-learn \
        scikit-image \
        sqlalchemy\<=1.3.13\
        statsmodels \
        sympy \
        tabulate \
        tqdm \
        vincent 
        
RUN pip3 check




