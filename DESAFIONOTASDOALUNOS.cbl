      ******************************************************************
      * Author:RARIKMILKRIA SOUZA
      * Date:21/03/23
      * Purpose:CALCULAR NOTAS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULARNOTAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NOME-ALUNO PIC X(50).
           01 MATERIA PIC X(50).
           01 NOTA-1 PIC 9(3)V9(2).
           01 NOTA-2 PIC 9(3)V9(2).
           01 NOTA-3 PIC 9(3)V9(2).
           01 NOTA-4 PIC 9(3)V9(2).
           01 MEDIA PIC 9(3)V9(2).
           01 OPCAO PIC X.

       PROCEDURE DIVISION.
       0001-INICIO.
            DISPLAY "Digite o nome do aluno: "
            ACCEPT NOME-ALUNO
            DISPLAY "Digite a matéria: "
            ACCEPT MATERIA
            DISPLAY "Digite a primeira nota: "
            ACCEPT NOTA-1
            DISPLAY "Digite a segunda nota: "
            ACCEPT NOTA-2
            DISPLAY "Digite a terceira nota: "
            ACCEPT NOTA-3
            DISPLAY "Digite a quarta nota: "
            ACCEPT NOTA-4

         IF NOTA-1 > 0 AND NOTA-2 > 0 AND NOTA-3 > 0 AND NOTA-4 > 0
         IF FUNCTION NUMVAL(NOTA-1) = 1 AND FUNCTION NUMVAL(NOTA-2) = 1
         AND FUNCTION NUMVAL(NOTA-3) = 1 AND FUNCTION NUMVAL(NOTA-4) = 1
                COMPUTE MEDIA = (NOTA-1 + NOTA-2 + NOTA-3 + NOTA-4) / 4
            DISPLAY "Média do aluno ", NOME-ALUNO,
                               " na matéria ", MATERIA, " é: ", MEDIA
                    IF MEDIA >= 6
                        DISPLAY "Aluno aprovado!"
                    ELSE
                        DISPLAY "Aluno reprovado!"
                    END-IF
                ELSE
                    DISPLAY "Alguma das notas digitadas não é válida."
                END-IF
            ELSE
             DISPLAY "Alguma das notas digitadas não é maior que zero."
            END-IF

            DISPLAY "Deseja continuar? (S/N)"
            ACCEPT OPCAO
            IF OPCAO = "S" OR OPCAO = "s"
                GO TO 0001-INICIO
            ELSE
            END-IF.

                STOP RUN.

       END PROGRAM CALCULARNOTAS.
