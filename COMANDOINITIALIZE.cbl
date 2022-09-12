      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:12/09/2022
      * Purpose:COMANDO INITIALIZED
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO_INITIALIZED.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME   PIC X(10) VALUE 'RARIK'.
           03 WS-ULTIMO-NOME     PIC X(10) VALUE 'SOUZA'.
       PROCEDURE DIVISION.

            DISPLAY 'SAIDA 1: '
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 2: '
            INITIALISE WS-NOME REPLACING ALPHANUMERIC BY 'SPACES'

            DISPLAY WS-NOME

            STOP RUN.
       END PROGRAM COMANDO_INITIALIZED.
