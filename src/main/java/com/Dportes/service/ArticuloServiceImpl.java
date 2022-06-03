
package com.Dportes.service;

import com.Dportes.entity.Articulo;
import com.Dportes.model.ArticuloModelImpl;
import com.Dportes.model.IArticuloModel;
import java.util.List;

public class ArticuloServiceImpl implements IArticuloService{
    IArticuloModel modelo = new ArticuloModelImpl();

    @Override
    public void crearRegistro(Articulo articulo) {
        modelo.crearRegistro(articulo);
    }

    @Override
    public void actualizarRegistro(Articulo articulo) {
        modelo.actualizarRegistro(articulo);
    }

    @Override
    public void eliminarRegistro(Articulo articulo) {
        modelo.eliminarRegistro(articulo);
    }

    @Override
    public List<Articulo> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Articulo obtenerRegistro(int idarticulo) {
        return modelo.obtenerRegistro(idarticulo);
    }
    
}
