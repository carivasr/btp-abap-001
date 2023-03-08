@AbapCatalog.sqlViewName: 'ZDV_EMPL_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee - Logali'
define root view ZCDS_I_EMPLOYEE_CARR
  as select from zemployee_carr
{

  key e_number,
      e_name,
      e_deparment,
      status,
      job_code,
      job_title,
      email,
      start_date,
      end_date 

}
