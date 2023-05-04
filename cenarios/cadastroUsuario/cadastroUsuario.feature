Funcionalidade: Cadastro de usuário

Contexto: Dado que o usuário não está registrado no sistema

Cenário: Cadastro de usuário com sucesso
E o usuário preencher todos os campos corretamente com email válido, nome, senha forte e a confirmação de senha correspondente
Quando o usuário clicar no botão de "Criar conta"
Então o usuário deve ser registrado com sucesso no sistema
E o usuário deve ser redirecionado para a página de login

Cenário: Cadastro de usuário com email inválido
E o usuário preencher o campo de email com um valor inválido (por exemplo, sem um "@" ou com um formato incorreto)
E preencher os demais campos corretamente
Quando o usuário clicar no botão "Criar conta"
Então o sistema deve exibir uma mensagem de erro informando que o email é inválido
E o usuário não deve ser registrado no sistema

Cenário: Cadastro de usuário com senhas diferentes
E o usuário preencher todos os campos corretamente, incluindo senhas diferentes no campo de senha e no campo de confirmação de senha
Quando o usuário clicar no botão "Criar conta"
Então o sistema deve exibir uma mensagem de erro informando que as senhas não correspondem
E o usuário não deve ser registrado no sistema

Cenário: Cadastro de usuário com senha fraca
E o usuário preencher todos os campos corretamente, exceto a senha que não atende aos critérios de segurança
Quando o usuário clicar no botão "Criar conta"
Então o sistema deve exibir uma mensagem de erro informando que a senha é fraca
E o usuário não deve ser registrado no sistema

Cenário: Cadastro de usuário com email já existente
E o usuário preencher todos os campos corretamente, incluindo um email de usuário que já existe no sistema
Quando o usuário clicar no botão "Criar conta"
Então o sistema deve exibir uma mensagem de erro informando que o email já está em uso
E o usuário não deve ser registrado no sistema