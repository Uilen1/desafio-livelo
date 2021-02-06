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
 		Como um usu�rio
 		Eu quero obter os dados retornados da API
 		Para que eu possa validar os dados e retorno das requisi��es

  @teste1
  Cen�rio: Deve retornar a lista de usu�rios cadastrados
  # Dado que eu acesso a rota "/api/users"
  # Ent�o � retornado a lista de usu�rios e o status code "200"
  
  @teste2
  Cen�rio: Deve retornar apenas um usu�rio cadastrado
  # Dado que eu acesso a rota "/api/users"
  # E acesso o ID do usu�rio "2"
  # Ent�o � retornado o usu�rio e o status code "200"
  
  @teste2
  Cen�rio: Pesquisar por usu�rio n�o existente
  # Dado que eu acesso a rota "/api/users"
  # E acesso o ID do usu�rio "23"
  # Ent�o � o status code "404"
  
