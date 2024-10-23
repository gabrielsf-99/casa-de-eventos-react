# Documentação do Projeto Casa de Eventos

## Visão Geral
Este projeto é composto por duas partes: o frontend, desenvolvido com React, e o backend, que utiliza `json-server` para simular uma API. O frontend é servido usando `nginx` e o backend fornece os dados de eventos. Esta documentação descreve como construir, executar e usar os serviços Docker fornecidos para este projeto.

## Pré-requisitos
Antes de iniciar, certifique-se de ter o seguinte instalado:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Estrutura de Arquivos
Certifique-se de que a estrutura de arquivos do seu projeto seja semelhante ao seguinte:

```
.
├── Dockerfile-front
├── Dockerfile-back
├── docker-compose.yml
├── package.json
├── eventos.json
└── ... (outros arquivos do projeto)
```

## Como Construir e Executar os Serviços

### Passo 1: Buildar e Executar com Docker Compose
Para construir as imagens e rodar os contêineres, use o Docker Compose:

```bash
docker-compose up --build
```

Este comando faz o seguinte:
- `--build`: Força a construção das imagens Docker a partir dos arquivos Dockerfile.
- `up`: Cria e inicia os contêineres definidos no arquivo `docker-compose.yml`.

### Passo 2: Acessar os Serviços
Após o comando `docker-compose up --build`, você poderá acessar os serviços da seguinte maneira:

- **Frontend**: Acesse [http://localhost:8080](http://localhost:8080)
- **Backend (API JSON)**: Acesse [http://localhost:3000](http://localhost:3000)

### Executar em Segundo Plano
Caso queira executar os contêineres em segundo plano (modo detached), utilize o seguinte comando:

```bash
docker-compose up --build -d
```

### Parar e Remover os Contêineres
Para parar a execução e remover os contêineres, use o comando:

```bash
docker-compose down
```

## Estrutura dos Serviços
O arquivo `docker-compose.yml` define os seguintes serviços:

- **frontend**: Responsável por servir a aplicação React, que é construída e servida por meio do `nginx`.
  - Porta exposta: `8080`.

- **backend**: Serviço que utiliza `json-server` para fornecer uma API simulada dos eventos.
  - Porta exposta: `3000`.

## Exemplos de Uso
- **Frontend**: Acesse `http://localhost:8080` para visualizar a aplicação de eventos.
- **Backend**: Acesse `http://localhost:3000/eventos` para visualizar os dados dos eventos fornecidos pelo `json-server`.

## Troubleshooting
- **Erro de Conexão Recusada**: Verifique se o Docker está executando e se as portas corretas estão sendo mapeadas.
- **Alterações no Código**: Caso realize alterações no código, é necessário reconstruir as imagens para aplicar as mudanças. Use:
  ```bash
  docker-compose up --build
  ```

## Conclusão
Esta documentação fornece as etapas necessárias para construir, executar e usar a aplicação `Casa de Eventos`. Se tiver qualquer dúvida ou problema, sinta-se à vontade para pedir ajuda.
