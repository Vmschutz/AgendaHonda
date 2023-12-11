DECLARE 
  vid_fab_config integer;
  vid_empresa integer;
  vcod_empresa integer := 31;
  vid_grupo_email integer := 1;
  
  vid_dealer VARCHAR2(10) := 1681142;
  
  vaccess_token_url VARCHAR2(1000) := 'https://api.honda.com.br/oauth/v2/access-token';
  vclient_id        VARCHAR2(500) :=  '2b68d69be5dbb1f58c33cd9f0a82881b';
  vclient_secret    VARCHAR2(500) :=  '27e7bdbd78db7217f28c2582f2972f30';
  
  vid_operacao integer;
  vnomeClase varchar2(50);
  vid_tarefa integer;
  vid_config integer;
  vcodigo integer;
  vid_tarefa_freq integer;
  vtem_operacao integer;

BEGIN
--   fab_config  ************  
  Select id 
    into vid_empresa
    from fab_empresa
   where cod_empresa = vcod_empresa;

  Select Count(*)  
    into vtem_operacao
    from fab_config cf,
         fab_operacao op       
   where cf.id_operacao = op.id       
     and op.id_processo = 33
     and cf.id_empresa = vid_empresa; 

  IF (vtem_operacao = 0) then
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 1) , vid_grupo_email, vid_dealer, 'N', 'P', 'S', sysdate, user, sysdate, user )  ; 

  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 2) , vid_grupo_email, vid_dealer, 'N', 'P', 'S', sysdate, user, sysdate, user         );
    
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 3) , vid_grupo_email, vid_dealer, 'N', 'P', 'S', sysdate, user, sysdate, user         );
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;      
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 4) , vid_grupo_email, vid_dealer, 'N', 'P', 'S', sysdate, user, sysdate, user         );  
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 6) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user )  ;
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 7) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
    
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 8) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;      
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 9) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
    
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 10) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user )  ;
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 11) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
    
  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 12) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;      
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 14) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );      

  select seq_fab_config_id.nextval into vid_fab_config from dual;  
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 17) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
  
  select seq_fab_config_id.nextval into vid_fab_config from dual;      
    Insert into fab_config(id, id_empresa, id_operacao, id_grupo_email, dealer, usa_dt_ini, ambiente, ativo, dtinc, userinc, dtalt, useralt )
    values(vid_fab_config, vid_empresa, (SELECT ID FROM fab_operacao c WHERE C.ID_PROCESSO = 33 AND CODIGO = 18) , vid_grupo_email, vid_dealer, 'N', 'P', 'N', sysdate, user, sysdate, user         );
   

  END IF;   
  
------------ 1 
select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 1
   and cf.id_empresa = vid_empresa;     

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S', vnomeClase, -- 'Get',
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);                       
  */                     
  ----// fab_tarefa_http_var  

  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/availabilities',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/availabilities',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);        

  ----// FAB_TAREFA_HTTP_FIX  
 /* 
  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,2,30000,0,5,0,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'/dealers/{dealerCode}/availabilities','','',0,0);                             
 */      
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                                           

------------- 2

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 2
   and cf.id_empresa = vid_empresa;   

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
*/
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/consultants?showAvailabilities=true',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/consultants?showAvailabilities=true',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);

  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'/dealers/{dealerCode}/consultants','','',0,0);
*/
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');
                                                    
------------- 3

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 3
   and cf.id_empresa = vid_empresa;   

 /* select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
   */
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer,
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer,
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                         
  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,3,30000,0,5,0,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'/dealers/{dealerCode}','','',1,0);                            
*/
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');
                                                    
------------- 4

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 4
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
    */                     
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer ||'/facilities',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer ||'/facilities',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);       
                          
  ----// FAB_TAREFA_HTTP_FIX
 /* insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,2,30000,0,5,0,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);                                            
*/
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');
                        
------------- 5 - Nao tem

------------- 6

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 6
   and cf.id_empresa = vid_empresa; 

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
 */
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/'|| vid_dealer ||'/unavailabilities',
                            'https://api.honda.com.br/dac/dealers/'|| vid_dealer ||'/unavailabilities',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);   

  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);
*/                            
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                            
------------- 7

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 7
   and cf.id_empresa = vid_empresa;   

 /* select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
  */ 
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/'|| vid_dealer ||'/unavailabilities',
                            'https://api.honda.com.br/dac/dealers/'|| vid_dealer ||'/unavailabilities',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                           
  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 2,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);                            
 */                           
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');       
						
