Funcionalidade: Exportar fluxo

Cenário: Exportar fluxo novo do tipo Chat com sucesso
 Dado crio um novo fluxo do tipo Chat
 E estou na tela de edição do fluxo
 E exista pelo menos uma variável ou componente criado dentro desse fluxo
 Quando vou clicar no botão "Exportar Fluxo" 
 Então o botão "Exportar Fluxo" deve estar habilitado
 E o arquivo exportado com o mesmo nome do fluxo
 E deve ser salvo corretamente no meu dispositivo no formato JSON
 E o arquivo JSON exportado deve conter os elementos do fluxo do tipo Chat

Cenário: Exportar fluxo novo do tipo Voz com sucesso
 Dado crio um novo fluxo do tipo Voz
 E estou na tela de edição do fluxo
 Quando vou clicar no botão "Exportar Fluxo" 
 Então o botão "Exportar Fluxo" deve estar habilitado
 E o arquivo exportado com o mesmo nome do fluxo
 E deve ser salvo corretamente no meu dispositivo no formato JSON
 E o arquivo JSON exportado deve conter todas as informações do do fluxo do tipo Voz

Cenário: Exportar fluxo vazio 
 Dado crio um novo fluxo do tipo Chat ou Voz
 E estou na tela de edição do fluxo
 E não existe nehuma variável ou componente criado dentro desse fluxo
 Quando tento clicar no botão de exportar fluxo
 Então o sistema deve bloquear o botão de exportar fluxo

Cenário: Exportar fluxo existente do tipo Voz com sucesso
 Dado que seleciono um fluxo tipo Voz
 E estou na tela de edição do fluxo
 E exista pelo menos uma variável ou componente criado dentro desse fluxo
 Quando vou clicar no botão "Exportar Fluxo" 
 Então o botão "Exportar Fluxo" deve estar habilitado
 E o arquivo exportado com o mesmo nome do fluxo
 E deve ser salvo corretamente no meu dispositivo no formato JSON
 E o arquivo JSON exportado deve conter os elementos do fluxo do tipo Voz

Cenário: Exportar fluxo existente do tipo Chat com sucesso
 Dado que seleciono um fluxo do tipo Chat 
 E estou na tela de edição do fluxo
 E exista pelo menos uma variável ou componente criado dentro desse fluxo
 Quando vou clicar no botão "Exportar Fluxo" 
 Então o botão "Exportar Fluxo" deve estar habilitado
 E o arquivo exportado com o mesmo nome do fluxo
 E deve ser salvo corretamente no meu dispositivo no formato JSON
 E o arquivo JSON exportado deve conter os elementos do fluxo do tipo chat



