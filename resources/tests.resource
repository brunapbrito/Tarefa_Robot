*** Settings ***
Library    SeleniumLibrary

Resource    ../resources/variaveis.resource


*** Keywords ***
                                        
Abrir o navegador
    Open Browser    browser=headlesschrome    
    Maximize Browser Window    

Fechar o navegador
    Close Browser    

Acessar a pagina de login
    Go To    url=${urlBase}
        

Digitar um e-mail valido
     Wait Until Element Is Visible    locator=${emailInput}
     Input Text                       locator=${emailInput}   text=${emailValido}
     
Digitar uma senha valida
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Password                   locator=${senhaInput}   password=${senhaValida}

Clicar no botao entrar 
   Wait Until Element Is Visible     locator=${botaoInput}
    Click Button                     locator=${botaoInput}  


Logar no sistema
     Abrir o navegador 
     Acessar a pagina de login
     Digitar um e-mail valido
     Digitar uma senha valida
     Clicar no botao entrar    
    

Clicar no menu cadastros
    Wait Until Element Is Visible     locator=${menuCadastros}
    Click Element                     locator=${menuCadastros}
    Sleep    5

Clicar no botao empresa
      Wait Until Element Is Visible    locator=${itemMenuEmpresa}
        Click Element                  locator=${itemMenuEmpresa} 
      Wait Until Element Is Visible    locator=${cadastro}

Clicar no botao novo cadastro
    Wait Until Element Is Visible    locator=${botaoNovoCadastro}
    Click Button                     locator=${botaoNovoCadastro}


Abrir modal novo cadastro de empresa
    Clicar no menu cadastros
     Clicar no botao empresa
     Clicar no botao novo cadastro

Preencher os dados da empresa
    Wait Until Element Is Visible    locator=${dadosDaEmpresa}
    Input Text                       locator=${cadastroInputDadosDarazaoSocial}             text=razao social
    Input Text                       locator=${CadastroInputNomeFantasyName}                text=nome fantasia
    Input Text                       locator=${CadastroInputEmail}                          text=testt.test@gmail.com
    Input Text                       locator=${CadastroInputCampocnpj}                      text=87696922000163    
    Input Text                       locator=${CadastroInputTelephone}                      text=19998215688
    Input Text                       locator=${CadastroInputDescricaoDoServico}             text=descricão do serviço        
    Input Text                       locator=${CadastroInputNomeDoResponsavel}              text=nome do responsavel


Preencher os dados do endereço da empresa
    Wait Until Element Is Visible    locator=${dadosDoEnderecoDaEmpresa}
    Input Text                       locator=${EnderecoDaEmpresaInputcep}                  text=13040018
    Input Text                       locator=${EnderecoDaEmpresaInputPaís}                 text=País
    Input Text                       locator=${EnderecoDaEmpresaInputCidade}               text=cidade
    Input Text                       locator=${EnderecoDaEmpresaInputEstado}               text=SP
    Input Text                       locator=${EnderecoDaEmpresaInputBairro}               text=bairro
    Input Text                       locator=${EnderecoDaEmpresaInputRua}                  text=rua
    Input Text                       locator=${EnderecoDaEmpresaInputNumero}               text=50
    Input Text                       locator=${EnderecoDaEmpresaInputComplemento}          text=complemento

Limpar campo
    [Arguments]    ${locator}
    Press Keys       ${locator}      CTRL+A+BACKSPACE         #unico jeito de limpar o campo para mostrar o erro de validação

Validar campo razao social invalido
    Preencher os dados da empresa
    Preencher os dados do endereço da empresa
    Limpar campo    locator=id=companyName
    Clicar no botao salvar novo
    Scroll Element Into View    locator=id=companyName
    Element Should Be Visible    locator=//p[contains(.,'O campo razão social é obrigatório')]

Escrolar ate o final
    Scroll Element Into View    locator=id=save

Clicar no botao salvar novo
    Scroll Element Into View         locator=${botaoSalvarNovo}
    Wait Until Element Is Visible    locator=${botaoSalvarNovo}
    Click Button                     locator=${botaoSalvarNovo}

    


        
    
         
    
      
    

         

