Algoritmo "jogodaforca"


Var


   palavra, letratent,dicafrase: caractere
   letras, letrasesc: vetor[1..20] de caractere
   tamletratent, selecj, esclhv, modojogo, cont1, cont2, cont3, cont4, tampalavra, erros, tentativas, acerto, acertos: inteiro



   palavras, letras2, letrasesc2: vetor[1..20] de caracter
   tamletratent2, nmraleat, cont5, cont6, cont7, cont8, tampalavra2, erros2, tentativas2, acerto2, acertos2: inteiro
   palavra2, letratent2: caracter
   temas: vetor[1..11] de caracter



   letters: vetor[1..23] de caracter
   lettercont: inteiro
   acesso: inteiro
   bloqueio: inteiro
   letrastentadas: inteiro
   posicao: inteiro

Inicio

   esclhv <- 0
   selecj <- 0
   tampalavra <- 0
   modojogo <- 0


   cont1 <- 1
   erros <- 0
   cont2 <- 1
   cont3 <- 1
   cont4 <- 1
   acerto <- 0
   nmraleat <- 0


   cont5 <- 1
   cont6 <- 1
   cont7 <- 1
   cont8 <- 1
   erros2 <- 0
   acerto2 <- 0
   acertos2 <- 0

   
   timer(400)
   timer(0)
   escreval("")
   timer(400)
   limpatela
      escreval("  ___________________________________________________ ")
      escreval("             ########  ######## ##     ##             ")
      escreval("             ##     ## ##       ###   ###             ")
      escreval("             ##     ## ##       #### ####             ")
      escreval("             ########  ######   ## ### ##             ")
      escreval("             ##     ## ##       ##     ##             ")
      escreval("             ##     ## ##       ##     ##             ")
      escreval("             ########  ######## ##     ##             ")
      escreval("  ___________________________________________________ ")
      timer(400)
      escreval("  ___________________________________________________ ")
      escreval("      ##     ## #### ##    ## ########   #######      ")
      escreval("      ##     ##  ##  ###   ## ##     ## ##     ##     ")
      escreval("      ##     ##  ##  ####  ## ##     ## ##     ##     ")
      escreval("      ##     ##  ##  ## ## ## ##     ## ##     ##     ")
      escreval("       ##   ##   ##  ##  #### ##     ## ##     ##     ")
      escreval("        ## ##    ##  ##   ### ##     ## ##     ##     ")
      escreval("         ###    #### ##    ## ########   #######      ")
      escreval("  ___________________________________________________ ")
      timer(400)
      escreval("  ___________________________________________________ ")
      escreval("                        ###                           ")
      escreval("                       ## ##                          ")
      escreval("                      ##   ##                         ")
      escreval("                     ##     ##                        ")
      escreval("                     #########                        ")
      escreval("                     ##     ##                        ")
      escreval("                     ##     ##                        ")
      escreval("  ___________________________________________________ ")
      timer(400)
      escreval("  ___________________________________________________ ")
      escreval("      ########  #######  ########   ######     ###    ")
      escreval("      ##       ##     ## ##     ## ##    ##   ## ##   ")
      escreval("      ##       ##     ## ##     ## ##        ##   ##  ")
      escreval("      ######   ##     ## ########  ##       ##     ## ")
      escreval("      ##       ##     ## ##   ##   ##       ######### ")
      escreval("      ##       ##     ## ##    ##  ##    ## ##     ## ")
      escreval("      ##        #######  ##     ##  ######  ##     ## ")
      escreval("  ___________________________________________________ ")
      timer(0)
      limpatela
   enquanto (selecj > 3) ou (selecj < 1)  faca
      escreval(" --------------------1>  JOGAR  ---------------------")
      escreval(" --------------------2>Como Jogar--------------------")
      escreval(" --------------------3>  SAIR   ---------------------")
      escreva(">>>>>>>>")
      leia (selecj)
   fimEnquanto
   
   //2 - Como Jogar
   se selecj = 2 entao
      limpatela
      enquanto esclhv <> 1 faca
         escreval("Primeiro voce ira digitar a palavra que as pessoas terão que adivinhar")
         escreval("Em seguida digite uma frase, que de alguma dica, mas não MUITA dica")
         escreva(">>>>>")
         escreval("1-VOLTAR AO MENU")
         escreva(">>>>>")
         leia(esclhv)
        	se (esclhv <> 1)entao
            escreval("OPCAO ERRADA, DIGITE 1")
         fimse
         limpatela
         
      fimenquanto
              limpatela
              timer(0)
              escreval("")
              enquanto (selecj <> 1) e (selecj <> 3) faca
               	escreval(" --------------------1>  JOGAR  ---------------------")
               	escreval(" --------------------3>  SAIR   ---------------------")
               	escreva(">>>>>>>>")
               	leia (selecj)
               	se (selecj <> 1) e (selecj <> 3) entao
                     escreval("OPCAO ERRADA, DIGITE 1 ou 3")
                  fimse
            fimEnquanto
            
   fimse
   
   se selecj = 3 entao
         fimalgoritmo
   fimSe
   
   //1 - Jogar
   se selecj = 1 entao
      limpatela
      //Modos de Jogo
      

      se selecj = 1 entao
            limpatela
            escreval("Digite a Palavra")
            escreva(">>>>>")
            leia(palavra)
            escreval("Digite uma Frase que de alguma dica")
            leia(dicafrase)
            limpatela
            timer(900)
            escreval("__________________________________________")
            escreval("                                          ")
            escreval("    VOCE TERA SOMENTE 5 TENTATIVAS        ")
            escreval("            ENTAO NAO VACILA              ")
            escreval("__________________________________________")
            timer(0)
            limpatela

            
            
            //Tamanho da Palavra
            tampalavra <- compr(palavra)
            
            enquanto cont4 <= tampalavra faca
                     letrasesc[cont4] <- "__ "
                     cont4 <- cont4 + 1
            fimEnquanto
            
            
            
            

            //Divisor de Letras
            enquanto cont1 <= tampalavra faca
                     letras[cont1] <- copia(palavra;cont1;1)
                     cont1 <- cont1 + 1
            fimenquanto
            
            
            

            //Forca
            enquanto erros <= 5 faca
                     acerto <- 0
                     lettercont <- 1
                     acesso <- 0
                     bloqueio <- 0
                     tamletratent <- 0
                     
                     enquanto lettercont <= posicao faca
                              escreva(letters[lettercont], " ")
                              lettercont <- lettercont + 1
                     fimEnquanto

                     escreval(dicafrase)
                     escreval("+---+")
                     escreval("|   |")
                     escreval("|   ")
                     se erros = 1 entao
                        escreval("|   O")
                        fimse
                           se erros = 2 entao
                           escreval("|   O")
                           escreval("|  /|\")
                           fimse
                              se erros = 3 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              escreval("|   |")
                              fimse
                                 se erros = 4 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 escreval("|   |")
                                 fimse
                                    se erros = 5 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    escreval("|  /\")
                                    fimse

                     escreval("|    ")
                     escreval("|    ")
                     escreval("|    ")



                     //Espaços em Branco e da Palavra
                     enquanto cont2 <= tampalavra faca
                              escreva(letrasesc[cont2], "  ")
                              cont2 <- cont2+1
                     fimEnquanto
                     escreval("")
                     escreva(">>>>>")
                     leia(letratent)//Entrada de Letra
                     
                     tamletratent <- compr(letratent)
                     
                     
                     //Verificador de Letras para Imprimir
                     lettercont <- 1
                     enquanto lettercont <= 23 faca
                              se letratent = letters[lettercont] entao
                                 bloqueio <- 1
                                 senao
                                      acesso <- 1
                              fimSe
                              lettercont <- lettercont + 1
                     fimEnquanto

                     se (acesso = 1) e (bloqueio <> 1) entao
                        posicao <- posicao + 1
                        letters[posicao] <- letratent
                     fimse
                     
                     
                     //Verificador de Letras
                     enquanto cont3 <= tampalavra faca
                              se letratent = letras[cont3] entao
                                 acerto <- acerto + 1
                                 letrasesc[cont3] <- letratent
                              fimse
                              cont3 <- cont3 + 1
                     fimenquanto
                     
                     //Verificador se a Pessoa Acertou
                     se (acerto <> 0) e (bloqueio <> 1) entao
                        acertos <- acertos + acerto
                     fimse
                     
                     

                     //Verificador se a Pessoa Errou
                     se (acerto = 0) e (tamletratent = 1) entao
                        erros <- erros + 1
                     fimse
                     
                     
                     //Fim de Jogo VITORIA
                     se acertos = tampalavra entao
                        limpatela
                        timer(200)
                           escreval("__________________________________________")
                           escreval("                                          ")
                           escreval("`7MMF'     A     `7MF'`7MMF'`7MN.   `7MF' ")
                           escreval("  `MA     ,MA     ,V    MM    MMN.    M   ")
                           escreval("   VM:   ,VVM:   ,V     MM    M YMb   M   ")
                           escreval("    MM.  M' MM.  M'     MM    M  `MN. M   ")
                           escreval("    `MM A'  `MM A'      MM    M   `MM.M   ")
                           escreval("     :MM;    :MM;       MM    M     YMM   ")
                           escreval("      VF      VF      .JMML..JML.    YM   ")
                           escreval("                                          ")
                           escreval("_______  PARABENS, GANHOU O JOGO _________")

                        cont2 <- 1
                        
                        enquanto cont2 <= tampalavra faca
                           escreva(letrasesc[cont2], "  ")
                           cont2 <- cont2+1
                        fimEnquanto
                        escreval ("")
                        escreval ("Numero de erros >>> ", erros)
                        fimAlgoritmo
                     fimse
                     
                     //Fim de Jogo DERROTA
                     se erros = 5 entao
                        limpatela
                        timer(200)
                        escreval("__________________________________________________________")
                        escreval("                            	                             ")
                        escreval("##     ##  #######  ########  ########  ######## ##     ##")
                        escreval("###   ### ##     ## ##     ## ##     ## ##       ##     ##")
                        escreval("#### #### ##     ## ##     ## ##     ## ##       ##     ##")
                        escreval("## ### ## ##     ## ########  ########  ######   ##     ##")
                        escreval("##     ## ##     ## ##   ##   ##   ##   ##       ##     ##")
               			escreval("##     ## ##     ## ##    ##  ##    ##  ##       ##     ##")
               			escreval("##     ##  #######  ##     ## ##     ## ########  ####### ")
                        escreval("__________________________________________________________")

                        escreval("+---+")
                        escreval("|   |")
                        escreval("|   ")
                        se erros = 1 entao
                           escreval("|   O")
                           fimse
                              se erros = 2 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              fimse
                                 se erros = 3 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 fimse
                                    se erros = 4 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    fimse
                                       se erros = 5 entao
                                       escreval("|   O")
                                       escreval("|  /|\")
                                       escreval("|   |")
                                       escreval("|   |")
                                       escreval("|   /\")
                                       fimse

                        escreval("|    ")
                        escreval("|    ")
                        escreval("|    ")
                        escreval ("Sua quantidade de Erros é ", erros)
                        fimAlgoritmo
                        
                     fimSe
                     
                     cont2 <- 1
                     cont3 <- 1

                     limpatela

            fimEnquanto
      fimSe
Fimalgoritmo
