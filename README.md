# 💤 FVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

![preview](./screenshot-1.png)

## Scrennshots

...

## Require

- [fzf](https://github.com/junegunn/fzf)
- [deno](https://github.com/denoland/deno/)(Markdown Preview)

## Installation

```shell
// required
mv ~/.config/nvim{,.bak}

// optional but recommanded
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/hiifong/fvim.git ~/.config/nvim
```

## Keymaps

| Key           | Description                     | Mode |
| ------------- | ------------------------------- | ---- |
| `<leader>mp`  | Preview Markdown                | n    |
| `<leader>mP`  | Close Preview Markdown          | n    |
| `<leader>dvf` | Open diff view                  | n    |
| `<leader>dvc` | Close diff view                 | n    |
| `<C-o>`       | Open/Close Terminal             | n    |
| `<C-n>`       | New Terminal                    | t    |
| `<C-f>`       | First Terminal                  | t    |
| `<C-e>`       | Last Terminal                   | t    |
| `<C-h>`       | Previons Terminal               | t    |
| `<C-l>`       | Next Terminal                   | t    |
| `<esc><esc>`  | Enter Normal Mode               | t    |
| `<C-j>`       | Small/Large Size Terminal       | t    |
| `<C-q>`       | Quit Terminal                   | t    |
| `<leader>tb`  | Toggle Bottom Terminal          | n    |
| `<leader>tr`  | Toggle Right Terminal           | n    |
| `<leader>tob` | Open Floaterm in Current Buffer | n    |
