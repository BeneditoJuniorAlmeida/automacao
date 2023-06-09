Funcionalidade:  Login no sistema VoxSurvey

Contexto: Dado que o usuário está na página de login

@automatizado
Cenário: Login bem-sucedido com credenciais corretas
 E tenha seu e-mail validado
 E o usuário insere suas credenciais corretas
 Quando o usuário clica no botão de "Entrar"
 Então o sistema autentica o usuário com sucesso
 E o usuário é redirecionado para a página de dashboard

@automatizado
Cenário: Tentativa de login com nome de usuário incorreto
 E o usuário ou insere um nome de usuário ou senha incorreta
 Quando o usuário clica no botão de "Entrar"
 Então o sistema exibe uma mensagem de erro indicando que o nome de usuário ou senha está incorreto
 E o sistema não autentica o usuário

@automatizado
Cenário: Tentativa de login com credenciais em branco
 E o usuário não insere nenhum nome de usuário
 E o usuário não insere nenhuma senha
 Quando o usuário clica no botão de "Entrar"
 Então o sistema exibe uma mensagem de erro indicando que os campos são obrigatórias
 E o sistema não autentica o usuário

@nao_automatizado
Cenário: Tentativa de login com nome de usuário inexistente
 E o usuário insere um nome de usuário que não existe no sistema
 E o usuário insere uma senha correta
 Quando o usuário clica no botão de "Entrar"
 Então o sistema exibe uma mensagem de erro indicando que o nome de usuário não foi encontrado
 E o sistema não autentica o usuário

@nao_automatizado
Cenário: Tentativa de login com múltiplas tentativas de senha incorretas
 E o usuário insere um nome de usuário correto
 E o usuário insere uma senha incorreta
 Quando o usuário clica no botão de "Entrar"
 Então o sistema exibe uma mensagem de erro indicando que a senha está incorreta
 E o sistema registra a tentativa de login falha
