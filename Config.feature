#language: pt


  Funcionalidade: Login na Plataforma
  Como Cliente
  Quero fazer login (autenticação) na plataforma
  Para Visualizar meus pedidos

  Contexto:
  Dado que eu acesse a página de autenticação da EBAC-SHOP

  Cenário: Autenticação Válida
  Quando eu digitar o usuário "eduardo@ebac.com.br"
  E a senha "senha@123"
  Então deve exibir uma mensagem de boas vindas "Olá João"

  Cenário: Usuário Inexistente
  Quando eu digitar o usuário "xxxxxxxx@ebac.com.br"
  E a senha "senha@124"
  Então deve exibir uma mensagem de alerta "Usuário inexistente"

  Cenário: Usuário com senha inválida
  E a senha "dsajkdhashbdnjasmkdau"
  Então deve exibir uma mensagem de alerta: "Usuário ou senha ou E-mail inválidos"