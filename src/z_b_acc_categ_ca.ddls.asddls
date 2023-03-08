@AbapCatalog.sqlViewName: 'ZV_ACC_CATEG_CA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipo acceso - Categoría'
define view z_b_acc_categ_ca as select from ztb_acc_categ_ca
{
      key bi_categ as BiCateg,
      key tipo_acceso as TipoAcceso
}
