@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_CA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relación Clientes - Libros'
define view z_b_clnts_lib_ca
  as select from ztb_clnts_lib_ca
{

  key id_libro                   as IdLibro,
      count(distinct id_cliente) as Ventas
}
group by
  id_libro
