# Identidade Visual — Galeazzi Enterprise Platform

## 1. Fontes

| Uso | Fonte | Fallbacks |
|---|---|---|
| **Interface geral** (textos, labels, botões) | `DM Sans` (300–700) | -apple-system, BlinkMacSystemFont, sans-serif |
| **Textos serifados** | `EB Garamond` (400–600) | Georgia, Times New Roman, serif |
| **Logo** | `Cormorant Garamond` (400–600) | EB Garamond, Georgia, serif |

Google Fonts import:
```
Cormorant+Garamond:wght@400;500;600
DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;0,9..40,700
EB+Garamond:wght@400;500;600
```

## 2. Paleta de Cores

### Cinzas (textos e neutros)

| Variável | Hex | Uso |
|---|---|---|
| `--g-black` | #1A1A1A | Texto máximo contraste |
| `--g-charcoal` | #333333 | Texto forte |
| `--g-dark-gray` / `--g-slate` | #555555 | Texto secundário, labels menores |
| `--g-gray` | #777777 | Texto terciário |
| `--g-mid-gray` / `--g-muted` | #999999 | Placeholders, textos auxiliares, footers |
| `--g-silver` | #BBBBBB | — |
| `--g-light-gray` / `--g-light` | #D9D9D9 | Placeholders de input |
| `--g-border` | #E0E4EA | Bordas de inputs, divisores |
| `--g-surface` | #F5F7FA | Fundo de hover em botões secundários |
| `--g-white` | #FFFFFF | Fundo principal, cards |

### Azuis institucionais (accent, fundos decorativos)

| Variável | Hex | Uso |
|---|---|---|
| `--g-navy` | #0B2447 | Títulos, texto de alto contraste |
| `--g-navy-mid` | #163A6B | Hover de botão primário |
| `--g-blue` / `--g-accent` | #1A5296 | Botão primário, links, checkbox accent |
| `--g-blue-mid` | #2878C8 | Gradientes decorativos |
| `--g-blue-light` | #3D9BE9 | Gradientes decorativos |
| `--g-blue-bright` | #5BB5F5 | Gradientes decorativos |
| `--g-blue-sky` | #7ECBFF | Gradientes decorativos |

### Teal (identidade do logo)

| Variável | Hex | Uso |
|---|---|---|
| `--g-teal` | #1B5C6B | Subtítulo "ENTERPRISE PLATFORM" |
| `--g-logo-teal` | #005B6D | Cor do "A" no monograma |
| `--g-logo-gray` | #979797 | Cor do "G" e texto do logo |
| Subtítulo accent | #2A7B88 | Cor do "ENTERPRISE PLATFORM" |

## 3. Logo

- Arquivo: `logo_galeazzi.png` (usado via `<img>`)
- Subtítulo "ENTERPRISE PLATFORM" abaixo do logo em DM Sans, weight 700, font-size 22px, letter-spacing 4px, cor #2A7B88, uppercase
- Logo width: 392px

## 4. Componentes UI

### Cards
- `border-radius: 16px`
- `padding: 42px 42px 32px`
- `box-shadow: 0 0 0 1px rgba(0,0,0,0.04), 0 4px 8px rgba(0,0,0,0.03), 0 16px 40px rgba(0,0,0,0.08)`
- Fundo: branco

### Inputs
- `border: 1.5px solid #E0E4EA`
- `border-radius: 8px`
- `font-size: 15.5px`
- Focus: `border-color: #1A5296` + `box-shadow: 0 0 0 3px rgba(26,82,150,0.12)`

### Botão primário
- `background: #1A5296`, hover `#163A6B`
- `border-radius: 8px`
- `font-size: 17px`, weight 600
- Hover shadow: `0 4px 12px rgba(26,82,150,0.3)`

### Tipografia geral
- H1: 26px, weight 700, cor `--g-navy`
- Subtítulo: 15px, cor `--g-muted`
- Labels: 15px, weight 600
- Links: 14px, weight 500, cor `--g-accent`
- Footer: 12px, cor `--g-muted`

## 5. Fundo Decorativo

- Posicionado à direita, 70% da largura, com `border-radius: 55% 40% 0 50%` para bordas orgânicas
- **4 blobs** com blur 80px, gradientes de azuis (#081A35 a #D7F0FF), animações lentas (15–24s)
- **4 waves** dentro de clip-path ellipse, opacidade 0.3–0.4, animações 11–20s
- Movimento suave com `cubic-bezier` e variação de opacidade nos keyframes
- Estética: transições orgânicas, sem linhas retas nas bordas

## 6. Layout

- Sistema de artboard fixo: 1600x900px, escalado via JS (`Math.max(vw/1600, vh/900)`)
- Fundo branco puro (`#FFFFFF`)
- Footer inferior: copyright + links Privacidade/Termos
