#language: pt
#encoding: utf-8

Funcionalidade: Acessar o estoque de alguma loja
  - Narrativa:
  Conseguir acessar o estoque de aluguma loja.

  @viking
  Cenario: Acessar estoque filtrando por loja

    Dado que estou na tela inicial do site
    E eu clico em ver ofertas
    E filtro por loja
    Quando clico em qualquer resultado
    E clico em ver estoque da loja
    Então sou redirecionado para página dr estoque daquela loja
