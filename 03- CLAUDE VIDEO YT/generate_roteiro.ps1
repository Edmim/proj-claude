# Script para gerar roteiro em Word via COM
$ErrorActionPreference = "Stop"

$outputPath = "C:\Users\emoll\OneDrive\Documentos\23- CLAUDE VIDEO YT\Roteiro_Footprint_Logistico_Mercado_Livre.docx"

# Apaga arquivo anterior se existir
if (Test-Path $outputPath) { Remove-Item $outputPath -Force }

$word = New-Object -ComObject Word.Application
$word.Visible = $false

try {
    $doc = $word.Documents.Add()

    # Configurar fonte padrao
    $doc.Content.Font.Name = "Calibri"
    $doc.Content.Font.Size = 11

    $selection = $word.Selection

    # Built-in style constants (language-independent)
    $StyleTitle      = -63
    $StyleHeading1   = -2
    $StyleHeading2   = -3
    $StyleHeading3   = -4
    $StyleNormal     = -1
    $StyleListBullet = -45

    # ==================== TITULO PRINCIPAL ====================
    $selection.Style = $StyleTitle
    $selection.TypeText("ROTEIRO PARA YOUTUBE")
    $selection.TypeParagraph()

    $selection.Style = $StyleHeading1
    $selection.TypeText("Footprint Logistico: Por Que o Mercado Livre Reescreveu o Mapa do Varejo (e Como Replicar)")
    $selection.TypeParagraph()

    # Variacoes de titulo
    $selection.Style = $StyleHeading3
    $selection.TypeText("Variacoes sugeridas de titulo:")
    $selection.TypeParagraph()

    $selection.Style = $StyleListBullet
    $selection.TypeText("A Malha Logistica que Reduziu Custo de Servir em 30%: Licoes do Mercado Livre")
    $selection.TypeParagraph()
    $selection.TypeText("Footprint Estrategico: O Erro que Custa Milhoes aos Grandes Varejistas")
    $selection.TypeParagraph()
    $selection.TypeText("Reestruturacao de Malha Logistica: Por que 90% dos Varejistas Estao Errando")
    $selection.TypeParagraph()

    # ==================== THUMBNAIL ====================
    $selection.Style = $StyleHeading2
    $selection.TypeText("Sugestao de Thumbnail")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("Mapa do Brasil ao fundo com pontos de distribuicao conectados por linhas (estilo network design). A frente, grafico de barras decrescente representando custo logistico. Texto sobrio em destaque: ""FOOTPRINT LOGISTICO"" com subtitulo ""O caso Mercado Livre"". Paleta: azul escuro, branco e amarelo (cor institucional do ML como referencia sutil). Sem rosto exagerado - postura executiva.")
    $selection.TypeParagraph()

    # ==================== NOTAS DE EDICAO ====================
    $selection.Style = $StyleHeading2
    $selection.TypeText("Notas de Edicao")
    $selection.TypeParagraph()

    $selection.Style = $StyleListBullet
    $selection.TypeText("Ritmo: executivo e analitico - cortes secos, sem efeitos de humor")
    $selection.TypeParagraph()
    $selection.TypeText("Insercoes graficas obrigatorias: mapa de calor de demanda x CDs, formula de custo de servir, comparativo antes/depois do footprint do Mercado Livre")
    $selection.TypeParagraph()
    $selection.TypeText("B-rolls sugeridos: imagens de centros de distribuicao, esteiras de separacao, caminhoes em patio, dashboards de KPI logistico")
    $selection.TypeParagraph()
    $selection.TypeText("Lower thirds com termos tecnicos: footprint estrategico, custo de servir, network design, fulfillment")
    $selection.TypeParagraph()
    $selection.TypeText("Musica de fundo: instrumental corporativo discreto, baixo volume")
    $selection.TypeParagraph()

    # ==================== ROTEIRO COMPLETO ====================
    $selection.Style = $StyleHeading1
    $selection.TypeText("ROTEIRO COMPLETO")
    $selection.TypeParagraph()

    # ABERTURA
    $selection.Style = $StyleHeading2
    $selection.TypeText("[ABERTURA EXECUTIVA] - aprox. 180 palavras")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("A maioria dos diretores de supply chain acredita que sua malha logistica e eficiente - ate o dia em que abre a planilha de custo de servir por regiao e descobre que esta perdendo margem em estados inteiros, sem saber por que.")
    $selection.TypeParagraph()
    $selection.TypeText("Ao longo de mais de 35 anos atuando em projetos de transformacao de gestao e reestruturacao operacional, posso afirmar com tranquilidade: footprint logistico e, hoje, a maior alavanca silenciosa de competitividade no varejo brasileiro. E silenciosa porque raramente entra na pauta da diretoria com a profundidade que merece.")
    $selection.TypeParagraph()
    $selection.TypeText("Enquanto isso, players como o Mercado Livre redesenharam completamente o mapa logistico do pais nos ultimos sete anos. E o que parecia uma operacao de e-commerce se tornou, na pratica, uma rede de distribuicao capilarizada que pressiona toda a concorrencia - inclusive o varejo fisico tradicional.")
    $selection.TypeParagraph()
    $selection.TypeText("Neste video, vamos analisar de forma estruturada tres pilares que definem uma reestruturacao de footprint bem executada, usando o caso Mercado Livre como referencia pratica. Se voce e diretor de supply chain, CFO ou gestor de logistica, este conteudo foi pensado para voce. Vamos ao diagnostico.")
    $selection.TypeParagraph()

    # SECAO 1
    $selection.Style = $StyleHeading2
    $selection.TypeText("[SECAO 1 - Diagnostico: O Custo de Servir Que Ninguem Mede Direito] - aprox. 280 palavras")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("O primeiro erro estrutural que encontro em quase todo projeto de reestruturacao e o mesmo: as empresas medem custo logistico, mas nao medem custo de servir. E essa diferenca, aparentemente semantica, vale milhoes.")
    $selection.TypeParagraph()
    $selection.TypeText("Custo logistico e a soma das despesas de armazenagem, transporte e movimentacao. Custo de servir e o custo real de entregar um produto especifico, para um cliente especifico, em uma regiao especifica, dentro de um prazo especifico. Sao coisas diferentes - e so a segunda metrica revela onde a margem esta vazando.")
    $selection.TypeParagraph()
    $selection.TypeText("Quando aplicamos Activity Based Costing sobre a malha logistica, geralmente descobrimos que entre 15% e 25% dos SKUs sao servidos com margem negativa em determinadas regioes. O varejista vende, fatura, e perde dinheiro a cada pedido. Sem perceber.")
    $selection.TypeParagraph()
    $selection.TypeText("O Mercado Livre entendeu isso antes da concorrencia. Quando a empresa decidiu sair do modelo puro de marketplace e investir pesado em fulfillment proprio (Mercado Envios Full), o ponto de partida nao foi o desejo de ter CDs. Foi a leitura precisa de que, sem controlar a malha, o custo de servir nas pontas seria sempre proibitivo.")
    $selection.TypeParagraph()
    $selection.TypeText("A aplicacao pratica para o seu negocio e direta: antes de discutir onde abrir um novo centro de distribuicao, faca o diagnostico real de custo de servir por cluster geografico x categoria x canal de venda. Sem essa fotografia analitica, qualquer decisao de footprint vira aposta. E aposta, em supply chain, e luxo que nem o maior varejista pode pagar.")
    $selection.TypeParagraph()
    $selection.TypeText("E e exatamente aqui que a visao sistemica faz a diferenca para o proximo pilar.")
    $selection.TypeParagraph()

    # SECAO 2
    $selection.Style = $StyleHeading2
    $selection.TypeText("[SECAO 2 - Solucao: Network Design Sob a Otica do MVA] - aprox. 280 palavras")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("Diagnosticado o problema, vem a etapa mais tecnica e a que mais gera resistencia interna: o redesenho da malha logistica com base em valor agregado, e nao em legado operacional.")
    $selection.TypeParagraph()
    $selection.TypeText("A metodologia que aplico nesses projetos combina modelagem de Network Design com a logica do MVA - Market Value Added. Em vez de perguntar ""onde temos CDs hoje?"", a pergunta correta e: ""qual configuracao de malha maximiza a criacao de valor para o acionista, considerando o trade-off entre custo logistico e nivel de servico?""")
    $selection.TypeParagraph()
    $selection.TypeText("Isso muda tudo. Porque, sob a otica do MVA, manter tres CDs medianos em regioes de baixa densidade de demanda pode ser pior do que consolidar em dois hubs maiores, com cross-docking estrategico em pontos secundarios.")
    $selection.TypeParagraph()
    $selection.TypeText("O Mercado Livre executou exatamente esse raciocinio. A operacao nao cresceu abrindo CDs em capitais por status - cresceu mapeando densidade de demanda, tempo de promessa de entrega e custo marginal por regiao. O resultado: uma malha com mega-CDs em Sao Paulo, Minas, Pernambuco e Bahia, alimentando uma rede de centros menores e agencias de ultima milha.")
    $selection.TypeParagraph()
    $selection.TypeText("Para o varejo fisico, a licao e poderosa: o footprint do passado foi desenhado para abastecer lojas. O footprint do futuro precisa ser omnichannel por design, abastecendo loja, e-commerce e cliente final com a mesma malha - ou pelo menos com a mesma logica de otimizacao.")
    $selection.TypeParagraph()
    $selection.TypeText("O grande receio dos gestores aqui e o investimento. Mas o que mostro nos projetos e que, na maioria dos casos, a reestruturacao se paga em 18 a 24 meses apenas com a reducao de custo de servir e otimizacao de capital de giro. Nao e despesa. E realocacao de valor.")
    $selection.TypeParagraph()

    # SECAO 3
    $selection.Style = $StyleHeading2
    $selection.TypeText("[SECAO 3 - Resultados: A Capilaridade Como Vantagem Competitiva] - aprox. 220 palavras")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("O terceiro pilar - e talvez o mais subestimado - e entender que footprint nao e estrutura fisica. E capacidade de promessa.")
    $selection.TypeParagraph()
    $selection.TypeText("Quando o Mercado Livre passou a oferecer entrega no mesmo dia em mais de 600 cidades brasileiras, isso nao foi uma decisao de marketing. Foi a consequencia direta de uma malha desenhada para comprimir o lead time entre estoque e cliente. A capilaridade virou ativo estrategico.")
    $selection.TypeParagraph()
    $selection.TypeText("E isso tem impacto direto no DRE de qualquer varejista que compete com o ML. Por que? Porque o consumidor recalibrou a expectativa de prazo. Hoje, prometer entrega em 5 dias uteis e, na pratica, perder a venda antes dela acontecer.")
    $selection.TypeParagraph()
    $selection.TypeText("Para o varejo fisico, ha uma oportunidade clara: as lojas podem ser convertidas em mini-hubs de fulfillment, encurtando a ultima milha sem investimento em novos CDs. Magazine Luiza fez isso. Renner comecou a fazer. E uma reestruturacao de footprint sem mover uma parede - apenas redesenhando o papel dos ativos existentes.")
    $selection.TypeParagraph()
    $selection.TypeText("A aplicacao pratica e avaliar, no seu proprio portfolio de lojas, quais unidades tem densidade de demanda online suficiente para virar ponto de fulfillment. Esse exercicio, sozinho, costuma liberar entre 8% e 12% de eficiencia logistica.")
    $selection.TypeParagraph()

    # CONCLUSAO
    $selection.Style = $StyleHeading2
    $selection.TypeText("[CONCLUSAO E CTA] - aprox. 180 palavras")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("Recapitulando de forma executiva: diagnostico real de custo de servir, redesenho de malha sob a otica de criacao de valor, e capilaridade como vantagem competitiva. Esses sao os tres pilares que separam uma reestruturacao de footprint bem-sucedida de um projeto que apenas troca CDs de lugar.")
    $selection.TypeParagraph()
    $selection.TypeText("O caso Mercado Livre e instrutivo justamente porque mostra que footprint logistico e, na essencia, uma decisao estrategica disfarcada de decisao operacional. Quem trata como operacional, perde mercado. Quem trata como estrategica, redefine o setor.")
    $selection.TypeParagraph()
    $selection.TypeText("Fica a reflexao para voce, gestor: a sua malha logistica atual foi desenhada para o cliente que voce tem hoje, ou para o cliente que voce tinha cinco anos atras?")
    $selection.TypeParagraph()
    $selection.TypeText("Se esse desafio faz sentido para a sua realidade, deixe um comentario contando como o tema do footprint esta sendo discutido na sua empresa - ou se ainda nem entrou na pauta da diretoria.")
    $selection.TypeParagraph()
    $selection.TypeText("E me diga: qual outro tema de supply chain voce gostaria de ver analisado por aqui? OBZ aplicado em logistica? Modelagem organizacional de centros de distribuicao? Custeio ABC no varejo? Comente abaixo. No proximo video, vamos avancar.")
    $selection.TypeParagraph()

    # BONUS
    $selection.Style = $StyleHeading2
    $selection.TypeText("[BONUS - Dica de Ouro de Gestao]")
    $selection.TypeParagraph()

    $selection.Style = $StyleNormal
    $selection.TypeText("Antes de qualquer projeto de reestruturacao de footprint, exija da sua equipe uma matriz de sensibilidade que mostre como o custo total da malha se comporta com variacoes de mais ou menos 10% em volume, mais ou menos 15% em frete e mais ou menos 20% em nivel de servico. Se sua equipe nao consegue gerar essa matriz em ate duas semanas, o problema nao e o footprint. E o nivel de maturidade analitica da sua operacao de supply chain. E esse, sim, e o primeiro projeto que precisa comecar.")
    $selection.TypeParagraph()

    # METADADOS
    $selection.Style = $StyleHeading2
    $selection.TypeText("Informacoes Tecnicas")
    $selection.TypeParagraph()

    $selection.Style = $StyleListBullet
    $selection.TypeText("Estimativa de tempo de gravacao: aprox. 8 minutos")
    $selection.TypeParagraph()
    $selection.TypeText("Total de palavras: aprox. 1.220 palavras")
    $selection.TypeParagraph()
    $selection.TypeText("Publico-alvo: Diretores de supply chain, CFOs, gerentes de logistica, donos de e-commerce")
    $selection.TypeParagraph()
    $selection.TypeText("Setor de foco: E-commerce e varejo fisico")
    $selection.TypeParagraph()
    $selection.TypeText("Case principal: Mercado Livre")
    $selection.TypeParagraph()
    $selection.TypeText("Tom: Analitico, executivo e consultivo")
    $selection.TypeParagraph()
    $selection.TypeText("Status: Pronto para gravar")
    $selection.TypeParagraph()

    # Salvar como .docx (formato 16 = wdFormatDocumentDefault)
    $doc.SaveAs([ref]$outputPath, [ref]16)
    $doc.Close()

    Write-Output "SUCCESS: $outputPath"
}
finally {
    $word.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
    [GC]::Collect()
    [GC]::WaitForPendingFinalizers()
}
