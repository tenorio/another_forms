FROM ruby:2.3-slim

# Instala as dependências
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential nodejs libpq-dev imagemagick

# Define PATH
ENV INSTALL_PATH /another_forms

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Define PATH como diretório principal
WORKDIR $INSTALL_PATH

# Copia GEMFILE para dentro do container
COPY Gemfile ./

# Define PATH das GEMS
ENV BUNDLE_PATH /box

# Copia o código para dentro do container
COPY . .
