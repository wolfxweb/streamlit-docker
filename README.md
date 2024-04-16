# streamlit_docker

Este repositório contém uma aplicação simples desenvolvida com Streamlit e empacotada em um contêiner Docker.

**Nota para usuários do Mac M1 (ARM):** Se estiver usando um Mac com chip M1, verifique se todas as dependências necessárias para a arquitetura ARM estão sendo instaladas corretamente no Dockerfile.
    
## Pré-requisitos

- Docker instalado e configurado no seu sistema. Você pode baixar e instalar o Docker a partir do [site oficial](https://www.docker.com/get-started).

## Como usar

1. Clone este repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/seu-usuario/streamlit_docker.git
    ```

2. Navegue até o diretório do projeto:

    ```bash
    cd streamlit_docker
    ```

3. Construa a imagem Docker:

    ```bash
    docker build -t streamlit_docker .
    ```

4. Execute o contêiner Docker:

    ```bash
    docker run -p 8501:8501 streamlit_docker
    ```



5. Abra um navegador da web e acesse a aplicação em [http://localhost:8501](http://localhost:8501).

## Estrutura do Projeto

- `app.py`: O arquivo Python que contém o código da aplicação Streamlit.
- `requirements.txt`: O arquivo de requisitos que lista as dependências Python necessárias para a aplicação.

## Personalização

Sinta-se à vontade para personalizar a aplicação de acordo com suas necessidades. Você pode modificar o arquivo `app.py` para adicionar novos recursos, visualizações de dados ou interações de usuário.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue para relatar problemas ou sugerir melhorias. Se desejar contribuir com código, por favor, abra um pull request e descreva suas alterações em detalhes.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).



