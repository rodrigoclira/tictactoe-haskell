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