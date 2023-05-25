Funcionalidade: Importar fluxo

Cenário: Importar um arquivo inválido
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário seleciona um arquivo que não está no formato JSON para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve exibir uma mensagem de erro informando que o formato do arquivo é inválido

Cenário: Importar um fluxo JSON válido do tipo Chat
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário seleciona um arquivo JSON válido do tipo Chat para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve importar o fluxo com sucesso
E exibir uma mensagem de confirmação de importação bem-sucedida
E carregar o fluxo na tela

Cenário: Importar um fluxo JSON válido do tipo Voz
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário seleciona um arquivo JSON válido do tipo Voz para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve importar o fluxo com sucesso
E exibir uma mensagem de confirmação de importação bem-sucedida
E carregar o fluxo na tela

Cenário: Importar um fluxo do tipo Voz sobre um fluxo do tipo Chat vazio
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário já possui um fluxo do tipo Chat vazio
E o usuário seleciona um arquivo JSON válido do tipo Voz para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve permitir que o fluxo seja importado com sucessso

Cenário: Importar um fluxo do tipo Chat sobre um fluxo do tipo Voz vazio
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário já possui um fluxo do tipo Voz vazio
E o usuário seleciona um arquivo JSON válido do tipo Chat para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve permitir que o fluxo seja importado com sucessso

Cenário: Importar um fluxo do tipo Voz sobre um fluxo do tipo Chat existente
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário já possui um fluxo do tipo Chat existente no sistema
E o usuário seleciona um arquivo JSON válido do tipo Voz para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve exibir uma mensagem de erro informando que um fluxo do tipo Voz não pode ser importado sobre um fluxo do tipo Chat existente

Cenário: Importar um fluxo do tipo Chat sobre um fluxo do tipo Voz existente
Dado que o usuário deseja realizar a importação de um fluxo
E o usuário já possui um fluxo do tipo Voz existente no sistema
E o usuário seleciona um arquivo JSON válido do tipo Chat para importar
Quando o usuário clica no botão "Importar"
Então o sistema deve exibir uma mensagem de erro informando que um fluxo do tipo Chat não pode ser importado sobre um fluxo do tipo Voz existente