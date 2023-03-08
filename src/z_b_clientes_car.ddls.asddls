@AbapCatalog.sqlViewName: 'ZV_CLIENTES_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view z_b_clientes_car
  as select from ztb_clientes_car as Clientes
    inner join   ztb_clnts_lib_ca as Clnts on Clientes.id_cliente = Clnts.id_cliente
{

  key Clnts.id_libro                          as IdLibro,
  key Clientes.id_cliente                     as IdCliente,
  key Clientes.tipo_acceso                    as TipoAcceso,
      Clientes.nombre                         as Nombre,
      Clientes.apellidos                      as Apellidos,
      Clientes.email                          as Email,
      Clientes.url                            as Imagen,
      concat_with_space(nombre, apellidos, 1) as NombreCompleto

}
