algoritmo "forca"

// Função : Jogo da forca
// Autor : Renan Leandro da Silva
// Data : 12/07/2022

// Seção de Declarações 
Var
// Seção de Declarações das variáveis
//Modo de Jogo 2
   palavra, letratent: caractere
   letras, letrasesc: vetor[1..20] de caractere
   tamletratent, selecj, esclhv, modojogo, cont1, cont2, cont3, cont4, tampalavra, erros, tentativas, acerto, acertos: inteiro
   //Modo de Jogo 1
   palavras, letras2, letrasesc2: vetor[1..20] de caracter
   tamletratent2, nmraleat, cont5, cont6, cont7, cont8, tampalavra2, erros2, tentativas2, acerto2, acertos2: inteiro
   palavra2, letratent2: caracter
   temas: vetor[1..11] de caracter

   //Dos dois
   letters: vetor[1..23] de caracter
   lettercont: inteiro
   acesso: inteiro
   bloqueio: inteiro
   letrastentadas: inteiro
   posicao: inteiro

Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

   esclhv <- 0
   selecj <- 0
   tampalavra <- 0
   modojogo <- 0


    //Modo jogo 1
    
   cont1 <- 1
   erros <- 0
   cont2 <- 1
   cont3 <- 1
   cont4 <- 1
   acerto <- 0
   nmraleat <- 0

    //Modo jogo 2
   cont5 <- 1
   cont6 <- 1
   cont7 <- 1
   cont8 <- 1
   erros2 <- 0
   acerto2 <- 0
   acertos2 <- 0

   timer(400)

   //BANNER JOGO
