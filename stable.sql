declare 
  v_empresa number := :p_1;
  v_produto estitem.codigo%type   := :p_2;
  v_versao  pcpversao.versao%type := :p_3;
  v_retorno pcpficha.valor_padrao%type;
  
  v_atributo6217 number:= 0;
  
begin 
   select nvl(valor_padrao,0)
     into v_atributo6217
     from pcpficha 
    where empresa = v_empresa 
      and produto = v_produto 
      and versao = v_versao
      and atributo = 6217;
  
   -- Tamanho do Picote Facilitador 6183
    if  v_atributo6217 in(1,2,13) then
              update pcpficha set valor_padrao = 8 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 = 3 then
              update pcpficha set valor_padrao = 11 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 = 18 then
              update pcpficha set valor_padrao = 7 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;                
      elsif v_atributo6217 in (4) then
              update pcpficha set valor_padrao = '3.5 A 9.5'
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 in (5,9,12) then
              update pcpficha set valor_padrao = 10
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 in (6,7) then
              update pcpficha set valor_padrao = 9.5
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 = 8 then
              update pcpficha set valor_padrao = 12 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
      elsif v_atributo6217 in (10,15) then
              update pcpficha set valor_padrao = 5 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6183;
    end if;
   
       -- Distancia da borda do furo até o início do picote 6270
    if  v_atributo6217 in(1,2,3,4,5,9,12,13,15) then
              update pcpficha set valor_padrao = 5 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6270;
      elsif v_atributo6217 in (6,7,10) then
              update pcpficha set valor_padrao = 6
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6270;
      elsif v_atributo6217 in (18) then
              update pcpficha set valor_padrao = 7
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6270;
      elsif v_atributo6217 = 8 then
              update pcpficha set valor_padrao = 3 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6270;
     
    end if;
  
       -- Diâmetro do furo 6230
    if  v_atributo6217 in(3,4,5,8,9,13,14) then
              update pcpficha set valor_padrao = 17 
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6230;
      elsif v_atributo6217 in (6,7) then
              update pcpficha set valor_padrao = 13
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6230;
      elsif v_atributo6217 in (1,12) then
              update pcpficha set valor_padrao = 20
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6230;
      elsif v_atributo6217 in (2,10,15,18) then
              update pcpficha set valor_padrao = 15
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6230;
       
    end if;
    
        -- Posição do picote facilitador 6186
    if  v_atributo6217 in(1,2,3,4,8,10,12,13,18, 15) then
              update pcpficha set valor_padrao = 'ALINHADO COM O CENTRO DO FURO'
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6186;
      elsif v_atributo6217 in (5,9) then
              update pcpficha set valor_padrao = 'DESLOCADO DO FURO PARA FORA DA EMBALAGEM'
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6186;
      elsif v_atributo6217 in (6,7) then
              update pcpficha set valor_padrao = 'DESLOCADO DO FURO PARA O CENTRO DA EMBALAGEM'
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 6186;
 
    end if;
  
       -- Possui picote facilitador 5560
    if  v_atributo6217 in(15,18) then
              update pcpficha set valor_padrao = 'SIM'
               where empresa = v_empresa 
                 and produto = v_produto 
                 and versao = v_versao
                and atributo = 5560;
    end if;  
  
  v_retorno := v_atributo6217;
  :p_4 :=	v_retorno;
end;
