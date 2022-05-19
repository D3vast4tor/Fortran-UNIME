
        PROGRAM Main
            INTEGER :: operation,n,quit
            CHARACTER s,t,q,choise
            ASSIGN 1 to operation
            ASSIGN 2 TO quit
    2       PRINT *, 'Arrivederci prof, le voglio tanto beneee!'
            s = 's'
            t = 't'
            q = 'q'
    1       WRITE(*,*)'s)Prodotto scalare'
            WRITE(*,*)'t)Prodotto tensoriale'
            WRITE(*,*)'Inserire la scelta: '
            READ(*,*)choise
            IF(choise == s)THEN
                WRITE(*,*)'Inserire la dimensione dei vettori: '
                READ(*,*) n
                WRITE(*,*)Vector_product(n)
                GOTO 1
            ELSE IF(choise == t)THEN
                
            ELSE IF(choise == q)THEN
                CALL EXIT(2)
            ENDIF
        CONTAINS
            INTEGER FUNCTION Vector_product(n) RESULT(v3)
                INTEGER,INTENT(IN) :: n
                INTEGER,DIMENSION(n) :: v1,v2
                INTEGER :: i,number
                WRITE(*,*)'Inserire i numeri del primo vettore: '
                DO i = 1,n
                    READ(*,*) number
                    v1(i) = number
                ENDDO
                WRITE(*,*)'Inserire i numeri del secondo vettore: '
                DO i = 1,n
                    READ(*,*) number
                    v2(i) = number
                ENDDO
                v3 = 0
                DO i = 1,n
                    v3 = v3 + ( v1(i) * v2(i) )
                ENDDO
            END FUNCTION
        END PROGRAM Main