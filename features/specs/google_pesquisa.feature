#language: pt
@pesquisaGoogle
Funcionalidade: Google Pesquisa

  @pesquisaSuccess
  Cenario: Pesquisa Valida
    Dado que eu esteja na pagina inicial
    Quando eu pesquisar por "Mick Hill QA"
    Entao me retorna os resultados indexados