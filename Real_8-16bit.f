        SUBROUTINE Quadruple_precision()
            REAL*16 :: f = 1,n = 1
            DO
                n = n + 0.0000001
                f = ( f * n )
                WRITE(*,*)'Fattore di n: ',f
            END DO
        END SUBROUTINE
        SUBROUTINE Double_precision()
            REAL*8 :: f = 1,n = 1
            !Inizializzazione delle variabili a doppia precisione
            !Vengo numeri interessanti con la dicitura REAL*16
            !Più stress sulla CPU
            DO
            !Non ho idea di come fermarlo prima che dica infinity
            !Ciclo infinito, servirebbe un'istruzione di controllo per fare uscire la subroutine dal ciclo
            !Cercare di creare un loop infinito con un DO n = 1,-1,1 viene impedito dal compilatore
            !Non si possono fare salti posizionali in una subroutine, sono alla terza tazza di caffè,addio
                n = n + 0.000000001
                f = ( f * n )
                WRITE(*,*)'Fattore di n: ',f
            END DO
        END SUBROUTINE
        PROGRAM Factorial
            CHARACTER d,q,e,choise
            d = 'd'
            q = 'q'
            e = 'e'
            ASSIGN 1 TO main
    1       WRITE(*,*)'d)Fattoriale a doppia precisione'
            WRITE(*,*)'q)Fattoriale a quadrupla precisione'
            WRITE(*,*)'e)Esci'
            WRITE(*,*)'Inserire la scelta: '
            READ(*,*)choise
            IF(choise == d)THEN
                CALL Double_precision()
            END IF
            GOTO 1
            IF(choise == q)THEN
                CALL Quadruple_precision()
            END IF
            GOTO 1
            IF(choise == e)THEN
            END IF 
        END
        !Valori recuperati prima di arrivare ad infinity su doppia precisione(REAL*8)
        !
        !
        !
        !
        !---------------------------------------------------------------------------------
        !Valori recuperati prima di arrivare ad infinity su quadrupla precisione(REAL*16)
        !Fattore di n:    9.75696254552497103722876383431871632E+4931
        !Fattore di n:    1.12316095664768747716826394630381907E+4932
        !Fattore di n:    1.17711221846293016897473098036642798E+4932
        !Fattore di n:                                       Infinity