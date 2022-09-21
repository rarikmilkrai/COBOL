      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:20/09/22
      * Purpose:COMANDO STRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTEUDO               PIC X(30) VALUE SPACE.
       77 WS-TEXTO                PIC X(40) VALUE SPACE.
       PROCEDURE DIVISION.

      **************CONCATENAÇÃO**********************
               INITIALISE WS-CONTEUDO
                          WS-TEXTO
               STRING
                   'RARIKMILKRAI'
                   ' '
                   'SOUZA DA SILVA'
                   DELIMITED BY SIZE INTO WS-CONTEUDO
               END-STRING

               DISPLAY WS-CONTEUDO


      *************ATRIBUIÇÃO POSICIONAL**********************
               INITIALISE WS-CONTEUDO
                          WS-TEXTO


               MOVE 'O RARIK ESTA ESTUDANDO COBOL' TO WS-TEXTO

              STRING
                   WS-TEXTO(1:7)
                   WS-TEXTO(15:19)
                   DELIMITED BY SIZE INTO WS-CONTEUDO
               END-STRING

               DISPLAY WS-CONTEUDO
      **********************DELIMITADORES**********************

        INITIALISE WS-CONTEUDO
                          WS-TEXTO


               MOVE 'O RARIK ESTA ESTUDANDO COBOL' TO WS-TEXTO

              STRING
                   WS-TEXTO

                   DELIMITED BY SPACES INTO WS-CONTEUDO
               END-STRING

               DISPLAY WS-CONTEUDO

            STOP RUN.
       END PROGRAM STRING.
