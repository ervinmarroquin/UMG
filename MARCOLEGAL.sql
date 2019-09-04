prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_default_workspace_id=>27584182595703333189
);
end;
/
prompt  WORKSPACE 27584182595703333189
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   01:17 Monday August 26, 2019
--   Exported By:     ERVINCHITO@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         19.1.0.00.15
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_190100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>27584182595703333189);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace MARCOLEGAL...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 27585098626215391737
 ,p_provisioning_company_id => 27584182595703333189
 ,p_short_name => 'MARCOLEGAL'
 ,p_display_name => 'MARCOLEGAL'
 ,p_first_schema_provisioned => 'MARCOLEGAL'
 ,p_company_schemas => 'MARCOLEGAL'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'MARCOLEG'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'MARCOLEGAL'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27624953012990338284',
  p_user_name                    => 'EMARROQUIN',
  p_first_name                   => 'Ervin',
  p_last_name                    => 'Marroquin',
  p_description                  => '',
  p_email_address                => 'ervinchito@gmail.com',
  p_web_password                 => '069AA1549D40F843A4C17E6B33A49F2C628BAE953B789480C4A952EE0C29BA087C913BA6D6155AE738514EF06AFDCCBE94288F64E49C19F055F6F3F3F49614A8',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'MARCOLEGAL',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201908240108','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27584182441718333189',
  p_user_name                    => 'ERVINCHITO@GMAIL.COM',
  p_first_name                   => 'Ervin',
  p_last_name                    => 'Marroquin',
  p_description                  => '',
  p_email_address                => 'ervinchito@gmail.com',
  p_web_password                 => 'F577FDA1589C46A85C2324824C2148FB68286340494DC28444771FEBB58CA10BA2E351364B97DE979BB3D4DC95815728637697040F78AB13150874E64C39100E',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'MARCOLEGAL',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201908161504','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27625313395674413122',
  p_user_name                    => 'JALVARADO',
  p_first_name                   => 'José Luis',
  p_last_name                    => 'lvarado Yoc',
  p_description                  => '',
  p_email_address                => 'jlayoc@gmail.com',
  p_web_password                 => '0A8D882DA7D1D2260BB1896B9EE80D69DEF8013F76045589FCCB13F6C0F3BF89C4BA97F32D4A9AD43E77E5B1D58E46EABFE82A078B4B01C468D44BE42EBF1083',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'MARCOLEGAL',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201908170000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27625310353043408894',
  p_user_name                    => 'MCHOCOJAY',
  p_first_name                   => 'Miriam Marisol',
  p_last_name                    => 'Chocojay de León',
  p_description                  => '',
  p_email_address                => 'marydiinda@gmail.com',
  p_web_password                 => 'A17A8A35DA6C83F0B092C0A5B984D7FFD3119E72222E6018B836D17852E734F86A9B055C45A041A3326B46C343250F8C0C754EED013BCDB0629C58F1E69DF1BD',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'MARCOLEGAL',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201908170000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--csv data loading
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 27585098849670391764,
    p_user_id => 27584182441718333189,
    p_password => '3CBDE684CE60DBF518611A044C27AE31D0BB5888E0229C1345F4FDDA99735A79926F67E172B961F5FA4377AFFD1C395C582C6C67C427D1B2EAA24150AD2C3E97');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 27625313404913413138,
    p_user_id => 27625313395674413122,
    p_password => '0A8D882DA7D1D2260BB1896B9EE80D69DEF8013F76045589FCCB13F6C0F3BF89C4BA97F32D4A9AD43E77E5B1D58E46EABFE82A078B4B01C468D44BE42EBF1083');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 27585014218961804504,
    p_user_id => 27584182441718333189,
    p_password => 'F577FDA1589C46A85C2324824C2148FB68286340494DC28444771FEBB58CA10BA2E351364B97DE979BB3D4DC95815728637697040F78AB13150874E64C39100E');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 27625310479514408911,
    p_user_id => 27625310353043408894,
    p_password => 'A17A8A35DA6C83F0B092C0A5B984D7FFD3119E72222E6018B836D17852E734F86A9B055C45A041A3326B46C343250F8C0C754EED013BCDB0629C58F1E69DF1BD');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 27624953135557338302,
    p_user_id => 27624953012990338284,
    p_password => 'ED06F5F9CC0743E1AC4D9A6844F3F8657810EEE6AE433F35835830D6EDE0146B101505BC40E9225D03F3FABB8856898BF6E1DE0B3FEF8ACE33B86B854359463A');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 28453981857285658933,
    p_user_id => 27624953012990338284,
    p_password => '069AA1549D40F843A4C17E6B33A49F2C628BAE953B789480C4A952EE0C29BA087C913BA6D6155AE738514EF06AFDCCBE94288F64E49C19F055F6F3F3F49614A8');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27635454873395312107,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P11_W27635003671430260476',
    p_attribute_value => '27635454368450312103____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27636384596062420172,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P13_W27636368969905412508',
    p_attribute_value => '27636384075857420168____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27730554668941092815,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P14_W27730548709354085287',
    p_attribute_value => '27730554175970092810____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27637077713449633939,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P15_W27637065246898628527',
    p_attribute_value => '27637077289535633936_Y___REPORT');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27727807765005108789,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P2_W27727802462947107407',
    p_attribute_value => '27727807270667108786____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28564741988170103195,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P2_W28564725130998076861',
    p_attribute_value => '28564741406860103192____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27625290116169381841,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P3_W27625285131992380444',
    p_attribute_value => '27625289624975381838____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27625306189551395216,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P5_W27625302264512394674',
    p_attribute_value => '27625305612985395214____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28564955720806816438,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P8_W28564936033390779474',
    p_attribute_value => '28564955220317816424____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27634005682823173709,
    p_user_id => 'EMARROQUIN',
    p_preference_name => 'FSP_IR_10084_P9_W27633968930830157924',
    p_attribute_value => '27634005190039173704____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27637219401620718564,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '253:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28564653269594659190,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '339:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27636455430083451139,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '371:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27624951205309330741,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '10084');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723759964499869541,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27624954869115341188,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723759042487868723,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27624951170505330721,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723276805194446025,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P273_W48571614952501952',
    p_attribute_value => '48572307979502610____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27731519043844813720,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4050_W10642116325440827',
    p_attribute_value => '10643624462441172____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27731517798523813375,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27637209534557708506,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28567465029284554106,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27633625114455129007,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28567371540667980106,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4850_W663191354226602129',
    p_attribute_value => '663193778295677089____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723760122666869730,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P514_W478900029710775865',
    p_attribute_value => '478900807852776971____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723276685905445871,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P516_W478906809191866600',
    p_attribute_value => '478908119205874812____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27723276333372445606,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P527_W478911116494917969',
    p_attribute_value => '478911808086918993____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27624951920511333697,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27727786237450098704,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27637220007481719381,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 28565775011722512331,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'PD_GLV_HIDE_ITEMS',
    p_attribute_value => 'N');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27720980191827746433,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'PD_GROUP_BY_COMPONENT_TYPE',
    p_attribute_value => 'N');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27637156365911681659,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '944');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27624950927046330706,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27625255809892362322,
    p_user_id => 'ERVINCHITO@GMAIL.COM',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'QUERY');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27729349297632698805,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P11_W27635003671430260476',
    p_attribute_value => '27635454368450312103____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27716661451815963561,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P15_W27637065246898628527',
    p_attribute_value => '27637077289535633936____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27729355167098705134,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P2_W27727802462947107407',
    p_attribute_value => '27727807270667108786____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27625686556469425817,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P3_W27625285131992380444',
    p_attribute_value => '27625289624975381838____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27625685439942424379,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P5_W27625302264512394674',
    p_attribute_value => '27625305612985395214____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 27716499943330386762,
    p_user_id => 'JALVARADO',
    p_preference_name => 'FSP_IR_10084_P9_W27633968930830157924',
    p_attribute_value => '27634005190039173704____');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634020076770195410
 ,p_command => 
