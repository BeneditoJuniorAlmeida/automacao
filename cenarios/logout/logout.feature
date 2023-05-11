
Funcionalidade: Logout 

Contexto: Dado que o usuário está logado no sistema 

@automatizado
Cenário: Logout bem-sucedido
 Quando o usuário clica no botão "Sair"
 Então o usuário deve ser redirecionado para a página de login
 E a sessão do usuário deve ser encerrada corretamente
 E o usuário não deve ter acesso às funcionalidades restritas após o logout

@nao_automatizado
Cenário: Expiração de sessão
E a sessão do usuário expira automaticamente devido à inatividade de 3 horas
Quando o usuário tenta realizar uma ação após a expiração da sessão
Então o usuário deve ser redirecionado para a página de login
E uma mensagem adequada deve ser exibida indicando que a sessão expirou