# Cenops UFC

O aplicativo Cenops UFC serve como banco de dados de profissionais que dominam a Língua brasileira de sinais. O objetivo é facilitar a busca por esses profissionais. Novas funcionalidades podem ser implementadas no futuro. O aplicativo foi feito utilizando o framework Flutter, na linguagem Dart. Um Google Form está disponível no site do projeto, no qual profissinais podem disponibilizar seus dados, e em seguida, a equipe analiza e pode disponibilizar no aplicativo.

V. 1.0.0

## Autores

[<img src="https://avatars.githubusercontent.com/u/62609651?v=4" width=115><br><sub>José Airton Araújo</sub>](https://github.com/netoairton0)

## Índice

* [Índice](#Índice)
* [Guia do usuário](#Guia-Do-Usuário)
* [Código fonte](#Código-fonte)

## Guia do usuário

### Homepage

Na página principal encontramos um botão que nos leva para os contatos do projeto e outro que nos leva aos profissionais cadastrados.

### Contatos

Na página de contatos temos vários contatos do projeto, inclusive o formulário para se cadastrar no app.

### Profissionais

Nessa página encontramos as profissões disponíveis, podemos selecionar a que queremos, e seremos direcionado para uma página com os profissionais cadastrados, selecionando o que desejamos, obtemos um pop-up com as informações do mesmo.

## Código fonte

### Main

Primeiramente é definido o tema do aplicativo com a Classe ThemeData, os temas evitam a repetição de código. Para saber mais das propriedades dessa classe é importante visitar a página dela no site do flutter. As cores usadas no app, assim como as fontes, foram escolhidas pelo bolsista de design na época. Por fim foram definidas as rotas do app de maneira bem padrão. Para saber mais sobre qualquer um desses temas, são recomendados o site do flutter ou a playlist do canal polimorfismo.

### Homepage

A página principal do app é definida no Widget build, que é basicamente um Column com dois cards (Explicação da função criarCard mais a diante) e uma imagem, além de alguns sizedbox para dar mais espaço entre os itens da coluna. A imagem é gerada a partir de um Image.asset, e a imagem está na pasta de assets. A função criarCard tem o objetivo de evitar repetição de código, ela gera os cards que levam para outras páginas do aplicativo. Passamos como parâmetros o icone e a imagem que usaremos no card e a rota que leva para aquela página. Na função usamos um TextButton.icon para criar um botão que leva para a página em questão. 

### Contato

OBS: Aqui foram utiliados dois pacotes do Flutter. O font awesome flutter foi usado para fornecer uma quantidade maior de ícones ao app. E o url launcher foi usado para que o usuário consiga acessar outros aplicativos (como o YouTube) a partir do aplicativo.

A função _launchUrl é necessária para usar o pacote do url launcher, e sua explicação está disponível na página do pacote. A função criarLink é bem semelhante a criarCard, aqui ela cria um card que leva direto para outros links, como o canal do projeto no YouTube. Por fim, criamos uma coluna com os cards de cada link, chamando a função criarCard.

### Profissionais

A página de profissionais funciona da mesma maneira que a homepage, foi feita uma função que tem o objetivo de criar um card que leva para a página de cada uma das profissões. E no Widget build chamamos essa função dentro de uma coluna para instanciar os cards.

### As listas dos profissionais

As listas funcionam da mesma maneira, utilizando a de intérpretes como exemplo, temos: 

A função de criarInterprete é semelhante a de criarCard, a diferença é basicamente que usamos um textbutton normal, e que quando ele é presionado ele chama um showDialog, passamos então o context da aplicação e um _buildPopupDialog como parâmetros. Essa segunda função instancia um pop-up com o conjunto de dados passados pelo profissional. E ainda instanciamos um textbutton para fechar o pop-up. (Qualquer dúvida sobre essa parte pode ser respondida na página sobre AlertDialog do flutter)