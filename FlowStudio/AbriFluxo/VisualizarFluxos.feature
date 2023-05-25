Funcionalidade: Versão do fluxo

Cenário: Exibir versão real do fluxo
Dado que estou na tela de carregamento de fluxos
Quando seleciono um fluxo
E clico para visualizar o fluxo
Então o sistema deve exibir corretamente a versão atual do fluxo

Cenário: Carregar versão anterior do fluxo
Dado que existem versões anteriores do fluxo disponíveis
Quando seleciono uma das versões anteriores do fluxo
Então o sistema deve carregar corretamente a versão anterior do fluxo no modo de visualização
E exibir um botão desabilitado para permitir a edição do fluxo

Cenário: Habilitar edição da versão anterior do fluxo
Dado que estou visualizando uma versão anterior do fluxo
Quando habilito a edição da versão anterior
Então o sistema deve exibir um aviso informando que a versão atual será sobrescrita ao salvar as alterações

Cenário: Salvar edição da versão anterior do fluxo
Dado que estou editando uma versão anterior do fluxo
Quando salvo as alterações
Então o sistema deve exibir um aviso informando que a versão atual será sobrescrita