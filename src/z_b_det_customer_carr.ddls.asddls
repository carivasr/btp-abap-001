@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_CA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customer'
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMER_CARR
  as select from zrent_t_customer
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