------------- 8

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 8
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
   */
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/'|| vid_dealer,
                            'https://api.honda.com.br/dac/dealers/'|| vid_dealer,
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);  
                         
  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 8,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);           
*/                            

  ----//FAB_TAREFA_HTTP_PARAM                                  
--  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, ordem, estrutura)
  --                         values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,1,4,'dealerCode', sysdate, user, 3, 'S', 1, 1);                            
                           
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '20:00', 'D');                           
------------- 9

select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 9
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
*/
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer ||'/consultants',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer ||'/consultants',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);

  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 2,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);
                          
  ----//FAB_TAREFA_HTTP_PARAM                              
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, ordem, estrutura)
                           values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,1,4,'dealerCode', sysdate, user, 3, 'S', 1, 1);                            
 */                            
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');
                                                   
------------- 10


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 10
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
  */
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/'|| vid_dealer ||'/consultants' ,
                            'https://api.honda.com.br/dac/dealers/'|| vid_dealer ||'/consultants' ,
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                          
  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 8,0,2,30000,3,5,3,6,0,1,'bearer',5,1,sysdate,user,sysdate,user,'','','',0,0);                            
*/

  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');
                        
------------- 11


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 11
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
   */ 
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/schedulings/{scheduleProtocol}',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/schedulings/{scheduleProtocol}',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                        
  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 8,0,2,30000,3,5,3,6,0,1,'bearer',5,1, sysdate,user,sysdate,user,
       '','https://api.honda.com.br/dac/dealers/{dealer}/schedulings/{scheduleProtocol}','https://api.honda.com.br/dac/dealers/{dealer}/schedulings/{scheduleProtocol}',0,0);           

                            
  ----//FAB_TAREFA_HTTP_PARAM                            
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                             values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dealer', sysdate, user, 1, 'N', 1);

  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                             values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'scheduleProtocol', sysdate, user, 1, 'N', 1);    
*/                             
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                             
                                                     
------------- 12


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 12
   and cf.id_empresa = vid_empresa;   

 /* select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
*/
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/schedulings',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/schedulings',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);                       

  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 2,0,2,30000,3,5,3,6,0,1,'bearer',5,1, sysdate,user,sysdate,user,
       '','https://api.honda.com.br/dac/dealers/{dealer}/schedulings','https://api.honda.com.br/dac/dealers/{dealer}/schedulings',0,0);    

                            
  ----//FAB_TAREFA_HTTP_PARAM                            
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                           values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dealer', sysdate, user, 1, 'N', 1);                            
*/                           
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                           

------------- 13 NAO TEM

------------- 14


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 14
   and cf.id_empresa = vid_empresa;  

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       3,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
 */                      
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,                            
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/schedulings?statusSchedule=novo%2Cnovo_cancelado%2Cnovo_reagendado_beginDateTime={dataagenda} 00:01:00'||'&'||'perPage=100'||'&'||'page=1',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/schedulings?statusSchedule=novo%2Cnovo_cancelado%2Cnovo_reagendado_beginDateTime={dataagenda} 00:01:00'||'&'||'perPage=100'||'&'||'page=1',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);

  ----// FAB_TAREFA_HTTP_FIX
/*  insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 1,0,2,30000,3,5,3,6,0,1,'bearer',5,1, sysdate,user,sysdate,user,
       '','https://api.honda.com.br/dac/dealers/{dealer}/schedulings?statusSchedule=novo%2Cnovo_cancelado%2Cnovo_reagendado={dataagenda} 00:01:00=100=1',
       'https://api.honda.com.br/dac/dealers/{dealer}/schedulings?statusSchedule=novo%2Cnovo_cancelado%2Cnovo_reagendado={dataagenda} 00:01:00=100=1',0,0);


  ----//FAB_TAREFA_HTTP_PARAM                                                        
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                             values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dealer', sysdate, user, 1, 'N', 1);

  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                             values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dataagenda', sysdate, user, 1, 'N', 1);                            
 */                            
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                             
                        
------------- 15 NAO TEM
------------- 16 NAO TEM

