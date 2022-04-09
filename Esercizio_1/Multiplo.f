	PROGRAM Multiplo
	REAL a,b
	INTEGER n1,n2
	CHARACTER c,p,m,e
	p = 'p'
	m = 'm'
	e = 'e'
	ASSIGN 1 to main
    1 write(*,*)'p)Pari o dispari'
	write(*,*)'m)a multiplo di b'
	write(*,*)'e)Esci'
	write(*,*)'Inserisci l''operazione da eseguire: '
	read (*,*) c
	IF (c == p)THEN
		write(*,*)'Inserire il primo numero: '
		read(*,*)a
		write(*,*)'Inserire il secondo numero: '
		read(*,*)b
		IF((a/2).EQ.(INT((a/2)+0.5)))THEN
			write(*,*) INT(a),' e'' pari'
		ELSE 
			write(*,*) INT(a),' e'' dispari.'
		END IF
		IF ((b/2).EQ.(INT((b/2)+0.5)))THEN
			write(*,*)INT(b),' e'' pari'
		ELSE 
			write(*,*)INT(b),' e'' dispari'
		END IF
	GOTO 1
	END IF
	IF(c == m)THEN
		write(*,*)'Inserire il primo numero: '
		read(*,*)n1
		write(*,*)'Inserire il secondo numero: '
		read(*,*)n2
		rapporto = n1/n2
		IF(n1.EQ.(rapporto*n2))THEN
			write(*,*)n1,' e'' multiplo di ',n2
		ELSE
			write(*,*)n1,' non e'' un multiplo di ',n2
		END IF 
	GOTO 1
	ELSE
	END IF 
	END