# plugin-harmonia
O plugin "Harmonia" analisa diversos aspectos musicais relevantes para o estudo da harmonia em exercícios de encadeamento de acordes. Estes aspectos estão relacionados à condução de vozes, ao tratamento de dissonâncias, à construção melódica, à homogeneidade da textura, e à construção e estrutura dos acordes em harmonias diatônicas. 

## 1. Introdução 
Este texto apresenta as instruções para a instalação e utilização da extensão/plugin “Harmonia”, para o software MuseScore nas suas versões 2 ou 3. Portanto, antes de mais nada, é necessário que o mesmo esteja instalado para possibilitar o uso da extensão. O MuseScore é um software livre, gratuito e pode ser baixado em https://musescore.org/pt-br/download.

As extensões ou plugins são pequenos programas que adicionam uma funcionalidade específica ao MuseScore. Ao habilitar uma determinada extensão, uma nova opção será incluída ao menu ‘Extensões’ no MuseScore para realizar alguma ação na partitura ou em parte dela. 

Algumas extensões vêm pré-instaladas com o MuseScore. Você pode encontrar muitas outras no site do programa. Os arquivos de código das extensões para o MuseScore 2 e 3 possuem a terminação “.qml”. 

### Instalação da extensão “Harmonia”

Baixe o arquivo (ex.: “harmonia_v0.121.qml”) e coloque ele em um dos diretórios listados abaixo (mudando o que deve ser mudado para a linguagem do sistema operacional do seu computador e versão do MuseScore).

#### Windows
O MuseScore procura por extensões em:
%HOME%\Documents\MuseScore2\Plugins

#### macOS e Linux
O MuseScore procura por extensões em:
~/Documents/MuseScore2/Plugins

### Habilitando/desabilitando extensões

