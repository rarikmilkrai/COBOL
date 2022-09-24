      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:24/09/22
      * Purpose: COMANDO UNSTRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNSTRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NOME-COMPLETO             PIC X(50) VALUE SPACES.
       01 WS-NOME.
          03 WS-PRIM-NOME             PIC X(20) VALUE SPACES.
          03 WS-NOME-MEIO             PIC X(20) VALUE SPACES.
          03 WS-ULTI-NOME             PIC X(20) VALUE SPACES.
          03 WS-ULTI-NOME2            PIC X(20) VALUE SPACES.
          03 WS-ULTI-NOME3            PIC X(20) VALUE SPACES.
       77 WS-MOSTRA                   PIC X(60) VALUE SPACES.
       01 WS-COUNT.
          03 WS-PONTEIRO              PIC 9(02) VALUE ZEROS.
          03 WS-TOT-CAMPOS            PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.

      ***********************1 EXEMPLO*******************
            DISPLAY 'EXEMPLO 1'
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA

            MOVE 'RARIKMILKRAI JOSE SOUZA DA SILVA' TO WS-NOME-COMPLETO

            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY ALL " "
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
                    WS-ULTI-NOME2
                    WS-ULTI-NOME3
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME: ' WS-PRIM-NOME
            DISPLAY 'WS-NOME-MEIO: ' WS-NOME-MEIO
            DISPLAY 'WS-ULTI-NOME: ' WS-ULTI-NOME
            DISPLAY 'WS-ULTI-NOME2: ' WS-ULTI-NOME2
            DISPLAY 'WS-ULTI-NOME3: ' WS-ULTI-NOME3
            DISPLAY 'WS-NOME-COMPLETO: ' WS-NOME-COMPLETO

      ***********************2 EXEMPLO*******************
            DISPLAY 'EXEMPLO 2'
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE 'RARIKMILKRAI JOSE SOUZA DA SILVA' TO WS-NOME-COMPLETO
            MOVE 1                              TO WS-PONTEIRO
            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY SPACE
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
                    WS-ULTI-NOME2
                    WS-ULTI-NOME3
                    WITH POINTER WS-PONTEIRO
                    TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME: ' WS-PRIM-NOME
            DISPLAY 'WS-NOME-MEIO: ' WS-NOME-MEIO
            DISPLAY 'WS-ULTI-NOME: ' WS-ULTI-NOME
            DISPLAY 'WS-ULTI-NOME2: ' WS-ULTI-NOME2
            DISPLAY 'WS-ULTI-NOME3: ' WS-ULTI-NOME3
            DISPLAY 'WS-PONTEIRO: '   WS-PONTEIRO
            DISPLAY 'WS-TOT-CAMPOS: ' WS-TOT-CAMPOS


      ***********************3 EXEMPLO*******************
            DISPLAY 'EXEMPLO 2'
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE 'RARIKMILKRAI,JOSE SOUZA* DA SILVA' TO WS-NOME-COMPLETO
            MOVE 1                              TO WS-PONTEIRO
            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY ',' OR '*'
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
                    WS-ULTI-NOME2
                    WS-ULTI-NOME3
                    WITH POINTER WS-PONTEIRO
                    TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME: ' WS-PRIM-NOME
            DISPLAY 'WS-NOME-MEIO: ' WS-NOME-MEIO
            DISPLAY 'WS-ULTI-NOME: ' WS-ULTI-NOME
            DISPLAY 'WS-ULTI-NOME2: ' WS-ULTI-NOME2
            DISPLAY 'WS-ULTI-NOME3: ' WS-ULTI-NOME3
            DISPLAY 'WS-PONTEIRO: '   WS-PONTEIRO
            DISPLAY 'WS-TOT-CAMPOS: ' WS-TOT-CAMPOS

            STOP RUN.
       END PROGRAM UNSTRING.
