# Termcore

**Termcore** é um facilitador para baixar, criar setups e instalar ferramentas no **Ubuntu** de forma automatizada.

## Tecnologias Obrigatórias

- **Ruby** — gerenciado via **asdf**, utilizado como base para os comandos do Termcore
- **Docker** — instalado com o Docker Engine completo
- **Docker Compose** — instalado como plugin do Docker

## Instalação
Baixe o codigo do projeto [termcore](https://github.com/michaelalves204/termcore/archive/refs/heads/main.zip) e execute os comandos abaixo no seu ubuntu

```bash
cd ~/termcore

sudo chmod +x install.sh

./install.sh
```

Após a instalação, execute:

```bash
termcore init
```
