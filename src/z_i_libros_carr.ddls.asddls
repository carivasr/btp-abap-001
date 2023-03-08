@AbapCatalog.sqlViewName: 'ZV_ILIBROS_CARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view Z_I_LIBROS_CARR
  as select from    ztb_libros_carr  as Libros
    inner join      ztb_catego_carr  as Catego on Libros.bi_categ = Catego.bi_categ
    left outer join z_b_clnts_lib_ca as Ventas on Libros.id_libro = Ventas.IdLibro
  association [0..*] to z_b_clientes_car as _Clientes on $projection.IdLibro = _Clientes.IdLibro

{

  key Libros.id_libro    as IdLibro,
      Libros.titulo      as Titulo,
      Libros.bi_categ    as Categoria,
      Libros.autor       as Autor,
      Libros.editorial   as Editorial,
      Libros.idioma      as Idioma,
      Libros.paginas     as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      Libros.precio      as Precio,
      case
       when Ventas.Ventas < 1 then 0
       when Ventas.Ventas = 1 then 1
       when Ventas.Ventas = 2 then 2
       when Ventas.Ventas > 2 then 3
       else 0
      end                as Ventas,
      case Ventas.Ventas
       when 0 then ''
       else ''
      end as Text, 
      @Semantics.currencyCode
      Libros.moneda      as Moneda,
      Libros.formato     as Formato,
      Catego.descripcion as Descripcion,
      Libros.url         as Imagen,
      _Clientes

}
