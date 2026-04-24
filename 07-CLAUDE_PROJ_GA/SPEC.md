# Sistema de Cálculo de Custos de Transporte - Modelo Galeazzi

## 1. Visão Geral do Projeto

**Nome do Projeto:** Sistema de Cálculo de Custos de Transporte - Galeazzi Consultoria
**Tipo:** Aplicação Web (Single Page Application)
**Resumo:** Sistema completo para cálculo de custos de transporte utilizando o modelo Galeazzi, com cadastro de veículos, insumos, parâmetros e simulador de custos para todos os tipos de veículos de carga.
**Usuários Alvo:** Transportadoras, consultores logísticos, gestores de frota

---

## 2. Especificação UI/UX

### 2.1 Estrutura de Layout

**Header:**
- Logo da Galeazzi Consultoria
- Nome do sistema
- Menu de navegação principal

**Navegação por Abas:**
1. Cadastro de Veículos
2. Insumos e Parâmetros
3. Simulador de Custos
4. Relatório

**Rodapé:**
- Informações de contato da Galeazzi Consultoria
- Versão do sistema

### 2.2 Design Visual

**Paleta de Cores:**
- Primária: #1E3A5F (Azul escuro profissional)
- Secundária: #2C5282 (Azul médio)
- Acento: #ED8936 (Laranja Galeazzi)
- Fundo: #F7FAFC (Cinza claro)
- Texto: #2D3748 (Cinza escuro)
- Sucesso: #38A169 (Verde)
- Alerta: #E53E3E (Vermelho)
- Branco: #FFFFFF

**Tipografia:**
- Fontes: 'Inter', 'Roboto', sans-serif
- Títulos: 24px bold
- Subtítulos: 18px semibold
- Corpo: 14px regular
- Rótulos: 12px medium

**Espaçamento:**
- Padding padrão: 20px
- Margem entre seções: 24px
- Gap entre elementos: 16px

**Efeitos:**
- Sombras: 0 2px 4px rgba(0,0,0,0.1)
- Bordas: 1px solid #E2E8F0
- Border-radius: 8px
- Transições: 0.2s ease

### 2.3 Componentes

**Formulários:**
- Campos de entrada com labels
- Selects para categorias
- Campos numéricos com formatação
- Botões de ação

**Tabelas:**
- Listagem de veículos cadastrados
- Dados de insumos
- Resultados da simulação

**Cards:**
- Resumo de custos por categoria
- Indicadores financeiros

**Botões:**
- Primário (laranja)
- Secundário (azul)
- Ação (verde)
- Exportar/Importar
- Imprimir

---

## 3. Especificação Funcional

### 3.1 Aba 1: Cadastro de Veículos

**Categorias de Veículos:**
1. Veículo Leve (até 3,5t)
2. Veículo Médio (3,5t - 10t)
3. Veículo Pesado (10t - 30t)
4. Bitrem/Truck (acima de 30t)
5. Carreta/LS
6. Cavalo Mecânico

**Dados do Veículo:**
- Placa
- Modelo/Marca
- Categoria
- Ano de fabricação
- Capacidade de carga (kg)
- Tipo de carroceria
- Quilometragem anual estimada
- Vida útil (anos)
- Valor de aquisição (R$)
- Valor residual (R$)

### 3.2 Aba 2: Insumos e Parâmetros

**Combustível:**
- Tipo de combustível (Diesel, Gasolina, Etanol)
- Preço por litro (R$)
- Consumo médio (km/l)
- Percentual de variação

**Manutenção:**
- Custo de mão de obra mecânica (R$/hora)
- Custo de peças (R$/km)
- Periodicidade de manutenção preventiva

**Seguro:**
- Valor do seguro anual (R$)
- Taxa de seguro (%)

**Depreciação:**
- Vida útil do veículo (anos)
- Taxa de depreciação (%)

**Custos Fixos:**
- Salário do motorista
- Encargos sociais
- Licenciamento
- IPVA

**Custos Variáveis:**
- Pedágio (R$/km)
- Diárias de motel
- Alimentação do motorista

**Parâmetros:**
- Taxa de administração (%)
- Margem de lucro (%)
- Tributos (%)

### 3.3 Aba 3: Simulador de Custos

**Cálculos do Modelo Galeazzi:**

**Custo Fixo por Km:**
- Depreciação = (Valor aquisição - Valor residual) / (Vida útil em anos × Km anual)
- Seguro = Valor seguro anual / Km anual
- Licenciamento = Valor anual / Km anual
- Salário Motorista = (Salário + Encargos) / Km anual

**Custo Variável por Km:**
- Combustível = Preço litro / Consumo km/l
- Manutenção = Custo peças + Mão de obra
- Pedágio = Valor por km
- Diárias = Valor diária / Km por dia
- Alimentação = Valor alimentação / Km por dia

**Custo Total por Km:**
- Custo Fixo + Custo Variável + Administração + Tributos + Margem

**Resultado:**
- Custo por km
- Custo por viagem
- Custo portonelada
- Custo portonelada-km

### 3.4 Aba 4: Relatório

**Conteúdo do Relatório:**
- Dados do veículo simulado
- Resumo de custos por categoria
- Detalhamento por km, viagem,tonelada
- Gráficos de distribuição de custos
- Data e hora da simulação
- Identificação Galeazzi Consultoria

**Funcionalidades:**
- Exportar dados (JSON)
- Importar dados (JSON)
- Imprimir relatório (PDF)

---

## 4. Critérios de Aceitação

### 4.1 Funcionalidades Obrigatórias

- [ ] Cadastro de veículos com todas as categorias
- [ ] Cadastro de insumos com atualização de valores
- [ ] Simulador funcionando para todos os tipos de veículos
- [ ] Cálculos corretos do modelo Galeazzi
- [ ] Exportação de dados
- [ ] Importação de dados
- [ ] Impressão do relatório
- [ ] Dados da Galeazzi Consultoria visíveis

### 4.2 Validações

- [ ] Campos obrigatórios validados
- [ ] Cálculos matemáticos corretos
- [ ] Persistência de dados no navegador
- [ ] Interface responsiva

---

## 5. Dados da Galeazzi Consultoria

**Empresa:** Galeazzi Consultoria
**CNPJ:** 00.000.000/0001-00
**Endereço:** Av. Paulista, 1000 - São Paulo, SP
**Telefone:** (11) 0000-0000
**Email:** contato@galeazziconsultoria.com.br
**Site:** www.galeazziconsultoria.com.br