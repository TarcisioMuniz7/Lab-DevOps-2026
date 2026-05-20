# Resolução - Atividade Prática Docker & Docker Compose

## Questão 01 a 05: Fundamentos Teóricos
(Consulte o arquivo PDF conceitual anexado na entrega).

## Questão 06: Comandos de Diagnóstico (meu-nginx)
* Logs (últimas 20 linhas): `docker logs -f --tail 20 meu-nginx`
* Shell interno: `docker exec -it meu-nginx /bin/bash`
* Portas mapeadas: `docker port meu-nginx`
* Interrupção e remoção: `docker stop meu-nginx && docker rm meu-nginx`
* Pausar/Despausar: `docker pause meu-nginx` e `docker unpause meu-nginx`

## Questão 08: Execução do Dockerfile
* Build: `docker build -t minha-flask-app:1.0 .`
* Listar imagens: `docker images`
* Execução: `docker run -d -p 5000:5000 minha-flask-app:1.0`

## Questão 09: Análise do Comando Ephemeral
O comando executa um container temporário da imagem Python 3.9 para rodar o script inline que imprime "Hello Docker". Devido à flag `--rm`, assim que o processo Python finaliza, o container e seu sistema de arquivos são completamente removidos do host, deixando o status final como inexistente.

## Questão 11: Comandos do Compose
* Inicialização em background: `docker compose up -d`
* Logs simultâneos: `docker compose logs -f`
* Acesso ao banco de dados: `docker compose exec db bash`
* Parar e remover estruturas: `docker compose down`

## Questão 12: Análise de Más Práticas no Exemplo
1. **Credenciais expostas (Hardcoded):** Senhas e chaves de API declaradas diretamente no arquivo. O correto é isolar em um arquivo `.env`.
2. **Uso da tag `latest` para o MySQL:** Causa imprevisibilidade em produção se houver atualização automática de versão da imagem base. O correto é fixar (ex: `mysql:8.0`).
3. **Ausência de persistência de dados:** O serviço do banco de dados não possui volumes mapeados, gerando perda total de dados caso o container seja destruído.
4. **Erro de sintaxe no YAML:** A propriedade de portas do MySQL não possui o hífen de identificação de lista (`-`), impedindo a leitura do arquivo pelo Compose.
