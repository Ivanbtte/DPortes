
package com.Dportes.service;

import com.Dportes.entity.Usuario;
import com.Dportes.model.IUsuarioModel;
import com.Dportes.model.UsuarioModelImpl;
import java.util.List;

public class UsuarioServiceImpl implements IUsuarioService{
    IUsuarioModel modelo = new UsuarioModelImpl();

    @Override
    public void crearRegistro(Usuario usuario) {
        modelo.crearRegistro(usuario);
    }

    @Override
    public void actualizarRegistro(Usuario usuario) {
        modelo.actualizarRegistro(usuario);
    }

    @Override
    public void eliminarRegistro(Usuario usuario) {
        modelo.eliminarRegistro(usuario);
    }

    @Override
    public List<Usuario> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Usuario obtenerRegistro(int idUsuario) {
        return modelo.obtenerRegistro(idUsuario);
    }
    
}