Para ser possível acessar uma extensão instalada a partir do menu ‘Extensões’, ela precisa estar habilitada no “Gerenciador de extensões”. Uma vez habilitada, a extensão ficará disponível para uso através do menu Extensões.
![image](https://user-images.githubusercontent.com/19985432/64991548-79bc4e00-d8a8-11e9-92ed-79357b3efe8c.png)

## 2. Utilização
A extensão Harmonia executa diversas verificações de aspectos musicais relevantes para o estudo da harmonia.
Antes de explicar o uso da extensão em detalhe, é importante ter ciência de que o procedimento inicial será o de escrever/realizar o exercício (ou parte dele) na partitura do MuseScore para, em seguida, abrir a extensão e escolher as verificações correspondentes.
Assim, é presumido que você possua um conhecimento básico de escrita musical no MuseScore. Como sugestão, indicamos uma lista de tópicos para serem estudados e/ou revisados a partir do Manual Online do programa: 
    • Criando uma nova partitura (https://musescore.org/pt-br/handbook/criando-uma-nova-partitura)
    • Entrada de notas – básico (https://musescore.org/pt-br/handbook/entrada-de-notas)
    • Vozes (https://musescore.org/pt-br/node/36056)

### Tipos de escrita

É possível escrever os encadeamentos de diferentes formas:

1) Todas as vozes da textura em uma só pauta, e em uma única camada da escrita
![image](https://user-images.githubusercontent.com/19985432/64990993-593fc400-d8a7-11e9-8daf-6495c7e4d6d2.png)

2) As vozes da textura divididas em duas pautas, e em uma única camada da escrita por pauta
![image](https://user-images.githubusercontent.com/19985432/64991038-796f8300-d8a7-11e9-8f7f-bb51c6cc3fe1.png)

![image](https://user-images.githubusercontent.com/19985432/64991101-95732480-d8a7-11e9-8103-e474b4081461.png)

3) Cada voz da textura é escrita em uma camada própria
![image](https://user-images.githubusercontent.com/19985432/64991139-a9b72180-d8a7-11e9-87b9-36fb819e9291.png)

![image](https://user-images.githubusercontent.com/19985432/64991169-bc315b00-d8a7-11e9-9578-7b8ef1a75586.png)

4) Cada voz da textura é escrita em uma pauta própria
![image](https://user-images.githubusercontent.com/19985432/64991199-cce1d100-d8a7-11e9-829b-a9e62483ce5a.png)

A extensão “Harmonia” pode ser utilizada em todas as formas de escrita. Entretanto, para a correta identificação da condução de vozes, é importante que a quantidade de vozes não mude ao longo do encadeamento.
Se houver ritmos independentes em uma ou mais vozes, é necessária a escrita na forma 3 ou na forma 4.

## 3. A extensão “Harmonia”

Esta seção apresenta os métodos de utilização da extensão “Harmonia”. Como referido anteriormente, o primeiro passo é a criação da partitura contendo o trecho musical que será analisado e verificado pela extensão, com vistas a identificar os diversos aspectos musicais de acordo com as configurações escolhidas no próprio uso da extensão.

### 3.1 Verificações

As verificações podem ser realizadas em toda a partitura ou apenas em um excerto selecionado. Se não houver nenhuma parte selecionada na partitura, a extensão realizará as verificações desde o primeiro compasso até o fim. Se houver uma seleção de trechos e/ou vozes, a verificação será somente nestes.
![image](https://user-images.githubusercontent.com/19985432/64991784-e8011080-d8a8-11e9-98fb-ba1bcb9fc446.png)

  Neste exemplo, se fosse realizada a verificação com a extensão “Harmonia”, somente as três vozes superiores e no trecho compreendido entre o terceiro tempo do segundo compasso e o início do quarto compasso, seriam analisadas. 
Se não houver nenhum trecho selecionado, a extensão fará a verificação em toda a partitura.

### 3.2 A interface

Para abrir a extensão vá ao Menu superior, selecione a alternativa “Extensões” e depois “Harmonia”. Ao abrir a extensão, aparece a sua janela principal:
![interface](https://user-images.githubusercontent.com/19985432/64991872-154dbe80-d8a9-11e9-9504-63d4acc2ed29.png)
 
Ela é dividida em duas áreas principais: a de seleção das verificações, à esquerda; a de configurações gerais, à direita. Existem outras duas áreas secundárias: a barra superior, com os botões para escolher os tipos de verificações; a barra inferior, com os botões para iniciar a verificação e para encerrar a extensão.

## 3.3 Configurações gerais

### 3.3.1 Tonalidade
Alguns tipos de verificações somente são possíveis se a tonalidade do trecho analisado for informada (ex.: resolução da sensível). Para informar, basta selecionar através dos menus de tônica, acidente e modo, clicando nas setas:
![Tonalidade](https://user-images.githubusercontent.com/19985432/64992127-a9b82100-d8a9-11e9-98f3-e1372c63e818.png)
				  
### 3.3.2 Pré-configuração de verificações

Após configurar a tonalidade e o modo de escrita, você pode escolher realizar a verificação com as configurações padronizadas ou criar uma nova configuração, de acordo com o seu interesse.
A extensão possui uma série de pré-configurações que podem ser selecionadas clicando nos respectivos botões (em implementação...):

Para salvar uma nova pré-configuração, após configurar as verificações (ver. 3.4), aperte no botão “Salvar”. Escolha o nome e o local onde o arquivo com a configuração ficará salvo e clique em OK. As informações que serão gravadas não incluem a configuração de tonalidade (3.3.1).

Para utilizar uma configuração previamente criada aperte no botão “Carregar”.
![presets](https://user-images.githubusercontent.com/19985432/64995602-0d464c80-d8b2-11e9-9eba-6bf80d965c3d.png)

## 3.4 Configuração das verificações

Os botões da barra superior permitem escolher os tipos de verificações que se apresentarão para ser configurados e/ou selecionados na área principal, à esquerda. Os tipos estão classificados em: Condução de vozes, Tratamento de dissonâncias, Melodias, Textura e Acordes.

### 3.4.1 Condução de vozes
![condução de vozes](https://user-images.githubusercontent.com/19985432/64995687-4aaada00-d8b2-11e9-9b69-f736f47418d6.png)

Esta janela apresenta as possíveis verificações que a extensão pode fazer e que estão relacionadas com a condução de vozes. A seleção é feita com um clique no respectivo botão. Na coluna da esquerda, em cada retângulo, são selecionados os tipos de verificação; e na coluna da direita são selecionadas as condições necessárias para que a verificação seja verdadeira.

#### 3.4.1.1 Todas as vozes na mesma direção
![image](https://user-images.githubusercontent.com/19985432/64995739-6ada9900-d8b2-11e9-9f0a-ff93a275d0d2.png)

Se esta opção estiver selecionada, sempre que houver o movimento de todas as vozes em uma mesma direção (ascendente ou descendente), a extensão criará uma ocorrência na “lista de verificações” (ver. 3.5.1). O botão da direita, caso selecionado, determina a exceção para a movimentação de vozes na mesma direção, quando não houver mudança de acorde.

#### 3.4.1.2 Movimentos paralelos de 3ª, 4ª, 5ª, 6ª e 8ª
![image](https://user-images.githubusercontent.com/19985432/64995781-8d6cb200-d8b2-11e9-8f24-aefd70b3aa2d.png)

Esta opção analisa o movimento das vozes, por pares, em todas combinações possíveis1. Se for detectada a repetição de algum dos intervalos (3ª, 4ª, 5ª, 6ª ou 8ª), em movimento paralelo, em quantidade maior do que a configurada, é criada uma nova ocorrência na lista de verificações.

#### 3.4.1.3 Movimentos diretos de 5ª e 8ª
![image](https://user-images.githubusercontent.com/19985432/64995823-a7a69000-d8b2-11e9-9d0f-2cee505a1db7.png)

Esta verificação analisa o movimento das vozes, por pares, em todas combinações possíveis. Se for detectada a chegada em um intervalo de 5ª ou 8ª, através de movimento direto, é criada uma nova ocorrência na lista de verificações. As opções de 5ª e 8ª oculta são habilitadas separadamente. Na coluna da direita, a seleção das três possíveis condições adicionais para que as verificações sejam verdadeiras afetará as duas opções (5ª e 8ª).

#### 3.4.1.4 Movimentos oblíquo e contrário
![image](https://user-images.githubusercontent.com/19985432/64995866-c0af4100-d8b2-11e9-9712-6572d3663813.png)

Esta opção analisa o movimento das vozes, por pares, em todas combinações possíveis3. Se for detectada a ocorrência consecutiva dos intervalos de 5ª e/ou 8ª, através de movimento oblíquo ou contrário, é criada uma nova ocorrência na lista de verificações. 

#### 3.4.1.5 Cruzamento de vozes, overlapping (falso cruzamento de vozes), Uníssono e Falsa Relação
![image](https://user-images.githubusercontent.com/19985432/64995898-d9b7f200-d8b2-11e9-9cd2-089aec606948.png)

A opção cruzamento de vozes habilita a verificação de ocorrências de cruzamento de vozes. Sempre que uma voz ficar mais grave ou mais aguda que a voz adjacente inferior ou superior, respectivamente, é criada uma nova ocorrência na lista de verificações. Se estiver marcada a opção “Somente se cruzar por vozes externas”, a verificação ocorrerá somente se o cruzamento envolver a voz superior ou a voz superior.

A opção overlapping verifica o falso cruzamento de vozes, que ocorre quando duas vozes se movimentam em direção ascendente e a voz inferior move-se para uma posição mais aguda do que aquela recentemente desocupada pela voz superior. O mesmo princípio vale para o movimento descendente.

A opção uníssono verifica a ocorrência de uníssonos entre vozes adjacentes.

A opção falsa relação verifica as falsas relações de cromatismo. Quando uma nota alterada é seguida pela mesma nota natural (ou vice-versa), em outra voz, o programa cria uma ocorrência de falsa relação na lista de verificações.

#### 3.4.1.6 Resolução da sensível na tônica e da subdominante na mediante
![image](https://user-images.githubusercontent.com/19985432/64995965-feac6500-d8b2-11e9-899f-5f2e60b8ae0a.png)

Estas duas opções (Resolução 7-1 e Resolução 4-3) verificam se as respectivas tendências de resolução melódica são respeitadas na condução de vozes. Assim, sempre que não houver resolução melódica da sensível na tônica ou da subdominante na mediante, respeitando-se as condições adicionais selecionadas na coluna da direita, é criada uma nova ocorrência na lista de verificações. 

### 3.4.2 Tratamento de dissonâncias
![image](https://user-images.githubusercontent.com/19985432/64995986-0e2bae00-d8b3-11e9-971b-2896f04113c5.png)

Esta janela apresenta as possíveis verificações que a extensão pode fazer e que estão relacionadas ao tratamento de dissonâncias. A seleção é feita com um clique no respectivo botão. Cada retângulo verde corresponde a um tipo de verificação específica. Na coluna da esquerda são selecionados os tipos de verificação; e na coluna da direita são selecionadas as condições necessárias para que a verificação seja verdadeira.

#### 3.4.2.1 Tratamento de acordes em 2ª inversão
![image](https://user-images.githubusercontent.com/19985432/64996017-23a0d800-d8b3-11e9-85a0-fa28dc144b33.png)

Os acordes em segunda inversão, por sua sonoridade instável, em muitos estilos são tratados como se o baixo fosse uma dissonância. Sempre que o programa detecta um acorde em segunda inversão, que não se enquadre em uma das condições selecionadas na coluna da direita, é criada uma nova ocorrência na lista de verificações. 

#### 3.4.2.2 Tratamento de dissonâncias
![image](https://user-images.githubusercontent.com/19985432/64996035-30bdc700-d8b3-11e9-9585-4f70b92366cb.png)

Neste contexto, são consideradas dissonâncias todas as 7ªs (maiores e menores) e as 5ªs diminutas. Existem várias formas de tratamento de dissonâncias. De acordo com o estilo harmônico ou com a proposta pedagógica, pode-se selecionar uma ou mais formas de tratamento de dissonâncias na coluna da direita. Se a dissonância detectada não estiver tratada conforme as condições selecionadas, é criada uma nova ocorrência na lista de verificações.

Se o botão “Dissonância preparada ou resolvida por outra dissonância” estiver marcado, e esta característica for detectada no encadeamento harmônico, será criada uma nova ocorrência na lista independentemente das condições selecionadas na coluna da direita.

### 3.4.3 Verificações na melodia

Aqui são feitas as configurações das verificações das características de construção melódica, tais como: ocorrências de intervalos aumentados e diminutos, saltos melódicos, a definição do contorno melódico através de ponto focal, a variedade na movimentação melódica e a extensão das melodias.

#### 3.4.3.1 Intervalos melódicos
![image](https://user-images.githubusercontent.com/19985432/64996067-4a5f0e80-d8b3-11e9-93d2-1842b5edaa3b.png)

Quando as opções de intervalos aumentados e/ou diminutos estiverem marcadas, a extensão criará um item na lista de verificações, para cada ocorrência destes intervalos. Se o botão  “Exceto se mudar de direção por grau conjunto” estiver selecionado, as situações que satisfizerem esta condição não serão adicionadas à lista (esta exceção vale apenas para os intervalos diminutos).

As ocorrências de saltos de sétima e/ou saltos maiores do que oitava, serão detectadas e adicionadas à lista de verificações, quando os respectivos botões estiverem selecionados.

O mesmo acontece com os saltos maiores do que a quarta justa. Entretanto, neste caso, somente aquelas situações que não satisfizerem as condições selecionadas irão para a lista.

As opções de Saltos consecutivos na mesma direção e Dissonância composta são verificações semelhantes. Na primeira, sempre que forem detectados dois movimentos melódicos maiores do que o intervalo de segunda, em sequência, será criado um novo item na lista de verificações. A única exceção, caso estiver marcado o botão correspondente, é se esse movimento melódico formar uma tríade.

A dissonância composta ocorre sempre que o intervalo resultante de dois saltos melódicos seja dissonante (ex.: uma 3ªM seguida por uma 5ªJ resulta em uma 7ªM). Caso esta opção esteja selecionada, a extensão detectará a sua ocorrência e adicionar a lista de verificações.

#### 3.4.3.2 Ponto focal
![image](https://user-images.githubusercontent.com/19985432/64996116-7084ae80-d8b3-11e9-8c18-4331b1cc723e.png)

A extensão também analisa o contorno melódico para verificar se há um ponto focal superior ou um ponto focal inferior bem definido, em cada uma das vozes. É considerado ponto focal superior a nota mais aguda da melodia e ponto focal inferior a nota mais grave da melodia. Sempre que um ponto focal for atingido mais de uma vez na mesma melodia, a extensão criará um item na lista de verificações. Na coluna da direita estão os botões que restringem a verificação à voz superior. Quando não estão selecionados a verificação é realizada na voz superior e na voz inferior.

#### 3.4.3.3 Variedade na melodia
![image](https://user-images.githubusercontent.com/19985432/64996137-84c8ab80-d8b3-11e9-9b07-41a76dca9495.png)

São analisados três aspectos ligados a variedade melódica: a variedade de direção nos movimentos melódicos, a ausência de movimentação melódica (repetição de notas) e a repetição de padrões melódicos.

Na opção Variedade de direcionamentos, a quantidade de movimentos melódicos em uma mesma direção que se considera prejudicial para a variedade de direção nos movimentos melódicos é ajustável, de acordo com o estilo ou objetivo pedagógico desejado. Serão adicionadas à lista de verificações as sequências de movimentos, na mesma direção, maiores do que a quantidade configurada. Esta característica vale também para as opções de verificação de Repetição de notas e de Repetição de padrões (melódicos), onde a quantidade de repetições é ajustável.

Na coluna da direita é possível selecionar em quais vozes estas três verificações serão aplicadas.

#### 3.4.3.4 Extensão das melodias
![image](https://user-images.githubusercontent.com/19985432/64996182-a1fd7a00-d8b3-11e9-871d-860164226404.png)

Nesta opção, é verificado o intervalo entre a nota mais grave e mais aguda das melodias de cada voz, separadamente. É possível ajustar a quantidade máxima de semitons para a extensão de melodias, alterando o número na linha abaixo do botão de seleção. Se a extensão de alguma melodia ultrapassar o limite configurado, um novo item será adicionado à lista de verificações.

Na coluna da direita é possível selecionar em quais vozes a verificação realizada.

### 3.4.4 Textura

#### 3.4.4.1 Espaçamento entre as vozes
![image](https://user-images.githubusercontent.com/19985432/64996215-bc375800-d8b3-11e9-9726-c854ac3217ed.png)

Esta opção analisa a distância (em semitons) entre as melodias. Essa distância é configurada nas linhas abaixo do botão de seleção. Se em algum momento o intervalo for maior do que o configurado, um novo item será adicionado à lista de verificações.

#### 3.4.4.2 Extensão vocal (esse item está provisoriamente na aba “textura”)
![image](https://user-images.githubusercontent.com/19985432/64996243-ca857400-d8b3-11e9-80b6-3fe0c5a4f877.png)

Nesta opção é verificado se a extensão das vozes é respeitada. Ela é baseada na textura coral a 4 vozes (soprano, contralto, tenor e baixo). Entretanto, é também possível utilizar em texturas a 3 vozes (soprano, contralto e tenor). Não é possível utilizar em texturas com mais de 4 vozes.

É possível configurar a extensão de cada uma das vozes, nas linhas abaixo do botão de seleção. Se alguma nota estiver fora do âmbito configurado, um novo item será adicionado à lista de verificações. 

### 3.4.5 Acordes

Nesta aba configuram-se as verificações relativas às estruturas dos acordes, especialmente nos aspectos de dobramento e omissão de notas.
![image](https://user-images.githubusercontent.com/19985432/64996280-e4bf5200-d8b3-11e9-9752-cbda1fd03eb9.png)

## 3.5 Realizando as verificações

Para realizar as verificações basta clicar no botão “Verificar”, na barra inferior.
![image](https://user-images.githubusercontent.com/19985432/64996305-f6a0f500-d8b3-11e9-910d-1fed5dc2545d.png)

Automaticamente a janela de configurações vai para segundo plano e abre-se a janela com a lista de verificações. Posteriormente, quando a janela da lista de verificações for fechada, esta janela de configurações volta automaticamente para primeiro plano.

### 3.5.1 Lista de verificações

A janela com a lista de verificações apresenta uma sequência de itens com a seguinte formatação: numeração + tipo de verificação + número do compasso + vozes envolvidas.
![lista2](https://user-images.githubusercontent.com/19985432/64996415-48497f80-d8b4-11e9-812a-1a3e19178d31.png)

A numeração corresponde a ordem de realização das verificações pelo programa; o tipo de verificação identifica o problema detectado; o(s) número(s) de compasso(s) indicam o lugar onde ocorre o problema; o último componente apresentas a(s) voz(es) envolvida(s).

Os itens da lista são clicáveis. Quando clicado, o item é selecionado e as notas relacionadas ao respectivo problema ficam na cor vermelha. 
![image](https://user-images.githubusercontent.com/19985432/64996478-7333d380-d8b4-11e9-9865-f585be2b5260.png)

Se desejar, você pode seguir clicando nos itens seguintes da lista, para visualizá-los na partitura. Na medida em que forem feitas as alterações na partitura, para corrigir os problemas detectados, é possível atualizar a lista de verificações clicando no botão “Atualizar”, na parte superior da janela da lista.
Para fechar a lista de verificações e voltar à janela de configurações, clique no botão “Fechar”.

### 3.5.2 Corrigindo diversos encadeamentos

Uma vez que a extensão “Harmonia” foi aberta e configurada para realizar verificações em um determinado encadeamento, ela não precisa ser reaberta ou reconfigurada para outros encadeamentos. Simplesmente, abre-se um novo encadeamento e realiza-se as verificações.
