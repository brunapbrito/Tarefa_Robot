*** Settings ***
Resource    ../resources/tests.resource
Test Setup    Abrir o navegador       # chama a keyword antes de todos os testes
Test Teardown    Fechar o navegador   # Test Teardown sempre roda quando acaba todos os tests


*** Test Cases ***

Cenário 1- cadastrar nova empresa 
     Logar no sistema
     Abrir modal novo cadastro de empresa
     Preencher os dados da empresa
     Preencher os dados do endereço da empresa
     Escrolar ate o final
     Clicar no botao salvar novo
     Sleep    10

Cenário 2 - validar que o campo razao social e obrigatorio
      [Tags]  02
      Logar no sistema 
      Abrir modal novo cadastro de empresa
      Validar campo razao social invalido
      Sleep    10
