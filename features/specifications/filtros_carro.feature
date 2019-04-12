#language: pt
#encoding: utf-8

@FullSmoke

Funcionalidade: Fazer filtros na página de resultados da busca.

  - Narrativa:
  Fazer filtros na página dos resultados da busca com opções de:
  modelo, marca e versão

  @filtros
  Cenario: Fazer filtro por modelo, marca e versão

    Dado que estou na tela inicial do site
    E eu clico em ver ofertas
    Quando eu faço filtros por marca, modelo e versão
      | marca | modelo |
      | honda | city   |
    Então o resultado é apresentado na tela


