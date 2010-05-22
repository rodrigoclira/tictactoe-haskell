module Mensagens where

-- T�tulo da janela
tituloJanela :: String
tituloJanela = "hs#"

-- Textos do Menu

-- Jogo
menuJogo :: String
menuJogo = "&Jogo"

menuNovoJogoCPU :: String
menuNovoJogoCPU = "Novo jogo - contra CPU"
ajudaNovoJogoCPU :: String
ajudaNovoJogoCPU = "Inicia um novo jogo contra a CPU"

menuNovoJogo2P :: String
menuNovoJogo2P = "Novo jogo - 2 jogadores"
ajudaNovoJogo2P :: String
ajudaNovoJogo2P = "Inicia um novo jogo para 2 jogadores"

menuFecha :: String
menuFecha = "Encerrar partida"
ajudaFecha :: String
ajudaFecha = "Encerra a partida atual"

menuSair :: String
menuSair = "Sair"
ajudaSair :: String
ajudaSair = "Sai do hs#"

-- Op��es
menuOpcoes :: String
menuOpcoes = "&Op\231\245es"

menuAvisar :: String
menuAvisar = "Avisar jogada inv\225lida"
ajudaAvisar :: String
ajudaAvisar = "Exibi\231\227o de uma mensagem quando a jogada for inv\225lida"

menuSkins :: String
menuSkins = "Selecionar skin"

menuSkin1 :: String
menuSkin1 = "1. Padr\227o"

menuSkin2 :: String
menuSkin2 = "2. L\227 Vermelha"

menuSkin3 :: String
menuSkin3 = "3. PacMan"

-- Ajuda
menuAjuda :: String
menuAjuda = "&Ajuda"

menuRegras :: String
menuRegras = "Regras do Jogo"
ajudaRegras :: String
ajudaRegras = "Mostra as regras do jogo"

menuSobre :: String
menuSobre = "Sobre..."
ajudaSobre :: String
ajudaSobre = "Sobre o hs#"

-- Mensagens de Ajuda

-- Regras do Jogo
msgRegrasTitulo :: String
msgRegrasTitulo = "Regras do Jogo"

msgRegras :: String
msgRegras =
    "REGRAS DO JOGO\n" ++
    "------------------------------------------------------------\n\n" ++
    "O tabuleiro \233 uma matriz  de tr\234s linhas por tr\234s colunas.\n" ++
    "Dois jogadores escolhem uma marca\231\227o cada um, geralmente um c\237rculo (O) e um xis (X).\n" ++
    "Os jogadores jogam alternadamente, uma marca\231\227o por vez, numa lacuna que esteja vazia.\n" ++
    "O objetivo \233 conseguir tr\234s c\237rculos ou tr\234s xis em linha, seja horizontal, vertical ou diagonal,"++ 
	"e ao mesmo tempo, quando poss\237vel, impedir o advers\225rio de ganhar na pr\243xima jogada.\n" ++
    "Quando um jogador conquista o objetivo, costuma-se riscar os tr\234s s\237mbolos."


-- Sobre o Jogo da Velha
msgSobreTitulo :: String
msgSobreTitulo = "Sobre o hs#"

msgSobre :: String
msgSobre =
    "hs# 1.0\n" ++
    "------------------------------------------------------------\n\n" ++
	"Universidade de Pernambuco\n" ++
	"POLI - EComp\n" ++
	"Projeto da disciplina Linguagem de Programa\231\227o Funcional\n\n" ++
	"---------------------------\n\n" ++
	"Computa\231\227o 08.2\n\n" ++
    "Equipe:\n" ++
    "- Anderson de Oliveira Marques\n" ++
    "- Rodrigo Cesar Lira da Silva\n" ++
    "- Sergio Ferreira Ribeiro\n\n" ++
	"Linguagem utilizada: Haskell" 


-- Nome das jogadas

strX:: String
strX = "vezx"

strO :: String
strO = "vezo"

strVazio :: String
strVazio = "vazio"

-- Mensagens dos di�logos

-- Jogada inv�lida
dlgInvalidaT :: String
dlgInvalidaT = "Jogada Inv\225lida!"

dlgInvalida :: String
dlgInvalida = "Voc\234 deve jogar em outro lugar!"

-- Novo jogo
dlgNovoJogoT :: String
dlgNovoJogoT = "Novo Jogo?"

dlgNovoJogo :: String
dlgNovoJogo = "Deseja iniciar um novo jogo?"

-- Encerrar jogo
dlgFecharT :: String
dlgFecharT = "Encerrar Partida?"

dlgFechar :: String
dlgFechar = "Deseja encerrar a partida atual?"

-- Jogo conclu�do
dlgConcluidoT :: String
dlgConcluidoT = "Jogo Conclu\237do!"

dlgVX:: String
dlgVX = "X VENCEU!"

dlgVO :: String
dlgVO = "O VENCEU!"

dlgVEmpate :: String
dlgVEmpate = "JOGO EMPATADO!"

-- Tradu��o dos nomes dos meses
changeMonth :: String -> String
changeMonth "January" = "Janeiro"
changeMonth "February" = "Fevereiro"
changeMonth "Match" = "Mar\231o"
changeMonth "April" = "Abril"
changeMonth "May" = "Maio"
changeMonth "June" = "Junho"
changeMonth "July" = "Julho"
changeMonth "August" = "Agosto"
changeMonth "September" = "Setembro"
changeMonth "October" = "Outubro"
changeMonth "November" = "Novembro"
changeMonth "December" = "Dezembro"
changeMonth _ = "Desconhecido" -- Um homem prevenido vale por dois.
