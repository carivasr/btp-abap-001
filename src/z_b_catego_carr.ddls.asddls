@AbapCatalog.sqlViewName: 'ZV_CATEGO_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categoría'
define view z_b_catego_carr
  as select from ztb_catego_carr
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
