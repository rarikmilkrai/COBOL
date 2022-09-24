      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:24/09/22
      * Purpose:COMANDO LENGTH
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMANDO_LENGTH.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-COMPRIMENTO           PIC 9(9) VALUE 0.
       01 WS-ENDERECO.
           03 WS-RUA               PIC X(20).
           03 WS-BAIRRO            PIC X(20).
           03 WS-CIDADE            PIC X(30).
       PROCEDURE DIVISION.
            DISPLAY 'O COMPRIMENTO DO GRUPO ENDERECO É: '
                                       LENGTH OF WS-ENDERECO
            COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)
            DISPLAY ' OUTRA FORMA: ' WS-COMPRIMENTO
            .
            STOP RUN.
       END PROGRAM COMANDO_LENGTH.
