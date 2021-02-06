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

	Funcionalidade: Validar retorno da API para uma deleção de usuário
 		Como um usuário
 		Eu quero obter os dados retornados da API
 		Para que eu possa validar os dados e retorno das requisições

  @teste1
  Cenário: Não há conteúdo retornado, quando deleta-se um usuário
  # Dado que eu acesso a rota "/api/users"
  # E deleto pelo ID do usuário "2"
  # Então é retornado o status code "204"
