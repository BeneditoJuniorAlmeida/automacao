
Funcionalidade: Logout 

Contexto: 

Cenário: Logout bem-sucedido
 Dado que o usuário está logado no sistema 
 Quando o usuário clica no botão "Sair"
 Então o usuário deve ser redirecionado para a página de login
 E a sessão do usuário deve ser encerrada corretamente
 E o usuário não deve ter acesso às funcionalidades restritas após o logout

Cenário: Logout cancelado
 Dado que o usuário está logado no sistema
 Quando o usuário clica no botão "sair"
 E em seguida, clica no botão de cancelamento
 Então o usuário não deve ser redirecionado para a página de login
 E a sessão do usuário não deve ser encerrada
 E o usuário ainda deve ter acesso às funcionalidades restritas após o cancelamento do logout

Cenário: Expiração de sessão
Dado que o usuário está logado no sistema
E a sessão do usuário expira automaticamente devido à inatividade de 3 horas
Quando o usuário tenta realizar uma ação após a expiração da sessão
Então o usuário deve ser redirecionado para a página de login
E uma mensagem adequada deve ser exibida indicando que a sessão expirou