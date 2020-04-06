# Importando e carregando o arquivo do Submarino (pacote "readr")
suba_1T2020 <- readr::read_csv2(file = "ABT_SUBA_1T2020.csv", 
                                col_names = c("marca","marketplace","seller","departamento","alavanca","combinacao","data_pedido",
                                              "dia_semana","dia","mes","ano","status_pagamento","click_collect","tipo_mobile","midia",
                                              "regiao","estado","faixa","normalizado","venda_prime","codigo_pedido", "codigo_item",
                                              "codigo_pedido_item","codigo_entrega","valor_item","valor_comissao","valor_frete",
                                              "valor_comissao_frete","valor_desconto_cond","valor_cashback","rentabilidade_comercial",
                                              "rentabilidade_seller","rentabilidade_desp_frete","qtde_pit","qtde_SKU"), skip = 1,
                                col_types = NULL, locale("pt"), quoted_na = TRUE, quote = "\"", comment = "", trim_ws = TRUE,
                                progress = show_progress(), skip_empty_rows = TRUE)

# Visualizando as primeiras linhas, os tipos de dados e a dimensao do arquivo
head(suba_1T2020, 10)
str(suba_1T2020)
dim(suba_1T2020)

# Removendo objetos da memoria do R
rm(Submarino_1T2020_1P, Submarino_1T2020_3P); gc()
rm(Submarino_1T2020); gc()