@AbapCatalog.sqlViewName: 'ZV_RENTL_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view Z_I_RENTING_CARR
  as select from Z_B_CARS_CARR as Cars
  association [1]    to Z_B_REM_DAYS_CARR     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS_CARR       as _Brands      on Cars.Marca     = _Brands.Marca
  association [0..*] to Z_B_DET_CUSTOMER_CARR as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{

  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      UndPotencia,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
       when _RemDays.Dias <= 0 then 0
       when _RemDays.Dias between 1 and 30 then 1
       when _RemDays.Dias between 31 and 100 then 2
       when _RemDays.Dias > 100 then 3
       else 0
      end as TiempoRenta,
      '' as Estado,
      _Brands.Imagen,
      _DetCustomer

}
