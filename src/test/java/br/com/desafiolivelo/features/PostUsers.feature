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

Funcionalidade: Validar a inser��o de usu�rios na API
 		Como um usu�rio
 		Eu desejo registrar usu�rios na API
 		Para que eu possa realizar a persist�ncias dos dados

  @teste1
  Cen�rio: Inser��o de usu�rio com sucesso
  # Dado que eu acesso a rota "/api/users"
  # E envio o nome "nomeTeste" e o job "jobTeste"
  # Ent�o � retornado o status code "201"
  

