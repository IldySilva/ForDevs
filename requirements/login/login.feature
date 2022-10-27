Feature:Login
  Como um cliente
  quero poder acessar a minha conta e manter logado
  para que eu possa ver e responder enquetes de forma rápida

  Scenario: Credencias Validas
    Dado que o cliente informou credewncias validas
    quando solicirar para fazer o login
    então o Sistema deve nviar o usuário para tela de pesquisas
    E Manter o usuário logado


  Scenario: Credencias Invalidas