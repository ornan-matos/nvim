# 💤 Configuração do LazyVim

Este repositório contém minha configuração personalizada do [LazyVim](https://github.com/LazyVim/LazyVim), uma distribuição do Neovim baseada no gerenciador de plugins [lazy.nvim](https://github.com/folke/lazy.nvim). O objetivo é fornecer um ambiente de desenvolvimento eficiente, modular e fácil de manter.

## 📁 Estrutura do Projeto

A estrutura principal do repositório segue o padrão do LazyVim, com algumas personalizações:

```
~/.config/nvim
├── init.lua
├── lua
│   ├── config
│   │   ├── autocmds.lua      # Comandos automáticos personalizados
│   │   ├── keymaps.lua       # Atalhos de teclado personalizados
│   │   ├── lazy.lua          # Configuração do lazy.nvim
│   │   └── options.lua       # Opções do Neovim
│   └── plugins
│       ├── ...               # Especificações de plugins adicionais
├── .neoconf.json             # Configurações do Neoconf
├── lazy-lock.json            # Lockfile do lazy.nvim
├── lazyvim.json              # Configurações específicas do LazyVim
└── stylua.toml               # Configuração do formatador Stylua
```

## ⚙️ Configurações Personalizadas

* **Atalhos de Teclado (`keymaps.lua`)**: Personalizações para melhorar a produtividade, como navegação entre buffers e integração com plugins.

* **Opções do Neovim (`options.lua`)**: Ajustes em opções padrão para adequar o editor às minhas preferências, como número de linhas, indentação e comportamento de busca.

* **Plugins Adicionais (`lua/plugins/`)**: Inclusão de plugins específicos para linguagens e funcionalidades adicionais, como suporte a LSPs, autocompletar, entre outros.

* **Configuração do lazy.nvim (`lazy.lua`)**: Definição de plugins a serem carregados, suas dependências e configurações específicas.

## Instalação

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/ornan-matos/nvim.git ~/.config/nvim
   ```

2. **Remova o diretório `.git` para desvincular do repositório original (opcional):**

   ```bash
   rm -rf ~/.config/nvim/.git
   ```

3. **Abra o Neovim:**

   ```bash
   nvim
   ```

   O LazyVim cuidará da instalação dos plugins automaticamente.

## 🧪 Requisitos

* **Neovim**: Versão >= 0.9.0
* **Git**: Para clonar o repositório e gerenciar plugins
* **Nerd Font**: Para exibir ícones corretamente
* **Ferramentas adicionais**:

  * `ripgrep`: Para buscas rápidas
  * `fd`: Para navegação de arquivos
  * `lazygit`: Interface para Git dentro do Neovim (opcional)

## 📌 Observações

* **Personalizações**: Esta configuração é voltada para minhas necessidades pessoais. Sinta-se à vontade para ajustá-la conforme suas preferências.

* **Atualizações**: Recomenda-se verificar periodicamente por atualizações nos plugins e no próprio LazyVim para aproveitar melhorias e correções.

* **Feedback**: Sugestões e melhorias são bem-vindas! Abra uma issue ou envie um pull request.

---

Espero que este modelo de `README.md` seja útil para documentar e compartilhar sua configuração do LazyVim com outros usuários. Se precisar de mais assistência ou tiver dúvidas específicas, estou à disposição para ajudar!
