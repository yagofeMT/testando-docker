# App React com Docker

Este projeto demonstra como construir e executar uma aplicação React usando Docker. Seguindo este guia, você será capaz de configurar e rodar a aplicação em um ambiente containerizado.

## Pré-requisitos

Certifique-se de ter os seguintes pré-requisitos instalados:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Passos para configurar e rodar a aplicação

### 1. Build da Imagem Docker

Antes de tudo, você precisa construir a imagem Docker da aplicação. No diretório raiz do projeto, execute o seguinte comando:

```bash
docker build -t app-react .


Este comando cria uma imagem chamada app-react, que contém a aplicação React.

2. Rodar a aplicação com Docker Compose
Após a construção da imagem, você pode usar o Docker Compose para rodar o container da aplicação. Execute o comando abaixo:

bash
Copiar código
docker compose up app-react
Esse comando inicializa o container com base na imagem que você criou no passo anterior.

3. Inspecionar o container para obter o IP
Depois de rodar o container, é necessário obter o endereço IP para acessar a aplicação no navegador. Siga os passos abaixo:

Encontre o container_id utilizando o seguinte comando:

bash
Copiar código
docker ps
Isso exibirá a lista de containers em execução. Copie o CONTAINER ID do container app-react.

Com o container_id em mãos, inspecione o container:

bash
Copiar código
docker inspect <container_id>
No resultado do comando, procure a seção "NetworkSettings" e encontre o campo "IPAddress". Esse é o IP que será usado para acessar a aplicação.

4. Acessar a aplicação
Agora que você tem o IP do container, acesse a aplicação React no seu navegador usando o seguinte endereço:

plaintext
Copiar código
http://<container_ip>:3000
Substitua <container_ip> pelo IP que você obteve no passo anterior.

Finalizando
Parabéns! Agora sua aplicação React está rodando dentro de um container Docker. Você pode acessar e verificar o funcionamento através do navegador.
