      ******************************************************************
      * Author:RARIKMILKRAI SOUZA
      * Date:16/03/23
      * Purpose: ESTRUTURA DE DECISAO IF
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUTURADECISAO_IF.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-NUM-1                     PIC S9(04)V99.
           03 WS-NUM-2                     PIC S9(04)V99.
           03 WS-TEXTO                     PIC  X(20).
           03 WS-STATUS                    PIC 9.
           03 WS-LINHA                     PIC 99.
           03 WS-CODIGO                    PIC 9.
           03 WS-CAMPO                     PIC 99.
           03 WS-DADO                      PIC 99.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P900-FIM
           .

       P000-ERRO.
            DISPLAY 'ERRO DE PROCESSAMENTO.'
            PERFORM P900-FIM
            .

       P100-INICIALIZA.
            INITIALISE WS-VARIAVEIS.


       P500-CALC.

            COMPUTE WS-NUM-1 = WS-NUM-1 + (WS-NUM-2 * 3)
                                      ON SIZE ERROR PERFORM P000-ERRO
            END-COMPUTE

            MOVE 'TEXTO'              TO WS-TEXTO

            IF WS-NUM-2 IS NUMERIC THEN
                DISPLAY 'CAMPO NUMERICO.'
            ELSE
                DISPLAY 'CAMPO NAO NUMERICO.'
                PERFORM P000-ERRO
            END-IF

            DISPLAY ' INFORME UM VALOR PARA O STATUS: '
            ACCEPT WS-STATUS

            IF WS-STATUS = 1 THEN
                DISPLAY 'HOMEM'.
            IF WS-STATUS = 2 THEN
                DISPLAY 'MULHER'.
            IF WS-STATUS = 3 THEN
                DISPLAY 'OUTRO'.
            IF WS-STATUS GREATER 3
               PERFORM P000-ERRO.

            DISPLAY 'INFORME O NUMERO DA LINHA: '
            ACCEPT WS-LINHA

            DISPLAY 'INFORME O NUMERO DO CODIGO: '
            ACCEPT WS-CODIGO

            DISPLAY 'INFORME O NUMERO DO CAMPO: '
            ACCEPT WS-CAMPO

            DISPLAY ' INFORME O NUMERO DO DADO: '
            ACCEPT WS-DADO


            IF WS-LINHA GREATER 30
                DISPLAY 'OK, LINHA MAIOR QUE 30.'

            IF WS-CODIGO = 2
                DISPLAY 'OK, CODIGO CORRETO!'.

            IF WS-CAMPO NOT LESS WS-DADO
                DISPLAY 'OK!'

            .

       P900-FIM.
            STOP RUN.

       END PROGRAM ESTRUTURADECISAO_IF.
