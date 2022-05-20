/*
  Ticket do ANDREI ENGENHARIA
  Atributo 6217 - DETALHES DA BOCA DA EMBALAGEM
  Comando 1935 - Calculo do atributo 6120
  
  Atributos que devem ser alterados, de acordo com o 6217: 6230, 5560, 6270, 6183 e 6186
*/

DECLARE

    v_empresa      NUMBER := :p_1;
    v_produto      estitem.codigo%TYPE := :p_2;
    v_versao       pcpversao.versao%TYPE := :p_3;
    v_retorno      pcpficha.valor_padrao%TYPE;
    
    v_atributo6217 NUMBER := 0;
    v_atributo12   VARCHAR(200);
    
    
BEGIN

    -- PEGA ATRIB. 6217
    SELECT Nvl(valor_padrao, 0)
    INTO   v_atributo6217
    FROM   pcpficha
    WHERE  empresa = v_empresa
           AND produto = v_produto
           AND versao = v_versao
           AND atributo = 6217;
           
    -- PEGA ATRIB. 12
    SELECT Nvl(valor_padrao, 0)
    INTO   v_atributo12
    FROM   pcpficha
    WHERE  empresa = v_empresa
           AND produto = v_produto
           AND versao = v_versao
           AND atributo = 12;
    
    -- 01 Atributo 6217 DETALHES_BOCA_EMBALAGEM | 6183 TAMANHO_PICOTE_FACILITADOR
    IF v_atributo6217 IN( 1, 2, 13 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 8
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 = 3 THEN
      UPDATE pcpficha
      SET    valor_padrao = 11
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 = 18 THEN
      UPDATE pcpficha
      SET    valor_padrao = 7
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 IN ( 4 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = '3.5 A 9.5'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 IN ( 5, 9, 12 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 10
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 IN ( 6, 7 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = '9.5'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 = 8 THEN
      UPDATE pcpficha
      SET    valor_padrao = 12
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    ELSIF v_atributo6217 IN ( 10, 15 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 5
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
     -- Essa verificacao LIMPA o atributo caso algum 'lixo' tenha persistido
    ELSIF v_atributo6217 NOT IN (1,2,3,4,5,6,7,8,9,10,12,13,15,18) THEN
      UPDATE pcpficha
      SET    valor_padrao = ''
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6183;
             
    END IF;

    -- 02 Atributo 6217 DETALHES_BOCA_EMBALAGEM | 6270 AFASTAMENTO_FURO_PICOTE_FACILITADOR
    IF v_atributo6217 IN( 1, 2, 3, 4, 5, 9, 12, 13, 15 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 5
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6270;
             
    ELSIF v_atributo6217 IN ( 6, 7, 10 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 6
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6270;
             
    ELSIF v_atributo6217 IN ( 18 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 7
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6270;
             
    ELSIF v_atributo6217 = 8 THEN
      UPDATE pcpficha
      SET    valor_padrao = 3
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6270;
             
    -- Essa verificacao LIMPA o atributo caso algum 'lixo' tenha persistido
    ELSIF v_atributo6217 NOT IN (1,2,3,4,5,6,7,8,9,10,12,13,15,18) THEN
      UPDATE pcpficha
      SET    valor_padrao = ''
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6270;  
             
    END IF;

    -- 03 Atributo 6217 DETALHES_BOCA_EMBALAGEM | 6230 DIAMETRO_FURO
    IF v_atributo6217 IN ( 3, 4, 5, 8, 9, 13, 14 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 17
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;
             
    ELSIF v_atributo6217 IN (6,7) THEN
      UPDATE pcpficha
      SET    valor_padrao = 13
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;
             
    ELSIF v_atributo6217 IN (1,12) THEN
      UPDATE pcpficha
      SET    valor_padrao = 20
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;
             
    ELSIF v_atributo6217 IN (2,10,15,16,17,18,19,20) THEN
      UPDATE pcpficha
      SET    valor_padrao = 15
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;
             
    -- Essa verificacao LIMPA o atributo caso algum 'lixo' tenha persistido
    ELSIF v_atributo6217 NOT IN (1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20) THEN
      UPDATE pcpficha
      SET    valor_padrao = ''
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;         
    
    END IF;

    -- 04 Atributo 6217 DETALHES_BOCA_EMBALAGEM | 6186 POSICAO_PICOTE_FACILITADOR 
    IF v_atributo6217 IN( 1, 2, 3, 4, 8, 10, 12, 13, 15, 18 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 'ALINHADO COM O CENTRO DO FURO'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6186;
             
    ELSIF v_atributo6217 IN ( 5, 9 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 'DESLOCADO DO FURO PARA FORA DA EMBALAGEM'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6186;
             
    ELSIF v_atributo6217 IN ( 6, 7 ) THEN
      UPDATE pcpficha
      SET    valor_padrao = 'DESLOCADO DO FURO PARA O CENTRO DA EMBALAGEM'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6186;
             
    -- Essa verificacao LIMPA o atributo caso algum 'lixo' tenha persistido
    ELSIF v_atributo6217 NOT IN (1,2,3,4,5,6,7,8,9,10,12,13,15,18) THEN
      UPDATE pcpficha
      SET    valor_padrao = ''
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6186;
    
    END IF;

    -- 05 Atributo 6217 DETALHES_BOCA_EMBALAGEM | 5560 POSSUI_PICOTE_FACILITADOR 
    IF v_atributo6217 IN (15,18) THEN
      UPDATE pcpficha
      SET    valor_padrao = 'SIM'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 5560;
             
    -- Essa verificacao LIMPA o atributo caso algum 'lixo' tenha persistido
    ELSIF v_atributo6217 NOT IN (15,18) THEN
      UPDATE pcpficha
      SET    valor_padrao = ''
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 5560;
    
    END IF;
    
     -- 06 Atributo 12 TIPO_FURACAO
    IF v_atributo12 = 'AGULHA' THEN
      UPDATE pcpficha
      SET    valor_padrao = '0.7'
      WHERE  empresa = v_empresa
             AND produto = v_produto
             AND versao = v_versao
             AND atributo = 6230;
             
    END IF;

    /*
    Dbms_Output.Put_Line ('5560 POSSUI_PICOTE_FACILITADOR : ' || v_atributo5560);
    Dbms_Output.Put_Line ('6186 POSICAO_PICOTE_FACILITADOR: ' || v_atributo6186);
    Dbms_Output.Put_Line ('6183 TAMANHO_PICOTE_FACILITADOR: ' || v_atributo6183);
    Dbms_Output.Put_Line ('6230 DIAMETRO_FURO             : ' || v_atributo6230);
    Dbms_Output.Put_Line ('6270 AFASTAMENTO_FURO_PICOTE_FACILITADOR: ' || v_atributo6270);
    */

    v_retorno := v_atributo6217;
    :p_4 := v_retorno;
    
END; 