'select * from LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170710','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634025404756200186
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       b.LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'inner join LEY b on a.ID_LEY = b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634029092722206791
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       b.LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'inner join LEY b on a.ID_LEY = b.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170712','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634064052253213290
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       b.LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'inner join LEY b on a.ID_LEY = b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170713','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634069407165219619
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       b.LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'inner join LEY b on a.ID_LEY= b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634080380252220797
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       b.LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'join LEY b on a.ID_LEY= b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634095619809222829
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       A.ID_LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'join LEY b on a.ID_LEY= b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634095933048223130
 ,p_command => 
'select a.ID_ARTICULO,'||wwv_flow.LF||
'       a.ARTICULO,'||wwv_flow.LF||
'       A.ID_LEY'||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
'join LEY b on a.ID_LEY= b.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634255269351228871
 ,p_command => 
'SELECT A.ID_ARTICULO,'||wwv_flow.LF||
'       A.ARTICULO,'||wwv_flow.LF||
'       A.ID_LEY'||wwv_flow.LF||
'  FROM ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY B ON AID_LEY= B.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634256441489229683
 ,p_command => 
'SELECT A.ID_ARTICULO,'||wwv_flow.LF||
'       A.ARTICULO,'||wwv_flow.LF||
'       A.ID_LEY'||wwv_flow.LF||
'  FROM ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY= B.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634411730136230710
 ,p_command => 
