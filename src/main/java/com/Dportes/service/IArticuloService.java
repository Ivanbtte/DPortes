
package com.Dportes.service;

import com.Dportes.entity.Articulo;
import java.util.List;

public interface IArticuloService {
    public void crearRegistro(Articulo articulo);
 public void actualizarRegistro(Articulo articulo);
 public void eliminarRegistro(Articulo articulo);
 public List<Articulo> obtenerRegistros();
 public Articulo obtenerRegistro(int idarticulo);
}