limpatela
      escreval("              ___________________________________________________ ")
      escreval("                           ########  ######## ##     ##             ")
      escreval("                           ##     ## ##       ###   ###             ")
      escreval("                           ##     ## ##       #### ####             ")
      escreval("                           ########  ######   ## ### ##             ")
      escreval("                           ##     ## ##       ##     ##             ")
      escreval("                           ##     ## ##       ##     ##             ")
      escreval("                           ########  ######## ##     ##             ")
      escreval("               ___________________________________________________ ")

      escreval("               ___________________________________________________ ")
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

      escreval("                ___________________________________________________ ")
      escreval("                    ########  #######  ########   ######     ###    ")
      escreval("                    ##       ##     ## ##     ## ##    ##   ## ##   ")
      escreval("                    ##       ##     ## ##     ## ##        ##   ##  ")
      escreval("                    ######   ##     ## ########  ##       ##     ## ")
      escreval("                    ##       ##     ## ##   ##   ##       ######### ")
      escreval("                    ##       ##     ## ##    ##  ##    ## ##     ## ")
      escreval("                    ##        #######  ##     ##  ######  ##     ## ")
      escreval("                ___________________________________________________ ")
      timer(0)
      limpatela
   escreval("")
   enquanto (selecj > 3) ou (selecj < 1)  faca
      escreval("              -----------------------------------------------------")
      escreval("              -------------------- Como Jogar ? -------------------")
      escreval("                                                     ")
      escreval("                     O jogo ira pegar uma palavra aleatórica.      ")
      escreval("                   Você tera uma dica, para te ajudar a acertar.   ")
      escreval("                 Tem apenas 5 chances de acerto, então não vacila !")
      escreval("                                                     ")
      escreval("              ---------------------1>  JOGAR  ---------------------")
      escreval("              ---------------------3>  SAIR   ---------------------")
      escreval("              -----------------------------------------------------")
      escreva(">>>>>>>>")
      leia (selecj)
   fimEnquanto
      se selecj = 3 entao
         fimalgoritmo
      fimSe
   //1 - Jogar
   se selecj = 1 entao
      modojogo <- 1
      limpatela
      //Banco de dados palavras
      
      se modojogo = 1 entao

            palavras[1] <- "peixes"
            palavras[2] <- "havaianas"
            palavras[3] <- "fenomeno"
            palavras[4] <- "fascinante"
            palavras[5] <- "gabinete"
            palavras[6] <- "hamburguer"
            palavras[7] <- "ideologia"
            palavras[8] <- "quadrilha"
            palavras[9] <- "vademecum"
            palavras[10] <- "javascript"
            palavras[11] <- "abacaxi"

            temas[1] <- "É que mais aparece no filme procurando nemo"
            temas[2] <- "Serve para bater, é muito usada no verão e so tem no brasil"
            temas[3] <- "Muitos jogadores de futebol são"
            temas[4] <- ""
            temas[5] <- "Peça Computador"
            temas[6] <- "Comida"
            temas[7] <- "Tipo de Ciência"
            temas[8] <- "Tipo de Bando"
            temas[9] <- "Livro"
            temas[10] <- "Programação"
            temas[11] <- "Fruta"

            nmraleat <- randi(11)

            se nmraleat = 0 entao
               enquanto nmraleat = 0 faca
                        nmraleat <- randi(11)
               fimEnquanto
            fimse

            palavra2 <- palavras[nmraleat]


            //Tamanho da Palavra
            tampalavra2 <- compr(palavra2)

            enquanto cont5 <= tampalavra2 faca
                     letrasesc2[cont5] <- "__ "
                     cont5 <- cont5 + 1
            fimEnquanto


            //Divisor de Letras
            enquanto cont6 <= tampalavra2 faca
                     letras2[cont6] <- copia(palavra2;cont6;1)
                     cont6 <- cont6 + 1
            fimenquanto


            enquanto erros2 <= 5 faca
                     acerto2 <- 0
                     lettercont <- 1
                     acesso <- 0
                     bloqueio <- 0
                     tamletratent2 <- 0

                     enquanto lettercont <= posicao faca
                              escreva(letters[lettercont], " ")
                              lettercont <- lettercont + 1
                     fimEnquanto

                     escreval("")

                     escreval("====================","            ", temas[nmraleat])
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
                           escreval("  ||             /   \")
                           escreval("  ||             \___/ ")
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
                              escreval("  ||             /   \")
                              escreval("  ||             \___/ ")
                              escreval("  ||              / ")
                              escreval("  ||             /  ")
                              escreval("  ||            /    ")
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
                                 escreval("  ||             /   \")
                                 escreval("  ||             \___/ ")
                                 escreval("  ||              /| ")
                                 escreval("  ||             / |  ")
                                 escreval("  ||            /  |")
                                 escreval("  ||               |")
                                 escreval("  ||               ")
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
                                    escreval("  ||             /   \")
                                    escreval("  ||             \___/ ")
                                    escreval("  ||              /|\")
                                    escreval("  ||             / | \")
                                    escreval("  ||            /  |  \")
                                    escreval("  ||               |")
                                    escreval("  ||                ")
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
                                       escreval("  ||             /   \")
                                       escreval("  ||             \___/ ")
                                       escreval("  ||              /|\")
                                       escreval("  ||             / | \")
                                       escreval("  ||            /  |  \")
                                       escreval("  ||               |   ")
                                       escreval("  ||               |    ")
                                       escreval("  ||              /     ")
                                       escreval("  ||             /      ")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("=====")
                                 fimse







                     //Espaços em Branco e da Palavra
                     enquanto cont7 <= tampalavra2 faca
                              escreva(letrasesc2[cont7], "  ")
                              cont7 <- cont7 + 1
                     fimEnquanto
                     escreval("")
                     escreva(">>>>>")
                     leia(letratent2)//Entrada de Letra

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
                     se acertos2 = tampalavra2 entao
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
                        escreval("")
                        escreval("")
                        escreval("")
                        escreval("")
                        escreval("    _|_                 _|_                   _|_            /                    _|_    ")
                        escreval("     |            _|_    |          _|_        |           / /             _|_     |  ")
                        escreval("         _|________|_________________|_____________________/______|____     | ")
                        escreval("    /   | BBB              OOOOO           OOOOO        M         M   |")
                        escreval("  / /   |BBBBBBB         OOOOOOOOO       OOOOOOOOO     MMM       MMM  |      ")
                        escreval("  /     |BB   BBBB      OOO     OOO     OOO     OOO   MMM M     M MMM |    ")
                        escreval("________|BB   BB       OOO       OOO   OOO       OOO  MMM  M   M  MMM |_________________   ")
                        escreval("        |BBBBBBBB     OOO         OOO OOO         OOO MMM   M M   MMM |            /    ")
                        escreval("        |BB    BBBB    OOO       OOO   OOO       OOO  MMM    M    MMM |  _|_     / /")
                        escreval("     /  |BB      BBB    OOO     OOO     OOO     OOO   MMM         MMM |   |      /       _|_  ")
                        escreval("   / /  |BBBBBBBBBB      OOOOOOOOO       OOOOOOOOO    MMM         MMM |                   | ")
                        escreval("   /    |_BBBBBB__________ OOOOO___________OOOOO______MMM_________MMM_|       _|_      ")
                        escreval("    _|_                     _|_        _|_                     _|_             |                   ")
                        ESCREval("     |           _|_         |          |          _|_          |               _|_           ")
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
                           timer(200)







                           escreval("              ________________________________________________________")
                           escreval("              .##.....##.########.##....##..######..########.##.....##")
                           escreval("              .##.....##.##.......###...##.##....##.##.......##.....##")
                           escreval("              .##.....##.##.......####..##.##.......##.......##.....##")
                           escreval("              .##.....##.######...##.##.##.##.......######...##.....##")
                           escreval("              ..##...##..##.......##..####.##.......##.......##.....##")
                           escreval("              ...##.##...##.......##...###.##....##.##.......##.....##")
                           escreval("              ....###....########.##....##..######..########..#######.")
                           escreval("              ________________________________________________________")

                        cont7 <- 1
                              escreva(" A palavra era")
                        enquanto cont7 <= tampalavra2 faca
                           escreva(letrasesc2[cont7], "  ")
                           cont7 <- cont7+1
                        fimEnquanto

                        escreval (" ")
                        escreval ("Numero de erros >>> ", erros2)
                        fimAlgoritmo
                     fimse

                     //Fim de Jogo DERROTA
                     se erros2 = 5 entao
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
                           escreval("  ||             /   \")
                           escreval("  ||             \___/ ")
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
                              escreval("  ||             /   \")
                              escreval("  ||             \___/ ")
                              escreval("  ||              / ")
                              escreval("  ||             /  ")
                              escreval("  ||            /    ")
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
                                 escreval("  ||             /   \")
                                 escreval("  ||             \___/ ")
                                 escreval("  ||              /| ")
                                 escreval("  ||             / |  ")
                                 escreval("  ||            /  |")
                                 escreval("  ||               |")
                                 escreval("  ||               ")
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
                                    escreval("  ||             /   \")
                                    escreval("  ||             \___/ ")
                                    escreval("  ||              /|\")
                                    escreval("  ||             / | \")
                                    escreval("  ||            /  |  \")
                                    escreval("  ||               |")
                                    escreval("  ||                ")
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
                                       escreval("  ||             /   \")
                                       escreval("  ||             \___/ ")
                                       escreval("  ||              /|\")
                                       escreval("  ||             / | \")
                                       escreval("  ||            /  |  \")
                                       escreval("  ||               |   ")
                                       escreval("  ||               |    ")
                                       escreval("  ||              / \")
                                       escreval("  ||             /   \")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("  || ")
                                       escreval("=====")
                                 fimse
                        escreval("|    ")
                        escreval("|    ")
                        escreval("|    ")

                        escreval ("Sua quantidade de Erros é ", erros2 )


                        fimAlgoritmo

                     fimSe

                     cont7 <- 1
                     cont8 <- 1

                     limpatela

            fimEnquanto
      fimSe
fimse
Fimalgoritmo