'SELECT A.ID_ARTICULO,'||wwv_flow.LF||
'       A.ARTICULO,'||wwv_flow.LF||
'       A.ID_LEY'||wwv_flow.LF||
'  FROM ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27634412230048231482
 ,p_command => 
'SELECT A.ID_ARTICULO,'||wwv_flow.LF||
'       A.ARTICULO,'||wwv_flow.LF||
'       B.LEY'||wwv_flow.LF||
'  FROM ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635079309367279554
 ,p_command => 
'select ID_ARTICULO as display_value, ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
' order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170724','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635238714223285674
 ,p_command => 
'select * from ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635411286997286684
 ,p_command => 
'select ID_ARTICULO as display_value, '||wwv_flow.LF||
'       CONCAT ( ARTICULO, ID_LEY ) as return_value '||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
' order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170726','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635411688437287040
 ,p_command => 
'select * from ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170726','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635415156590292978
 ,p_command => 
'select ID_ARTICULO as display_value, '||wwv_flow.LF||
'       ARTICULO||-||ID_LEY as return_value '||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
' order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170727','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635417460095294505
 ,p_command => 
'select ID_ARTICULO as display_value, '||wwv_flow.LF||
'       ARTICULO||''-''||ID_LEY as return_value '||wwv_flow.LF||
'  from ARTICULO'||wwv_flow.LF||
' order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170727','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635420310817299526
 ,p_command => 
'select A.ID_ARTICULO as display_value, '||wwv_flow.LF||
'       A.ARTICULO||''-''||B.LEY as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170728','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635421633282301953
 ,p_command => 
'select A.ID_ARTICULO as display_value, '||wwv_flow.LF||
'       B.LEY||'' - ''||A.ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170728','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635770800412326661
 ,p_command => 
'select ID_INCISO,'||wwv_flow.LF||
'       ID_ARTICULO,'||wwv_flow.LF||
'       INCISO,'||wwv_flow.LF||
'       DESCRIPCION'||wwv_flow.LF||
'  from INCISO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170732','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27635934573182344661
 ,p_command => 
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       B.*,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170735','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636245635974352683
 ,p_command => 
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY||'' - ''||B.ARTICULO ,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170737','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636263173648355762
 ,p_command => 
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY AS LEY '||wwv_flow.LF||
'       B.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170737','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636263662852356803
 ,p_command => 
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY AS LEY,'||wwv_flow.LF||
'       B.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170737','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636273976645364030
 ,p_command => 
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY AS LEY,'||wwv_flow.LF||
'       B.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'ORDER BY ID,LEY,ARTICULO,INCISO,DESCRIPCION'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170738','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636458615883454202
 ,p_command => 
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICUL'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170753','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636459255819455154
 ,p_command => 
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636465807557456127
 ,p_command => 
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636470279037459088
 ,p_command => 
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636967821215559218
 ,p_command => 
