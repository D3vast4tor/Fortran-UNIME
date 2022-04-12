        PROGRAM Product_Matrix
            INTEGER :: col,r,l,j,k,format2x2,format3x3,dim_error,temp
            !Se come attributo si aggiunge "Allocatable" i vettori possono avere dimensione a scelta
            !Non inserire l'attributo e non sostituire agli interi, negli attributi della funzione dimension, i doppi punti 
            !Impedisce al compilatore di creare gli array, credo che si possano fare anche vettori con più di due dimensioni aumentando
            !Il numero di doppi punti all'interno di dimension, non so se tornerà utile.
            INTEGER,DIMENSION(:,:),ALLOCATABLE :: a,b,c
            ASSIGN 1 TO format2x2
            ASSIGN 2 TO format3x3
            ASSIGN 3 TO dim_error
    1       FORMAT(2(3x,i2))!formato 2x2
    2       FORMAT(3(3x,i4))!formato 3x3
            !Non so come creare un if che decide in automatico il formato basato sulle dimensione della matrice, nel dubbio li metto coi salti condizionali per ora.
    3       WRITE(*,*)'Inserire il numero di righe: '
            READ(*,*)r
            WRITE(*,*)'Inserire il numero di colonne: '
            READ(*,*)col
            !La moltiplicazione tra matrici non gode di proprietà commutativa e di conseguenza per svolgere correttamente l'operazione 
            !Il numero di righe deve essere uguale a quello delle colonne, qui c'è un controllo con salto posizionale nel momento in cui rows != columns
            !Somma tra matrici
            IF(r.EQ.col)THEN
                ALLOCATE(a(r,r),b(r,r),c(r,r))
                WRITE(*,*)'Inserire i numeri della prima matrice: '
                DO l = 1,r
                    DO j = 1,col
                        READ(*,*)a(l,j)
                    ENDDO
                ENDDO
                WRITE(*,*)'Inserire i numeri nella seconda matrice: '
                DO l = 1,r
                    DO j = 1,col
                        READ(*,*)b(l,j)
                    ENDDO
                ENDDO
                DO l = 1,r
                    DO j = 1,col 
                        c(l,j) = 0
                    ENDDO
                ENDDO
            ELSE
                GOTO 3
            ENDIF
            DO l = 1,r
                DO j = 1,col
                    temp = 0
                    DO k = 1,r
                        temp = temp + ( a(k,j) * b(l,k) )
                    ENDDO
                    c(j,l) = temp
                ENDDO
            ENDDO
            IF(r.EQ.2)THEN
                WRITE(*,1)a
                WRITE(*,*)'----------------------------'
                WRITE(*,1)b
                WRITE(*,*)'----------------------------'
                WRITE(*,1)c
            ELSE IF(r.EQ.3)THEN
                WRITE(*,2)a
                WRITE(*,*)'----------------------------'
                WRITE(*,2)b
                WRITE(*,*)'----------------------------'
                WRITE(*,2)c
            ENDIF
        END
