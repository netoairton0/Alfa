# Cenops UFC

O aplicativo Cenops UFC serve como banco de dados de profissionais que dominam a Língua brasileira de sinais. O objetivo é facilitar a busca por esses profissionais. Novas funcionalidades podem ser implementadas no futuro. O aplicativo foi feito utilizando o framework Flutter, na linguagem Dart. Um Google Form está disponível no site do projeto, no qual profissinais podem disponibilizar seus dados, e em seguida, a equipe analiza e pode disponibilizar no aplicativo.

V. 1.0.0

## Índice

* [Índice](#Índice)
* [Guia do usuário](#Guia_Do_Usuário)
* [Código fonte](#Código_fonte)

## Getting Started

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)


## Guia do usuário

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