'alter table "LEY_EVALUADA" modify'||wwv_flow.LF||
'("CUMPLE" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170811','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636968976225560165
 ,p_command => 
'truncate table "LEY_EVALUADA"'||wwv_flow.LF||
'/'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170811','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636970679526561670
 ,p_command => 
'alter table "LEY_EVALUADA" modify'||wwv_flow.LF||
'("CUMPLE" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170811','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636977401308565660
 ,p_command => 
'SELECT * FROM LEY_EVALUADA'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170812','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636978929217567849
 ,p_command => 
'alter table "LEY_EVALUADA" modify'||wwv_flow.LF||
'("CUMPLE" NUMBER(10,2))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170812','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636984156513573468
 ,p_command => 
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170813','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636995692812588691
 ,p_command => 
'alter table "LEY_EVALUADA" modify'||wwv_flow.LF||
'("CUMPLE" NUMBER(10,2))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27636997372153591600
 ,p_command => 
'drop TABLE "LEY_EVALUADA"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637117823869657288
 ,p_command => 
'select A.ID_ARTICULO as display_value, '||wwv_flow.LF||
'       B.LEY||'' - ''||A.ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY AS LEY,'||wwv_flow.LF||
'       B.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'ORDER BY ID,'||
'LEY,ARTICULO,INCISO,DESCRIPCION'||wwv_flow.LF||
' '||wwv_flow.LF||
''||wwv_flow.LF||
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE A.CUMPLE WHEN 1 THEN ''SI'' ELSE ''NO'' AS CUMPLE'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C O'||
'N A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM LEY_EVALUADA'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170827','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637118090763657737
 ,p_command => 
'select A.ID_ARTICULO as display_value, '||wwv_flow.LF||
'       B.LEY||'' - ''||A.ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select A.ID_INCISO as ID,'||wwv_flow.LF||
'       C.LEY AS LEY,'||wwv_flow.LF||
'       B.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.INCISO,'||wwv_flow.LF||
'       A.DESCRIPCION'||wwv_flow.LF||
'  from INCISO A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'ORDER BY ID,'||
'LEY,ARTICULO,INCISO,DESCRIPCION'||wwv_flow.LF||
' '||wwv_flow.LF||
''||wwv_flow.LF||
'select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE A.CUMPLE WHEN 1 THEN ''SI'' ELSE ''NO'' AS CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C '||
'ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM LEY_EVALUADA'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170827','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637119091649659071
 ,p_command => 
'elect A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE A.CUMPLE WHEN 1 THEN ''SI'' ELSE ''NO'' AS CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INN'||
'ER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170828','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637122062580662779
 ,p_command => 
'Select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE A.CUMPLE WHEN 1 THEN ''SI'' ELSE ''NO'' AS CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'IN'||
'NER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170828','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637123259772664899
 ,p_command => 
'Select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE A.CUMPLE WHEN 1 THEN ''SI'' ELSE ''NO'' AS CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'IN'||
'NER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637137320943677316
 ,p_command => 
'Select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS CUMPLE'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICU'||
'LO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27637141636407678130
 ,p_command => 
'Select A.ID_LEY_EVALUADA AS ID,'||wwv_flow.LF||
'       B.EMPRESA AS EMPRESA,'||wwv_flow.LF||
'       D.LEY AS LEY,'||wwv_flow.LF||
'       C.ARTICULO AS ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS CUMPLE,'||wwv_flow.LF||
'       A.SANCION,'||wwv_flow.LF||
'       A.PLAZO_DE_IMPLEMENTACION,'||wwv_flow.LF||
'       A.SANCION_FINAL'||wwv_flow.LF||
'  from LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTIC'||
'ULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908170831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27727838888887122806
 ,p_command => 
