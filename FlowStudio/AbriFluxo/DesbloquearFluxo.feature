Funcionalidade: Desbloquear Fluxo

Cenário: Desbloqueio de fluxo restritivo
Dado que um usuário com perfil administrador master tenha acessado o "Flow Studio"
E um fluxo restritivo esteja bloqueado para edição por outro usuário
Quando o usuário com perfil administrador master selecionar o fluxo bloqueado
Então o usuário deve ser capaz de desbloquear o fluxo
E o fluxo deve ficar disponível para edição por outros usuários com perfil administrador

Cenário: Usuário com perfil de administrador não pode desbloquear fluxo
Dado que um usuário com perfil de administrador está logado no sistema
E existe um fluxo restritivo bloqueado por outro usuário
Quando o usuário administrador seleciona o fluxo e tenta clicar em "desbloquear"
Então o sistema exibe uma mensagem 
E informando que somente usuários com perfil de administrador master podem desbloquear fluxos restritivos bloqueados por outros usuários

Cenário: Desbloqueio de fluxo livre
Dado que um usuário com perfil administrador master tenha acessado o "Flow Studio"
E um fluxo livre esteja bloqueado para edição por outro usuário
Quando o usuário com perfil administrador master selecionar o fluxo bloqueado
Então o usuário deve ser capaz de desbloquear o fluxo
E o fluxo deve ficar disponível para edição por outros usuários

Cenário: Edição de fluxo restritivo por administrador
Dado que um usuário com perfil administrador tenha acessado o "Flow Studio"
E um fluxo restritivo esteja disponível para edição
Quando o usuário com perfil administrador selecionar o fluxo para edição
Então o usuário deve ser capaz de editar o fluxo
E o fluxo deve permanecer bloqueado para outros usuários até que seja salvo e publicado

Cenário: Edição de fluxo livre por mais de uma pessoa
Dado que um usuário com perfil administrador tenha acessado o "Flow Studio"
E um fluxo livre esteja disponível para edição
Quando um segundo usuário com perfil administrador selecionar o fluxo para edição
Então o segundo usuário deve ser capaz de editar o fluxo simultaneamente com o primeiro usuário
E o fluxo deve permanecer disponível para edição por outros usuários

Cenário: Liberação manual do fluxo
Dado que eu sou um usuário que está editando um fluxo
E o fluxo tem a opção de ser liberado manualmente
Quando eu termino de editar o fluxo
E decido liberá-lo manualmente
Então o fluxo é liberado com sucesso

Cenário: Liberação automática do fluxo
Dado que um fluxo esteja disponível para edição por um ou mais usuários
Quando o último usuário salvar e publicar o fluxo
Então o fluxo deve ser automaticamente liberado para edição por outros usuários com perfil administrador.