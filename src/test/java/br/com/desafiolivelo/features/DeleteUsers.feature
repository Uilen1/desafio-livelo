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

	Funcionalidade: Validar retorno da API para uma dele��o de usu�rio
 		Como um usu�rio
 		Eu quero obter os dados retornados da API
 		Para que eu possa validar os dados e retorno das requisi��es

  @teste1
  Cen�rio: N�o h� conte�do retornado, quando deleta-se um usu�rio
  # Dado que eu acesso a rota "/api/users"
  # E deleto pelo ID do usu�rio "2"
  # Ent�o � retornado o status code "204"
