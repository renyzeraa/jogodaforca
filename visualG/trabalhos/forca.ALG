algoritmo "forca"

// Funcao : Jogo da forca

// Autor : Renan Leandro da Silva

// Data : 12/07/2022

Var

// Sessao de Declaracoes das variavieis

   selecj: inteiro // selecao menu
   temadojogo: inteiro // selecionar tema do jogo
   k,i: inteiro // variaveis de controle
   escolhadotema, menudojogo: logico // verificadores logicos do menu usando enquanto 	
   temas: vetor[1..5] de caracter // vetor dos temas
   palavras: vetor[1..5] de caracter // vetor das palavras
   letras2, letrasesc2: vetor[1..20] de caracter // vetores para espaços e underline das letras 
   tamletratent2: inteiro // usado para colocar a letra da tentativa no lugar certo
   nmraleat: inteiro // numero que sera usado nos vetores para pegar a dica e a palavra
   cont5, cont6, cont7, cont8: inteiro // contadores
   tampalavra2: inteiro // lenght (quantidade de caracteres)
   erros2,  acerto2, acertos2: inteiro // contadores de erros e acertos
   palavra2, letratent2: caracter // palavra da forca e letras da tentativa
   letters: vetor[1..23] de caracter // vetor para imprimir letras usadas no jogo (letters é letras em ingles)
   lettercont: inteiro // contador do vetor de letras
   acesso, bloqueio: inteiro // verificadores dos se's quando digitado a letra
   posicao: inteiro // contador da posicao vetor usado para colocar a letra no lugar