'select * from respaldo'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908181950','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27727971302307163559
 ,p_command => 
'alter table "RESPALDO" add'||wwv_flow.LF||
'("MIME_TYPE" VARCHAR2(200))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908181956','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27728031870366178934
 ,p_command => 
'alter table "RESPALDO" add'||wwv_flow.LF||
'("FILENAME" VARCHAR2(200))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908181959','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27730555914888097499
 ,p_command => 
'SELECT * FROM RESPALDO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908182232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 27732040768761480152
 ,p_command => 
'Select * from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908182336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28564311917131997311
 ,p_command => 
'drop TABLE "RESPALDO"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908251945','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28564689848161732279
 ,p_command => 
'drop TABLE "RESPALDO"'||wwv_flow.LF||
'cascade constraints'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252011','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565333883988287620
 ,p_command => 
'select B.LEY||'' - ''||A.ARTICULO as display_value, '||wwv_flow.LF||
'       A.ID_ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565341910341297894
 ,p_command => 
'SELECT * FROM LEY_EVALUADA '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565357017188315546
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUDA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN ID_EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ID_ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565357114205316125
 ,p_command => 
'SELECT * FROM LEY_EVALUADA '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565357495258317285
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUDA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565359782835320346
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565377552774340531
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO||'' - ''|| D.INCISO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN INCISO D ON. C.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252042','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565378294903342159
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO||'' - ''|| D.INCISO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN INCISO D ON. C.ID_ARTICULO = D.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252042','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565378621820344918
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO||'' - ''|| D.INCISO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN INCISO D ON. A.ID_ARTICULO = D.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565379200622347040
 ,p_command => 
'select B.LEY||'' - ''||A.ARTICULO as display_value, '||wwv_flow.LF||
'       A.ID_ARTICULO as return_value '||wwv_flow.LF||
'  from ARTICULO A'||wwv_flow.LF||
'INNER JOIN LEY B ON A.ID_LEY = B.ID_LEY'||wwv_flow.LF||
' order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565381152235350494
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO||'' - ''|| D.INCISO as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565381281307351516
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO||'' - ''||  as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565382413714352750
 ,p_command => 
'SELECT B.EMPRESA||'' - ''|| C.ARTICULO  as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565384857181358224
 ,p_command => 
'SELECT B.EMPRESA||'' - ''||D.LEY ||'' - ''||C.ARTICULO  as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252045','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565385504158360472
 ,p_command => 
'SELECT B.EMPRESA||'' - ''||D.LEY ||'' - ''||C.ARTICULO  as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'||wwv_flow.LF||
'order by 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252045','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565476885531993540
 ,p_command => 
'select "A.ID_RESPALDO",'||wwv_flow.LF||
'       "C.EMPRESA",'||wwv_flow.LF||
'       "E.LEY",'||wwv_flow.LF||
'       "D.ARTICULO",'||wwv_flow.LF||
'       "A.DESCRIPCION",'||wwv_flow.LF||
'       sys.dbms_lob.getlength("A.DOCUMENTO_RESPALDO")"A.DOCUMENTO_RESPALDO",'||wwv_flow.LF||
'       "A.FILENAME","A.MIM_TYPE","A.LAST_UPDATE_DATE","A.CHARSET"'||wwv_flow.LF||
'from "RESPALDO" A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTIC'||
'ULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252055','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565486081065999184
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'from "RESPALDO" A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ART'||
'ICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565486427104000446
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'from RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTIC'||
'ULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565486976960002526
 ,p_command => 
'select "ID_RESPALDO","ID_LEY_EVALUDA","DESCRIPCION",sys.dbms_lob.getlength("DOCUMENTO_RESPALDO")"DOCUMENTO_RESPALDO","FILENAME","MIM_TYPE","LAST_UPDATE_DATE","CHARSET"from "RESPALDO"'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565523988010362844
 ,p_command => 
