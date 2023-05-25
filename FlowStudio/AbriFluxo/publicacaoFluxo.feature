Funcionalidade: Publicar fluxo

Cenário: Bloquear botão de publicação de quando a versão salva for menor que versão publicada 
Dado que a versão salva é a 10 e a versão publicada é a 11
Quando o usuário abrir o fluxo
Então o sistema deve carregar a versão 10
E o botão de publicar deve estar desabilitado

Cenário: Bloquear botão de publicação de quando a versão salva for igual a que versão publicada 
Dado que o usuário abriu o fluxo e a versão salva é a 10 e a versão publicada é a 10
Quando o usuário fizer alterações no fluxo, mas não salvá-las
Então a versão salva deve continuar sendo a versão 10
E o botão de publicar deve permanecer desabilitado

Cenário: Desbloqueio do botão de publicação
Dado que o usuário fez alterações no fluxo
E salvou a nova versão 11
Quando o sistema comparar a versão salva 11 com a versão publicada 10
Então o botão de publicar deve ser habilitado
E permitir que uma nova versão do fluxo seja publicada 
E o sistema deverá exibir uma mensagem de confimação da publicação

Cenário: Duas pessoas editam a mesma versão do fluxo ao mesmo tempo
Dado que a versão salva é a 10 e a versão publicada é a 10
Quando a primeira pessoa carrega a versão 10 do fluxo
E a segunda pessoa também carrega a versão 10 do fluxo
E a primeira pessoa faz alterações no fluxo e salva, gerando a versão 11
E a segunda pessoa faz alterações no fluxo e salva, gerando a versão 12
Então quando a primeira pessoa tentar salvar suas alterações
Deve receber uma mensagem informando que o fluxo já foi editado
E deve ser apresentado opções para sobrescrever, descartar ou cancelar a ação de salvar
Quando a primeira pessoa descartar as alterações
E o botão de publicar deve ser habilitado

Cenário: Duas pessoas editam a mesma versão do fluxo ao mesmo tempo e a primeira pessoa decide sobrescrever as alterações da segunda pessoa
Dado que a versão salva é a 10 e a versão publicada é a 10
Quando a primeira pessoa carrega a versão 10 do fluxo
E a segunda pessoa também carrega a versão 10 do fluxo
E a primeira pessoa faz alterações no fluxo e salva, gerando a versão 11
E a segunda pessoa faz alterações no fluxo e salva, gerando a versão 12
E a primeira pessoa decide sobrescrever as alterações da segunda pessoa e salva, gerando a versão 13
Então a versão salva deve ser a versão 13
E a versão publicada deve ser a versão 10
E o botão de publicar deve ser habilitado

Cenário: Duas pessoas editam a mesma versão do fluxo ao mesmo tempo e a primeira pessoa decide cancelar as alterações
Dado que a versão salva é a 10 e a versão publicada é a 10
Quando a primeira pessoa carrega a versão 10 do fluxo
E a segunda pessoa também carrega a versão 10 do fluxo
E a primeira pessoa faz alterações no fluxo e salva, gerando a versão 11
E a segunda pessoa faz alterações no fluxo e salva, gerando a versão 12
E a primeira pessoa decide cancelar as alterações
Então a versão salva deve ser a versão 11
E a versão publicada deve ser a versão 10
E o botão de publicar deve ser habilitado

Cenário: Duas pessoas editam a mesma versão do fluxo ao mesmo tempo e a primeira pessoa decide descartar as alterações
Dado que a versão salva é a 10 e a versão publicada é a 10
Quando a primeira pessoa carrega a versão 10 do fluxo
E a segunda pessoa também carrega a versão 10 do fluxo
E a primeira pessoa faz alterações no fluxo e salva, gerando a versão 11
E a segunda pessoa faz alterações no fluxo e salva, gerando a versão 12
E a primeira pessoa decide descartar as alterações
Então a versão salva deve continuar sendo a versão 11
E a versão publicada deve ser a versão 10
E o botão de publicar deve ser habilitado