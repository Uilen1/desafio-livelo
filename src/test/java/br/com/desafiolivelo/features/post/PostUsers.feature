#language:pt

@POST
Funcionalidade: Validar a insção de usuários na API
 		Como um usuário
 		Eu desejo registrar usuários na API
 		Para que eu possa realizar a persistências dos dados

  @POSTteste1 @Validado
  Cenário: Inserção de usuário com sucesso
   Dado que acesso a rota de inclusão "/api/users/"
   E envio o nome "nomeTeste" e o job "jobTeste"
   Então é retornado para o registro com sucesso o status code "201"
  

