
        PROGRAM Main
            USE testlib
            INTEGER :: operation,n,quit
            REAL ::sum,product
            REAL,DIMENSION(:),ALLOCATABLE :: v1,v2
            CHARACTER s,t,q,choise
            ASSIGN 1 to operation
            ASSIGN 2 TO quit
    2       PRINT *, 'Il programma sarà terminato.'
            s = 's'
            t = 't'
            q = 'q'
    1       WRITE(*,*)'s)Prodotto scalare'
            WRITE(*,*)'t)Prodotto tensoriale'
            WRITE(*,*)'q)Esci'
            WRITE(*,*)'Inserire la scelta: '
            READ(*,*)choise
            IF(choise == s)THEN
                WRITE(*,*)'Inserire la dimensione dei vettori: '
                READ(*,*)n
                IF(n.NE.0)THEN
                ALLOCATE(v1(n),v2(n))
                WRITE(*,*)'Inserire le componenti del primo vettore: '
                READ(*,*)(v1(i),i=1,n)
                WRITE(*,*)'Inserire le componenti del secondo vettore: '
                READ(*,*)(v2(i),i=1,n)
                sum = Sum_vectors(v1,v2,n)
                WRITE(*,*)'Somma: ',sum
                ELSE
                WRITE(*,*)'La dimensione non può essere 0'
                GOTO 1
            ENDIF
            ELSE IF(choise == t)THEN
                WRITE(*,*)'Inserire la dimensione dei vettori: '
                READ(*,*) n
                IF(n.NE.0)THEN
                ALLOCATE(v1(n),v2(n))
                WRITE(*,*)'Inserire le componenti del primo vettore: '
                READ(*,*)(v1(i),i=1,n)
                WRITE(*,*)'Inserire le componenti del secondo vettore: '
                READ(*,*)(v2(i),i=1,n)    
                product = Mult_vectors(v1,v2,n)
                WRITE(*,*)'Prodotto: ',product
                ELSE
                WRITE(*,*)'La dimensione non può essere 0'
                GOTO 1
            ENDIF
            ELSE IF(choise == q)THEN
                CALL EXIT(2)
            ENDIF
        END PROGRAM Main