
#######################################################################################
                                                                                        
Projeto criado por Caio Miritz Raphaelli;                                               
Exercício proposto pela Ada como finalização do terceiro módulo do curso #BeTheNext     
Professor: Michael Tadeu                                                                
Banco de dados SQL                                                                      

#######################################################################################

#DESCRIÇÃO DO PROJETO

O projeto foi inspirado no funcionamento ( por mais que seja simplista e resumido ) de uma fazenda, com um sistema integrado de validação de 
plantio e colheita de diversas plantas.

Primeiramente, o centro de tudo é a própria fazenda, com seu respectivo ID e nome. As características gerais delas são a quantidade de água
por dia que ela precisa, o ph do solo e se é ncessario veneno ou não.

Partindo disto, temos a necessidade de um agricultor que participa do plantio e da colheita nessa fazenda. Seguido de um ID, nome e idade, o 
agricultor tem uma área específica para trabalhar.

Em relação ao plantio, ela tem relação direta com a planta, fazenda e agricultor, com data e quantidade de semestes que foram plantadas.


Queries usadas:

--> As queries foram separadas no CRUD do projeto, encontrando-as nas sessões Create, Read, Update e Delete

--> No Create, temos os scripts de criação de todas as tabelas, seguidas do insert dos dados de cada um delas

--> No Read, temos os scripts de vizualição da tabela e do sistema, variando desde a vizualização inteira de uma determinada tabela até
filtros usando WHERE e funções agregadas para vizualição expecífica de algum ponto

--> No Update, temos algumas opções de mudança em algumas colunas de tabelas, ou a adição nas mesmas. 

--> Por fim, no Delete temos o delete de alguma tabela ou coluna específica.

#OBSERVAÇÕES

Não consegui realizar o que eu estava pretendendo. Não conswgui likar, ou mesmo dar insert nas tabelas com chave estrangeira. Tive que setar tudo para NULL para poder 
colocar os dados. Infelizemente não há update, justamente porque não consegui usar as chaves estrangeiras. Ainda tenho muita dificuldade nisso.
