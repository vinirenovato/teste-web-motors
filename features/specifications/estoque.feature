#language: pt
#encoding: utf-8

@FullSmoke

Funcionalidade: Acessar o estoque de alguma loja
  - Narrativa:
  Conseguir acessar o estoque de aluguma loja.

  @estoque
  Cenario: Acessar estoque filtrando por loja

    Dado que estou na tela inicial do site
    E eu clico em ver ofertas
    E eu filtro por loja
    Quando eu clico em qualquer resultado
    E eu clico em ver estoque da loja
    Então sou redirecionado para página dr estoque daquela loja
