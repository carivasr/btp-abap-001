@EndUserText.label: 'Employee - Logali'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZCDS_P_EMPLOYEE_CARR
  as projection on ZCDS_I_EMPLOYEE_CARR
{

  key e_number    as EmployeeNumber,
      e_name      as EmployeeName,
      e_deparment as EmployeeDepartment,
      status      as EmployeeStatus,
      job_code    as JobCode,
      job_title   as JobTitle,
      email       as Email,
      start_date  as StartDate,
      end_date    as EndDate

}