Inicio

   nmraleat <- erros2 <- acerto2 <- acertos2 <- 0
   cont5 <- 1
   cont6 <- 1
   cont7 <- 1
   cont8 <- 1
   
   //BANNER JOGO
    timer(100)
    limpatela
      escreval("              ____________________________________________________ ")
      escreval("                           ########  ######## ##     ##             ")
      escreval("                           ##     ## ##       ###   ###             ")
      escreval("                           ##     ## ##       #### ####             ")
      escreval("                           ########  ######   ## ### ##             ")
      escreval("                           ##     ## ##       ##     ##             ")
      escreval("                           ##     ## ##       ##     ##             ")
      escreval("                           ########  ######## ##     ##             ")
      escreval("               ___________________________________________________ ")
      escreval("               ____________________________________________________ ")
      escreval("                    ##     ## #### ##    ## ########   #######      ")
      escreval("                    ##     ##  ##  ###   ## ##     ## ##     ##     ")
      escreval("                    ##     ##  ##  ####  ## ##     ## ##     ##     ")
      escreval("                    ##     ##  ##  ## ## ## ##     ## ##     ##     ")
      escreval("                     ##   ##   ##  ##  #### ##     ## ##     ##     ")
      escreval("                      ## ##    ##  ##   ### ##     ## ##     ##     ")
      escreval("                       ###    #### ##    ## ########   #######      ")
      escreval("                ___________________________________________________ ")
      escreval("                ___________________________________________________ ")
      escreval("                                      ###                           ")
      escreval("                                     ## ##                          ")
      escreval("                                    ##   ##                         ")
      escreval("                                   ##     ##                        ")
      escreval("                                   #########                        ")
      escreval("                                   ##     ##                        ")
      escreval("                                   ##     ##                        ")
      escreval("                ___________________________________________________ ")
      escreval("                ____________________________________________________")
      escreval("                    ########  #######  ########   ######     ###    ")
      escreval("                    ##       ##     ## ##     ## ##    ##   ## ##   ")
      escreval("                    ##       ##     ## ##     ## ##        ##   ##  ")
      escreval("                    ######   ##     ## ########  ##       ##     ## ")
      escreval("                    ##       ##     ## ##   ##   ##       ######### ")
      escreval("                    ##       ##     ## ##    ##  ##    ## ##     ## ")
      escreval("                    ##        #######  ##     ##  ######  ##     ## ")
      escreval("                ____________________________________________________")
      timer(0)
   limpatela
   escreval("")
   menudojogo <- falso
   i<- 0
         enquanto nao(menudojogo) faca
            se (i = 0) entao
               i <- 1
               escreval("--------------------------------------------------------------------------------------")
               escreval("------------------------------------ Como Jogar ? ------------------------------------")
               escreval("       Apertando 1, voce ira escolher um tema para a palavra da forca. Ira gerar uma ")
               escreval("     palavra e uma dica para ela. No jogo, tome cuidado para nao repetir a mesma letra,")
               escreval("    pois tera um local onde mostrara quais letras voce ja digitou. Tera uma frase com a")
               escreval("              dica da palavra, tambem monstrando quantos erros voce tem.              ")
               escreval("                 Tera apenas 6 chances de acertos, entao nao vacila!                   ")
               escreval("------------------------------------ 1>  JOGAR  --------------------------------------")
               escreval("---------------------------------- 2>  SAIR DO JOGO ----------------------------------")
               escreval("--------------------------------------------------------------------------------------")
               escreva(">>>>>>>>")
               leia (selecj)
            fimse
            se (selecj = 1) ou (selecj = 2)entao // verificador
               menudojogo <- verdadeiro
            senao
               limpatela
               escreval("              ------------------- MODO INVALIDO ! -----------------")
               escreval("              -----------------------------------------------------")
               escreval("              --------------------1>  JOGAR  ----------------------")
               escreval("              -----------------2>  SAIR DO JOGO  ------------------")
               escreval("              -----------------------------------------------------")
               escreva(">>>>>>>>")
               leia (selecj)
            fimse
         fimEnquanto

         // fechar o jogo
            se selecj = 2 entao
               fimalgoritmo
            fimSe

         //1 - Jogar
         se selecj = 1 entao
            limpatela

            escolhadotema <- falso
            k<-0
            enquanto nao(escolhadotema) faca
               se k = 0 entao
                  escreval("              -----------------------------------------------------")
                  escreval("              ------------------- Escolha um tema -----------------")
                  escreval("                                                                   ")
                  escreval("                 1- Corrida, 2- Computador, 3- Comidas 4- Futebol  ")
                  escreval("                                                                   ")
                  escreval("                   Voce tera uma dica, para te ajudar a acertar.   ")
                  escreval("                                                                   ")
                  escreval("              -----------------------------------------------------")
                  escreva(">>>>>>>>")
                  leia(temadojogo)
                  k<-1
               fimse
               se (temadojogo = 1) ou (temadojogo = 2)ou (temadojogo = 3) ou (temadojogo = 4) entao // verificador
                  timer(200)
                  escreval("              -----------------------------------------------------")
                  escreval("              --------------------- Bom jogo ! --------------------")
                  escreval("              -----------------------------------------------------")
                  escolhadotema <- verdadeiro
                  timer(0)
               senao
                  limpatela
                  escreval("              ------------------ MODO INVALIDO ! -----------------")
                  escreval("                 1- Corrida, 2- Computador, 3- Comidas 4- Futebol ")
                  escreval("              ----------------------------------------------------")
                  escreval("              >>>>>>>>")
                  leia(temadojogo)
               fimse
            fimenquanto
            limpatela

            //Banco de dados das palavras

            se temadojogo = 1 entao // corrida

                  palavras[1] <- "senna"
                  palavras[2] <- "pneus"
                  palavras[3] <- "capacete"
                  palavras[4] <- "velocidade"
                  palavras[5] <- "circuito"

                  temas[1] <- "O melhor piloto brasileiro que ja existiu, nao esta mais vivo."
                  temas[2] <- "Para o carro andar ele precisa de ?..."
                  temas[3] <- "Equipamento de seguranca que sem ele, muitas pessoas poderiam ter morrido."
                  temas[4] <- "Todo piloto de corrida, quando esta pilotando gosta de ?..."
                  temas[5] <- "Para correr com um formula 1, precisa estar em um ?...."

            fimse
               se temadojogo = 2 entao  // computador

                     palavras[1] <- "servidor"
                     palavras[2] <- "fone"
                     palavras[3] <- "bateria"
                     palavras[4] <- "energia"
                     palavras[5] <- "rgb"

                     temas[1] <- "Muitas empresas tem, e fica escondido"
                     temas[2] <- "Todo jogador de e-sports tem um ?..."
                     temas[3] <- "Para conseguir ligar um notebook, precisa de ?..."
                     temas[4] <- "Para conseguir ligar um desktop, precisa de ?..."
                     temas[5] <- "Hoje em dia e visto como sinonimo de desempenho nos pc's."

               fimse
               se temadojogo = 3 entao  // comida

                     palavras[1] <- "pizza"
                     palavras[2] <- "maionese"
                     palavras[3] <- "espinafre"
                     palavras[4] <- "queijo"
                     palavras[5] <- "laranja"

                     temas[1] <- "Existe um grafico que tem o mesmo nome de uma comida"
                     temas[2] <- "Todo lanche fica melhor com uma..."
                     temas[3] <- "O popeye come para ganhar forca"
                     temas[4] <- "Famoso em minas"
                     temas[5] <- "O mesmo nome pode ser uma cor e uma fruta"

               fimse
                    se temadojogo = 4 entao // futebol

                        palavras[1] <- "brasil"
                        palavras[2] <- "talento"
                        palavras[3] <- "treinador"
                        palavras[4] <- "arbitro"
                        palavras[5] <- "chuteira"

                        temas[1] <- "Time que foi campeao do mundo cinco vezes."
                        temas[2] <- "Todo jogador no auge tem..."
                        temas[3] <- "Todo time tem um..."
                        temas[4] <- "Todo jogador odeia o..."
                        temas[5] <- "Todo jogador usa..."

                   fimse


              // gerar numero aleatorico para dica e palavra, conforme tema escolhido

               nmraleat <- randi(5)

               // verificador para nao ser igual a zero

               se nmraleat = 0 entao
                  enquanto nmraleat = 0 faca
                           nmraleat <- randi(5)
                  fimEnquanto
               fimse

               //colocar a palavra em uma variavel

               palavra2 <- palavras[nmraleat]


               //Tamanho da Palavra

               tampalavra2 <- compr(palavra2)

               //Para cada letra ira imprimir um espacos, conforme tamanho da palavra

               enquanto cont5 <= tampalavra2 faca
                        letrasesc2[cont5] <- "__ "
                        cont5 <- cont5 + 1
               fimEnquanto

               //Divisor de letras

               enquanto cont6 <= tampalavra2 faca
                        letras2[cont6] <- copia(palavra2;cont6;1)
                        cont6 <- cont6 + 1
               fimenquanto

               //Gerando a forca
               enquanto erros2 <= 6 faca
                        acerto2 <- 0
                        lettercont <- 1
                        acesso <- 0
                        bloqueio <- 0
                        tamletratent2 <- 0
                        //Imprimir cada letra digitada, sem repetir a mesma
                        escreva("LETRAS JA DIGITADAS: ")
                        enquanto lettercont <= posicao faca
                                 escreva(letters[lettercont], " ")
                                 lettercont <- lettercont + 1
                        fimEnquanto
                        escreval("")
                        escreval("===========================================")
                        escreval("DICA: ", temas[nmraleat])
                        escreval("================ Numero de erros >>> ", erros2)
                        se erros2 = 0 entao
                           escreval("====================")
                           escreval("  ||               #")
                           escreval("  ||               #")
                           escreval("  ||               #")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("  || ")
                           escreval("=====")
                         fimse
                           se erros2 = 1 entao
                              escreval("====================")
                              escreval("  ||               #")
                              escreval("  ||               #")
                              escreval("  ||              _#_")
                              escreval("  ||             (X_X) ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("  || ")
                              escreval("=====")
                           fimse
                              se erros2 = 2 entao
                                 escreval("====================")
                                 escreval("  ||               #")
                                 escreval("  ||               #")
                                 escreval("  ||              _#_")
                                 escreval("  ||             (X_X) ")
                                 escreval("  ||               |   ")
                                 escreval("  ||               |  ")
                                 escreval("  ||               |  ")
                                 escreval("  ||                ")
                                 escreval("  ||                ")
                                 escreval("  || ")
                                 escreval("  || ")
                                 escreval("  || ")
                                 escreval("=====")

                              fimse
                                 se erros2 = 3 entao
                                    escreval("====================")
                                    escreval("  ||               #")
                                    escreval("  ||               #")
                                    escreval("  ||              _#_")
                                    escreval("  ||             (X_X) ")
                                    escreval("  ||               |   ")
                                    escreval("  ||              /|  ")
                                    escreval("  ||             / |  ")
                                    escreval("  ||                ")
                                    escreval("  ||                ")
                                    escreval("  || ")
                                    escreval("  || ")
                                    escreval("  || ")
                                    escreval("=====")
                                 fimse
                                    se erros2 = 4 entao
                                       escreval("====================")
                                       escreval("  ||               #")
                                       escreval("  ||               #")
                                       escreval("  ||              _#_")
                                       escreval("  ||             (X_X)")
                                       escreval("  ||               |  ")
                                       escreval("  ||              /|\ ")
                                       escreval("  ||             / | \")
                                       escreval("  ||                 ")
                                       escreval("  ||                 ")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("=====")
                                    fimse
                                       se erros2 = 5 entao
                                          escreval("====================")
                                          escreval("  ||               #")
                                          escreval("  ||               #")
                                          escreval("  ||              _#_")
                                          escreval("  ||             (X_X) ")
                                          escreval("  ||               |   ")
                                          escreval("  ||              /|\  ")
                                          escreval("  ||             / | \ ")
                                          escreval("  ||              /  ")
                                          escreval("  ||             /   ")
                                          escreval("  || ")
                                          escreval("  || ")
                                          escreval("  || ")
                                          escreval("=====")
                                       fimse
                                            se erros2 = 6 entao // forca final, derrota
                                                escreval("====================")
                                                escreval("  ||               #")
                                                escreval("  ||               #")
                                                escreval("  ||              _#_")
                                                escreval("  ||             (X_X) ")
                                                escreval("  ||               |   ")
                                                escreval("  ||              /|\  ")
                                                escreval("  ||             / | \ ")
                                                escreval("  ||              / \ ")
                                                escreval("  ||             /   \")
                                                escreval("  || ")
                                                escreval("  || ")
                                                escreval("  || ")
                                                escreval("=====")
                                            fimse

                        //Colocar os espacos entre o tamanho da palavra

                        enquanto cont7 <= tampalavra2 faca
                                 escreva(letrasesc2[cont7], "  ")
                                 cont7 <- cont7 + 1
                        fimEnquanto
                        escreval("")

                        //Entrada de Letra

                        escreva(">>>>>")
                        leia(letratent2)

                        tamletratent2 <- compr(letratent2)

                        //Verificador de Letras para Imprimir

                        lettercont <- 1
                        enquanto lettercont <= 23 faca
                                 se letratent2 = letters[lettercont] entao
                                    bloqueio <- 1
                                 senao
                                    acesso <- 1
                                 fimSe
                                 lettercont <- lettercont + 1
                        fimEnquanto

                        // se tiver certo ira colocar na sua posicao

                        se (acesso = 1) e (bloqueio <> 1) entao
                           posicao <- posicao + 1
                           letters[posicao] <- letratent2
                        fimse

                        //Verificador de Letras

                        enquanto cont8 <= tampalavra2 faca
                                 se letratent2 = letras2[cont8] entao
                                    acerto2 <- acerto2 + 1
                                    letrasesc2[cont8] <- letratent2
                                 fimse
                                 cont8 <- cont8 + 1
                        fimenquanto

                        //Verificador se a Pessoa Acertou

                        se (acerto2 <> 0) e (bloqueio <> 1) entao
                           acertos2 <- acertos2 + acerto2
                        fimse


                        //Verificador se a Pessoa Errou

                        se (acerto2 = 0) e (tamletratent2 = 1) entao
                           erros2 <- erros2 + 1
                        fimse

                        //Fim de Jogo VITORIA

                        se acertos2 = tampalavra2 entao  // animacao em ascii
                           limpatela
                           timer 150 on
                           timer 0 off                                                                            ")
                           limpatela
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("__ _ ___ ____ ______ ______ _____ __ _ __ _ _ _ _  _     __ _ _ ___    ___")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")

                           timer 500
                           escreval("                                                                                 ")
                           limpatela
                           timer 0
                           escreval("                  |                                 |                            |          ")
                           timer 350
                           escreval("                                                                                 ")
                           limpatela
                           timer 0
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("")
                           escreval("                                 _|_                   _|_            /                        ")
                           escreval("   _|_    \                _|_    |          _|_        |           / /             _|_      ")
                           escreval("    |     \ \     _|_       |                 |                     /     _|_        | ")
                           escreval("            \      |                                                       |       ")
                           escreval("                                                                                  ")
                           escreval("                                       _|_                   _|_                       ")
                           escreval("                                        |                     |                 ")
                           escreval("                  _|_              _|_                                            _|_   ")
                           escreval("                   |                |                 _|_        \      _|_        |      ")
                           escreval("     /                                                 |         \  \    |             _|_      ")
                           escreval("   /  /    _|_              _|_             _|_                    \                    |   ")
                           escreval("   /        |                |    _|_        |               _|_           ")
                           escreval("                                   |                          |              ")
                              timer 700 on
                              escreval ("")
                              timer 250
                              escreval ("")
                              limpatela
                              escreval("")
                              escreval("              ________________________________________________________")
                              escreval("               ##     ## ######## ##    ##  ######  ######## ##     ##")
                              escreval("               ##     ## ##       ###   ## ##    ## ##       ##     ##")
                              escreval("               ##     ## ##       ####  ## ##       ##       ##     ##")
                              escreval("               ##     ## ######   ## ## ## ##       ######   ##     ##")
                              escreval("                ##   ##  ##       ##  #### ##       ##       ##     ##")
                              escreval("                 ## ##   ##       ##   ### ##    ## ##       ##     ##")
                              escreval("                  ###    ######## ##    ##  ######  ########  ####### ")
                              escreval("              ________________________________________________________")
                           cont7 <- 1
                                 escreval("")
                                 escreval("")
                                 escreva("                 A palavra era => ")
                           enquanto cont7 <= tampalavra2 faca
                              escreva(letrasesc2[cont7], "  ")
                              cont7 <- cont7+1
                           fimEnquanto

                           escreval (" ")
                           escreval ("                Numero de erros >>> ", erros2)
                           timer 0 off
                           fimAlgoritmo
                        fimse

                        //Fim de Jogo DERROTA

                        se erros2 = 6 entao
                           limpatela
                           timer(200)
                             timer(200)
                           escreval("                __________________________________________________________")
                           escreval("                            	                             ")
                           escreval("                ##     ##  #######  ########  ########  ######## ##     ##")
                           escreval("                ###   ### ##     ## ##     ## ##     ## ##       ##     ##")
                           escreval("                #### #### ##     ## ##     ## ##     ## ##       ##     ##")
                           escreval("                ## ### ## ##     ## ########  ########  ######   ##     ##")
                           escreval("                ##     ## ##     ## ##   ##   ##   ##   ##       ##     ##")
                  			escreval("                ##     ## ##     ## ##    ##  ##    ##  ##       ##     ##")
                  			escreval("                ##     ##  #######  ##     ## ##     ## ########  ####### ")
                           escreval("                __________________________________________________________")
                           se erros2 = 6 entao
                                 escreval (" ")
                                 escreval (" ")
                                 escreval("                ====================")
                                 escreval("                  ||               #")
                                 escreval("                  ||               #")
                                 escreval("                  ||              _#_")
                                 escreval("                  ||             (X_X) ")
                                 escreval("                  ||               |   ")
                                 escreval("                  ||              /|\  ")
                                 escreval("                  ||             / | \ ")
                                 escreval("                  ||              / \  ")
                                 escreval("                  ||             /   \")
                                 escreval("                  || ")
                                 escreval("                  || ")
                                 escreval("                  ||     TENTE NOVAMENTE !")
                                 escreval("                =====")
                           fimse
                                 cont7 <- 1
                                 escreval("")
                                 escreval("")
                                 escreval("                 A palavra era => ", palavras[nmraleat])
                                 escreval("                 Tente novamente ")
                                 escreval("")

                                escreval ("                Sua quantidade de Erros: ", erros2 )
                                fimAlgoritmo
                        fimSe
                        cont7 <- 1
                        cont8 <- 1
                        limpatela
               fimEnquanto
         fimSe
   fimse
Fimalgoritmo
