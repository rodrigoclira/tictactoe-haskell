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
--  Arquivo: Aleatorio.hs                                                                     --
--      M�dulo aleat�rio. Implementa fun��es de retorno aleat�rio.                            --
------------------------------------------------------------------------------------------------
--  �ltima Modifica��o: 30/05/2010                                                            --
------------------------------------------------------------------------------------------------

module Aleatorio (aleatorio, gerarDirecao) where

import System.IO.Unsafe
import System.Random

-- Retorna um dos argumentos recebidos aleatoriamente
aleatorio :: a -> a -> a
aleatorio a b = unsafePerformIO (aux1 a b)
	where
	aux1 a b = do
		newStdGen
		x <- getStdGen;
		if (aux2 (fst (next x)))
			then do
				return a
			else do
				return b
	aux2 x = (mod x 2) == 0

-- Gera a dire��o para seguir na �rvore aleatoriamente
gerarDirecao :: [Int]
gerarDirecao 
	|aleatorio 1 2 == 1 = [(aleatorio 1 2),(aleatorio 1 2),(aleatorio 1 2), (aleatorio 1 2)]
	|otherwise = [1,1,1,1]