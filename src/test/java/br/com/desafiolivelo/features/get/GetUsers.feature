#language:pt

@GET
	Funcionalidade: Validar retorno da API
 		Como um usuário
 		Eu quero obter os dados retornados da API
 		Para que eu possa validar os dados e retorno das requisições

  @GETteste1 @Validado
  Cenário: Deve retornar apenas um usuário cadastrado
   Dado que eu acesso a rota "/api/users/" com o ID do usuário "2"
   Então é retornado o usuário e o status code "200"
  
  @GETteste2 @Validado
  Cenário: Pesquisar por usuário não existente
   Dado que eu acesso a rota "/api/users/" com o ID do usuário "23"
   Então é retornado o status code "404"
  
