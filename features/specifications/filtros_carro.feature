#language: pt
#encoding: utf-8

Funcionalidade: Fazer filtros na página de resultados da busca.

  - Narrativa:
  Fazer filtros na página dos resultados da busca com opções de:
  modelo, marca e versão

  @sucesso
   Cenario: Fazer filtro por modelo, marca e versão

    Dado que estou na tela inicial do site
    E eu clico em ver ofertas
    Quando eu faço determinados filtros
      | modelo | marca | versão                                   |
      | city   | honda | HONDA CITY 1.5 DX 16V FLEX 4P AUTOMÁTICO |
    Então o resultado é apresentado na tela
