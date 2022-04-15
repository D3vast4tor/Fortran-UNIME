        MODULE testlib
            CONTAINS

            PURE LOGICAL FUNCTION is_mult(n1,n2)
                INTEGER,INTENT(IN) :: n1,n2
                rapporto = (n1/n2)
                IF(n1.EQ.(rapporto*n2))THEN
                    is_mult = .TRUE.
                ELSE
                    is_mult = .FALSE.
                ENDIF
            END FUNCTION

            PURE LOGICAL FUNCTION is_even(n)
                INTEGER,INTENT(IN) :: n
                IF((n/2).EQ.(INT((n/2)+0.5)))THEN
                    is_even = .TRUE.
                ELSE
                    is_even = .FALSE.
                ENDIF
            END FUNCTION

            PURE INTEGER FUNCTION Sum_int(start,end)
                INTEGER,INTENT(IN) :: start,end
                INTEGER :: i
                DO i = start,end
                    Sum_int = (Sum_int + i)
                ENDDO
            END FUNCTION

            PURE INTEGER FUNCTION Mult_int(start,end)
                INTEGER,INTENT(IN) :: start,end 
                INTEGER :: i 
                Mult_int = 1
                DO i = start,end
                    Mult_int = (Mult_int * i)
                ENDDO
            END FUNCTION

            PURE REAL FUNCTION Avarage(n)
                INTEGER,INTENT(IN) :: n
                    Avarage = (Sum_int(1,n)/n)
            END FUNCTION
            
            PURE REAL FUNCTION Minimum(Vector_of_numbers,length)
                REAL,INTENT(IN),DIMENSION(:) :: Vector_of_numbers
                INTEGER,INTENT(IN) :: length
                DO i = 0,length
                    IF(Vector_of_numbers(i).LT.Minimum)THEN
                        Minimum = Vector_of_numbers(i)
                    ENDIF
                ENDDO
                
            END FUNCTION

            PURE REAL FUNCTION Sum_vectors(v1,v2,n)
                INTEGER,INTENT(IN) :: n
                REAL,DIMENSION(n),INTENT(IN) :: v1,v2
                DO i = 1,n
                    Sum_vectors = Sum_vectors + (v1(i)+v2(i))
                ENDDO
            END FUNCTION

            PURE REAL FUNCTION Mult_vectors(v1,v2,n)
                INTEGER,INTENT(IN) :: n
                REAL,DIMENSION(n),INTENT(IN) :: v1,v2
                Mult_vectors = Mult_vectors + (v1(i)*v2(i))
            END FUNCTION

            PURE REAL FUNCTION Vnorm1(Vector,n)
                INTEGER,INTENT(IN) :: n
                REAL,DIMENSION(n),INTENT(IN) :: Vector
                DO i = 1,n
                    Vnorm1 = Vnorm1 + ABS(Vector(i))
                ENDDO
            END FUNCTION

            PURE REAL FUNCTION Vnorm2(Vector,n)
                INTEGER,INTENT(IN) :: n
                REAL,DIMENSION(n),INTENT(IN) :: Vector
                DO i = 1,n
                    Vnorm2 = Vnorm2 + Vector(i)**2
                    Vnorm2 = SQRT(Vnorm2)
                ENDDO
            END FUNCTION

            PURE REAL FUNCTION Vnorm_inf(Vector,n)
                INTEGER,INTENT(IN) :: n
                REAL,DIMENSION(n),INTENT(IN) :: Vector
                Vnorm_inf = 0
                DO i = 1,n
                    IF(Vnorm_inf.LT.Vector(i))THEN
                        Vnorm_inf = Vector(i)
                    ENDIF
                ENDDO
            END FUNCTION

        END MODULE testlib