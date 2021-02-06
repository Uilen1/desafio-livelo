#language:pt

#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

	Funcionalidade: Validar retorno da API
 		Como um usuário
 		Eu quero obter os dados retornados da API
 		Para que eu possa validar os dados e retorno das requisições

  @teste1
  Cenário: Deve retornar a lista de usuários cadastrados
  # Dado que eu acesso a rota "/api/users"
  # Então é retornado a lista de usuários e o status code "200"
  
  @teste2
  Cenário: Deve retornar apenas um usuário cadastrado
  # Dado que eu acesso a rota "/api/users"
  # E acesso o ID do usuário "2"
  # Então é retornado o usuário e o status code "200"
  
  @teste2
  Cenário: Pesquisar por usuário não existente
  # Dado que eu acesso a rota "/api/users"
  # E acesso o ID do usuário "23"
  # Então é o status code "404"
  