'SELECT B.EMPRESA||'' - ''||D.LEY ||'' - ''||C.ARTICULO  as display_value, '||wwv_flow.LF||
'      A.ID_LEY_EVALUADA as return_value '||wwv_flow.LF||
'FROM LEY_EVALUADA A'||wwv_flow.LF||
'INNER JOIN EMPRESA B ON A.ID_EMPRESA = B.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO C ON A.ID_ARTICULO = C.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY D ON C.ID_LEY = D.ID_LEY'||wwv_flow.LF||
'order by 1'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252046','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565812579019008601
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'from RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTIC'||
'ULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565813087111009750
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTIC'||
'ULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565813629938010074
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTIC'||
'ULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565814497477013184
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO)A.DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'--INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'--INNER JOIN A'||
'RTICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'--INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28565815545751015102
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO) DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICU'||
'LO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568466170016313405
 ,p_command => 
'select '||wwv_flow.LF||
'    4 as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568507022537854859
 ,p_command => 
'select'||wwv_flow.LF||
'    rownum  as value,'||wwv_flow.LF||
'    rownum || '' label'' as label'||wwv_flow.LF||
'from'||wwv_flow.LF||
'    dual'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568507922197856456
 ,p_command => 
'select * from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568515885859867342
 ,p_command => 
'select '||wwv_flow.LF||
'    5 as value'||wwv_flow.LF||
'    CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252320','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568515992036868023
 ,p_command => 
'select '||wwv_flow.LF||
'    5 as value,'||wwv_flow.LF||
'    CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252320','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568517191992868997
 ,p_command => 
'select '||wwv_flow.LF||
'    5 as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568518182477870817
 ,p_command => 
'select * from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568519362028875228
 ,p_command => 
'select count(id_empresa) '||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_emprea'||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568520050713876095
 ,p_command => 
'select count(id_empresa) '||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_empresa'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568520280507877610
 ,p_command => 
'select '||wwv_flow.LF||
'    count(id_empresa) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_empresa'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568523247529883291
 ,p_command => 
'select count(id_empresa) '||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_empresa'||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568524719704886306
 ,p_command => 
'select distint'||wwv_flow.LF||
'    count(id_empresa) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_empresa'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568524944647887170
 ,p_command => 
'select '||wwv_flow.LF||
'    count(id_empresa) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568525150993888659
 ,p_command => 
'select '||wwv_flow.LF||
'    4 as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'from ley_evaluada'||wwv_flow.LF||
'group by id_empresa'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568683785112932043
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.ID_EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO) DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ART'||
'ICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252331','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568689745843962891
 ,p_command => 
'select A.ID_EMPRESA, '||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTIUCULO = B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568689954839964543
 ,p_command => 
'select A.ID_EMPRESA, '||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568690136427966725
 ,p_command => 
'select COUNT(C.ID_LEY)'||wwv_flow.LF||
'      '||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568690329758967654
 ,p_command => 
'select COUNT(C.ID_LEY)'||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568690487806969023
 ,p_command => 
'select C.ID_LEY,'||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568755514165338534
 ,p_command => 
'select * from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252328','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568760441995346959
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO) DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICU'||
'LO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568760907164349582
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,       '||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568762177743354575
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.EMPRESA,'||wwv_flow.LF||
'       E.LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO) DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICU'||
'LO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252331','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568764394408357955
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.ID_EMPRESA,'||wwv_flow.LF||
'       E.ID_LEY,'||wwv_flow.LF||
'       D.ARTICULO,'||wwv_flow.LF||
'       A.DESCRIPCION,'||wwv_flow.LF||
'       sys.dbms_lob.getlength(A.DOCUMENTO_RESPALDO) DOCUMENTO_RESPALDO,'||wwv_flow.LF||
'       A.FILENAME,'||wwv_flow.LF||
'       A.MIM_TYPE,'||wwv_flow.LF||
'       A.LAST_UPDATE_DATE,'||wwv_flow.LF||
'       A.CHARSET'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN '||
'ARTICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252331','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568764893160359005
 ,p_command => 
