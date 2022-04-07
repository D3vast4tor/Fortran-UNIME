	PROGRAM Cose
	REAL a,b,c
	a = 4
	b = 5
	write(*,*)a,b
	IF((a/2).EQ.(INT((a/2)+0.5)))THEN
		write(*,*)'E'' pari'
	ELSE 
		write(*,*)'E'' dispari.'
	END IF 
	END
	