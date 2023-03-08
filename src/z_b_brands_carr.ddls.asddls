@AbapCatalog.sqlViewName: 'ZV_BRANDSL_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view Z_B_BRANDS_CARR
  as select from zrent_t_brands
{

  key marca as Marca,
  @UI.hidden: true
      url   as Imagen

}