'select A.ID_RESPALDO,'||wwv_flow.LF||
'       C.ID_EMPRESA,'||wwv_flow.LF||
'       E.ID_LEY,'||wwv_flow.LF||
'       D.ARTICULO'||wwv_flow.LF||
'FROM RESPALDO A'||wwv_flow.LF||
'INNER JOIN LEY_EVALUADA B ON A.ID_LEY_EVALUDA = B.ID_LEY_EVALUADA'||wwv_flow.LF||
'INNER JOIN EMPRESA C ON B.ID_EMPRESA = C.ID_EMPRESA'||wwv_flow.LF||
'INNER JOIN ARTICULO D ON B.ID_ARTICULO = D.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY E ON D.ID_LEY = E.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252332','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568765831074364608
 ,p_command => 
'select ID_EMPRESA, ID_ARTICULO'||wwv_flow.LF||
' from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568766667209366843
 ,p_command => 
'select ID_EMPRESA, '||wwv_flow.LF||
'ID_ARTICULO'||wwv_flow.LF||
' from ley_evaluada'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568903804872396460
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568986775359472401
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568989102184475398
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'   select '||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568989439169476092
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'   select '||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '||wwv_flow.LF||
') N1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568990363946476733
 ,p_command => 
'select '||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568991211825480935
 ,p_command => 
'select '||wwv_flow.LF||
'       CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END'||wwv_flow.LF||
'       COUNT(C.ID_LEY)'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568992076690481908
 ,p_command => 
'select '||wwv_flow.LF||
'       CASE WHEN A.CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END,'||wwv_flow.LF||
'       COUNT(C.ID_LEY)'||wwv_flow.LF||
'   from ley_evaluada A'||wwv_flow.LF||
'   INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'   INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'   WHERE ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568992433951484148
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568994165174487305
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY)  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568994428742488096
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28568994944880489178
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569001654316975878
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.ID_ARTICULO,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'GROUP BY A.ID_EMPRESA,C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569022454302977133
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'GROUP BY A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569032740514979869
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569032988524981942
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       COUNT(C.ID_LEY)'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569033190887983113
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
' from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569036069530990446
 ,p_command => 
'SELECT '||wwv_flow.LF||
'*'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569036262446992326
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569036432321993315
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569053425072031140
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY)'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569053791559033126
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY),'||wwv_flow.LF||
'    ID_EMPRESA'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569054137821034740
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    ID_EMPRESA'||wwv_flow.LF||
'    COUNT(ID_LEY),    '||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569054975745035618
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    ID_EMPRESA,'||wwv_flow.LF||
'    COUNT(ID_LEY)  '||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569074155440041613
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'WHERE ID_EMPRESA = 1 '||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252349','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569074970204043751
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'||wwv_flow.LF||
'HAVING ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569075178850045112
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY) as value,'||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE ID_EMPRESA = 1 '||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569087517190081900
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569087867716089931
 ,p_command => 
'select A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252357','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569088424682100495
 ,p_command => 
'select DISTINT COUNT(A.CUMPLE)'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252359','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569088698811102484
 ,p_command => 
'select DISTINCT COUNT(A.CUMPLE)'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569103360926503893
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569110102821515634
 ,p_command => 
'select A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 21 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252358','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569110567354516281
 ,p_command => 
'select A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252358','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569117631438522385
 ,p_command => 
'select COUNT(A.CUMPLE),'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252359','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569120561894523426
 ,p_command => 
'select COUNT(A.CUMPLE)'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908252359','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569125642533528938
 ,p_command => 
'select DISTINCT COUNT(A.CUMPLE),'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1 '
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569159148304548558
 ,p_command => 
