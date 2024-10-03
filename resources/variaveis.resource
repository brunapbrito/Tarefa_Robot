*** Variables ***

${urlBase}                    https://automacao.qacoders.dev.br/login
${emailValido}                sysadmin@qacoders.com
${emailInput}                 id=email
${senhaValida}                1234@Test
${senhaInput}                 id=password   
${botaoInput}                 id=login   
${menuCadastros}              id=Cadastros
${itemMenuEmpresa}            id=Empresa
${cadastro}                   //h5[contains(.,'Cadastro')]
${botaoNovoCadastro}          id=Novo Cadastro
${dadosDaEmpresa}             //h4[contains(.,'Dados da Empresa')]
${dadosDoEnderecoDaEmpresa}   //h4[contains(.,'Endereço')]
${botaoSalvarNovo}            id=save     

# variaveis do cadastro de empresa


${cadastroInputDadosDarazaoSocial}    id=companyName
${CadastroInputNomeFantasyName}       id=fantasyName           
${CadastroInputEmail}                 id=companyMail
${CadastroInputCampocnpj}             id=matriz          
${CadastroInputTelephone}             id=telephone 
${CadastroInputDescricaoDoServico}    id=serviceDescription   
${CadastroInputNomeDoResponsavel}     id=fullName   



${EnderecoDaEmpresaInputcep}             id=zipCode                  
${EnderecoDaEmpresaInputPaís}            id=country
${EnderecoDaEmpresaInputCidade}          id=city
${EnderecoDaEmpresaInputEstado}          id=state
${EnderecoDaEmpresaInputBairro}          id=district
${EnderecoDaEmpresaInputRua}             id=street 
${EnderecoDaEmpresaInputNumero}          id=number
${EnderecoDaEmpresaInputComplemento}     id=complement