------------- 17


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 17
   and cf.id_empresa = vid_empresa;    

 /* select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                 Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
    */                       
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/' || vid_dealer || '/schedulings/{scheduleProtocol}',
                            'https://api.honda.com.br/dac/dealers/' || vid_dealer || '/schedulings/{scheduleProtocol}',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                        
  ----// FAB_TAREFA_HTTP_FIX
 /* insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 8,0,2,30000,3,5,3,6,0,1,'bearer',5,1, sysdate,user,sysdate,user,
       '','https://api.honda.com.br/dev/dac/dealers/{dealer}/schedulings','https://api.honda.com.br/dac/dealers/{dealer}/schedulings',0,0);                            
                           
  ----//FAB_TAREFA_HTTP_PARAM                                 
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                           values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dealer', sysdate, user, 1, 'N', 1);

  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                           values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'scheduleProtocol', sysdate, user, 1, 'N', 1);                            
*/                            
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                           

------------- 18


select cf.id_operacao, op.codigo, cf.id, op.nome_classe, tf.id as id_tarefa
  into vid_operacao, vcodigo, vid_config, vnomeClase, vid_tarefa  
  from fab_config cf,
       fab_operacao op,
       fab_tarefa tf       
 where cf.id_operacao = op.id       
   and tf.id_operacao = cf.id_operacao
   and op.id_processo = 33
   and op.codigo = 18
   and cf.id_empresa = vid_empresa;    

/*  select seq_fab_tarefa_id.nextval into vid_tarefa from dual;  
  
  Insert Into fab_tarefa(id, id_operacao,  tipo_integracao, tipo_art_env, tipo_art_ret, art_env_compac, art_ret_compac, tipogravacao, 
                       tipo_acao, possui_frequencia, nome_classe, 
                       ordem, principal, ativo, dtinc, userinc, dtalt, useralt, sql_ident_config, id_operacao_exec)
                Values(vid_tarefa, vid_operacao,5,3,3,'N','N',1,
                       1,'S',vnomeClase,
                       1,'S','S', sysdate, user, sysdate, user, 'A.DEALER = :dealerCode',vid_operacao);
   */ 
  ----// fab_tarefa_http_var                    
  insert into fab_tarefa_http_var (id, id_config, id_tarefa, 
                                   url_hom,
                                   url_prod,
                                   access_token_url, 
                                   client_id, 
                                   client_secret)
                            values(seq_fab_tar_http_var_id.nextval, vid_config, vid_tarefa,
                            'https://api.honda.com.br/dev/dac/dealers/'|| vid_dealer ||'/schedulings',
                            'https://api.honda.com.br/dac/dealers/'|| vid_dealer ||'/schedulings',
                            vaccess_token_url,
                            vclient_id,
                            vclient_secret);
                        
  ----// FAB_TAREFA_HTTP_FIX
 /* insert into FAB_TAREFA_HTTP_FIX(id, id_tarefa, metodo, tam_max, autenticacao, time_out, content_type, tipo_encoding, tipo_corpo, tipo_autorizacao, api_key_add_to, add_auth_data_to,
                                  header_prefix, grant_type, client_auth, dtinc, userinc, dtalt, useralt, context_path, url_hom, url_prod, tipo_token, token_value)
  Values(seq_fab_tarefa_http_fix_id.nextval, vid_tarefa, 8,0,2,30000,3,5,3,6,0,1,'bearer',5,1, sysdate,user,sysdate,user,
       '','https://api.honda.com.br/dev/dac/dealers/{dealer}/schedulings','https://api.honda.com.br/dac/dealers/{dealer}/schedulings',0,0);    
                         
                            
  ----//FAB_TAREFA_HTTP_PARAM                            
  Insert into FAB_TAREFA_HTTP_PARAM(id, id_tarefa, tipo_param, tipo, chave, dtinc, userinc, tp_dado, obrigatorio, estrutura)
                           values (seq_fab_tarefa_http_param_id.nextval, vid_tarefa,2,4,'dealer', sysdate, user, 1, 'N', 1);                            
  */                            
  ----// FAB_TAREFA_FREQ
  select seq_fab_tarefa_freq_id.nextval into vid_tarefa_freq from dual;  
  insert into FAB_TAREFA_FREQ (id, id_config, Id_Tarefa, tipo)
                       values (vid_tarefa_freq, vid_config, vid_tarefa, 1);                            
  ----// fab_tarefa_freqdet
  Insert into fab_tarefa_freqdet(id, id_tarefa_freq, dia, hora, tipo)  
                        values(seq_fab_tarefa_freqdet_id.nextval, vid_tarefa_freq, 1, '07:00', 'D');                           
      

END;