'select A.ID_EMPRESA'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'WHERE A.ID_EMPRESA = 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569159652983549573
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569159952146550633
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_LEY),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260004','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569170711970555430
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260004','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569193672385558670
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260005','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569193859709559628
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA, ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260005','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569194061936562942
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    ID_EMPRESA,  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA, ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260006','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569194179325563447
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    ID_EMPRESA,  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260006','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569228742970133308
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    COUNT(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'||wwv_flow.LF||
'GROUP BY ID_EMPRESA,ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260005','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569282951194168673
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'GROUP BY A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260011','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569287707126182128
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569290494577186379
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'group by A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569292016055187713
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       '||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'group by A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569292619539188665
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'group by A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569292787656189624
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569297625344192184
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by A.ID_EMPRESA, C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260014','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569302681333587732
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       A.CUMPLE,'||wwv_flow.LF||
'       C.ID_LEY'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260010','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569304279954590250
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260010','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569307768065593888
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'GROUP BY A.ID_EMPRESA, C.ID_LEY, A.CUMPLE'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260011','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569398363559194117
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569399177625194909
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569399449762195972
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_EMPRESA),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569401119220199812
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_LEY),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260016','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569402576819202547
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_LEY),  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where A.ID_EMPRESA = 1'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260016','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569403209656203931
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_LEY) as value,  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where A.ID_EMPRESA = 1'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260016','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569404547243207965
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_LEY) as value,  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where A.ID_EMPRESA = 1'||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28569427185548246296
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    count(ID_LEY) as value,  '||wwv_flow.LF||
'    CASE WHEN CUMPLE = 1 THEN ''Si'' ELSE ''NO'' END AS label'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'('||wwv_flow.LF||
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where A.ID_EMPRESA = 1 and C.ID_LEY = 1'||wwv_flow.LF||
''||wwv_flow.LF||
') N1'||wwv_flow.LF||
'group by ID_EMPRESA, ID_LEY,cumple'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260024','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570024265219758622
 ,p_command => 
'SELECT * FROM ARTICULO'||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570025340732762631
 ,p_command => 
'SELECT COUNT(ID_ARTICULO) FROM ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570025848060764488
 ,p_command => 
'SELECT * FROM ARTICULO'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260039','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570301154112437617
 ,p_command => 
'select A.ID_EMPRESA,'||wwv_flow.LF||
'       C.ID_LEY,'||wwv_flow.LF||
'       A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260055','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570548950081866205
 ,p_command => 
'select A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where CUMPLE = 0'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570549368630866785
 ,p_command => 
'select A.CUMPLE'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where CUMPLE = 1'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 28570549792988867964
 ,p_command => 
'select COUNT(A.CUMPLE)'||wwv_flow.LF||
'from ley_evaluada A'||wwv_flow.LF||
'INNER JOIN ARTICULO B ON A.ID_ARTICULO= B.ID_ARTICULO'||wwv_flow.LF||
'INNER JOIN LEY C ON B.ID_LEY = C.ID_LEY'||wwv_flow.LF||
'where CUMPLE = 1'
    ,p_created_by => 'ERVINCHITO@GMAIL.COM'
    ,p_created_on => to_date('201908260056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'MARCOLEGAL');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908240102','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908251800','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908260111','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908260111','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908240102','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908240102','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908240103','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908240108','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908251801','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908251801','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908251802','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908251802','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908251802','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'JALVARADO',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908260108','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908161504','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908161525','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908162201','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908162201','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908170132','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908170658','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908181719','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ERVINCHITO@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_190100',
    p_access_date => to_date('201908182214','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170201','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'JALVARADO',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170215','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170227','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MCHOCOJAY',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170227','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170707','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908170843','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'JALVARADO',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908181636','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908181735','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908181819','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908181821','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908181828','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'JALVARADO',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908182125','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908182218','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908182222','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908220135','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'EMARROQUIN',
    p_auth_method => 'Application Express Authentication',
    p_app => 10084,
    p_owner => 'MARCOLEGAL',
    p_access_date => to_date('201908220142','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.41',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...feature types
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...feature map
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
null;
end;
/
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'MARCOLEGAL';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA MARCOLEGAL - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_190100
-- Exported 01:17 Monday August 26, 2019 by: ERVINCHITO@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 01:17 Monday August 26, 2019 by: ERVINCHITO@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'MARCOLEGAL';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
