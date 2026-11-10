# homebrew-tap

Homebrew formulae and casks of my tools:

- [kctx](https://github.com/eugene-panin/kctx): Kubernetes context switcher with client grouping and a TUI
- [vctx](https://github.com/eugene-panin/vctx): switch the Vault CLI between several Vault instances

```bash
brew tap eugene-panin/tap
brew install --HEAD eugene-panin/tap/kctx
brew install eugene-panin/tap/vctx
```

`kx` is replaced by `kctx` (same problem, simpler model: one normal kubeconfig).
Release casks under `Casks/` are written by GoReleaser; the `kctx` formula builds from `main`.
