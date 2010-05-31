------------------------------------------------------------------------------------------------
--  Universidade de Pernambuco                                                                --
--  Escola Polit�cnica de Pernambuco                                                          --
--  Engenharia de Computa��o                                                                  --
--  Disciplina: Linguagem de Programa��o Funcional                                            --
--  Professora: Eliane Loiola                                                                 --
------------------------------------------------------------------------------------------------
--  Projeto: hs#                                                                              --
------------------------------------------------------------------------------------------------
--  Equipe:                                                                                   --
--      Anderson de Oliveira Marques <andersonoliveiramarques@gmail.com>                      --
--      Rodrigo Cesar Lira da Silva  <rodrigocliras@gmail.com>                                --
--      Sergio Ferreira Ribeiro      <serginhofribeiro@gmail.com>                             --
------------------------------------------------------------------------------------------------
--  Objetivo:                                                                                 --
--      Desenvolvimento do projeto referente ao segundo exerc�cio escolar.                    --
--                                                                                            --
--  Descri��o do Projeto:                                                                     --
--      Este projeto � a implementa��o em Haskell do Jogo da Velha, com interface gr�fica     --
--      baseada na biblioteca hxHaskell. Pode-se jogar com dois jogadores humanos ou contra a --
--      CPU. Foram utilizados recursos avan�ados do wxHaskell, visando um visual agrad�vel,   --
--      inclusive com a possibilidade de troca de "skins" e reprodu��o de �udios.             --
------------------------------------------------------------------------------------------------
--  Arquivo: Sounds.hs                                                                        --
--      M�dulo de sons. Cont�m as fun��es que reproduzem os �udios do jogo.                   --
------------------------------------------------------------------------------------------------
--  �ltima Modifica��o: 30/05/2010                                                            --
------------------------------------------------------------------------------------------------

module Sounds (
	somJogada,
	somVitoria,
	somInicio
	) where

import Graphics.UI.WX

--Reproduz o som de jogada.
somJogada :: Var Bool -> String ->IO ()
somJogada s estado = do
		x <- get s value
		if (x)
			then do
				play(sound ("sounds/somJogada" ++ estado ++ ".wav"))
			else do
				return ()
		
--Reproduz o som de vit�ria.
somVitoria :: Var Bool -> IO ()
somVitoria s = do
		x <- get s value     
		if (x)
			then do
				play(sound "sounds/somVitoria.wav")
			else do
				return ()

--Reproduz o som de In�cio.
somInicio :: Var Bool -> IO ()
somInicio s = do
		x <- get s value
		if (x)
			then do
				play(sound "sounds/somInicio.wav")
			else do
				return ()