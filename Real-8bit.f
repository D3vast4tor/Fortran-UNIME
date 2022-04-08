        SUBROUTINE machine_precision()
            REAL*8 :: f = 1,n = 1
            !Inizializzazione delle variabili a doppia precisione
            !Vengo numeri interessanti con la dicitura REAL*16
            !Più stress sulla CPU
            DO
            !Non ho idea di come fermarlo prima che dica infinity
            !Ciclo infinito, servirebbe un'istruzione di controllo per fare uscire la subroutine dal ciclo
            !Cercare di creare un loop infinito con un DO n = 1,-1,1 viene impedito dal compilatore
            !Non si possono fare salti posizionali in una subroutine, sono alla terza tazza di caffè,addio
                n = n + 0.00000001
                f = ( f * n )
                WRITE(*,*)'Fattore di n: ',f
            END DO
        END SUBROUTINE
        PROGRAM Factorial
            CALL machine_precision()
        END PROGRAM

