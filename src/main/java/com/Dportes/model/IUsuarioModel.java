
package com.Dportes.model;

import com.Dportes.entity.Usuario;
import java.util.List;

public interface IUsuarioModel {
    public void crearRegistro(Usuario usuario);
 public void actualizarRegistro(Usuario usuario);
 public void eliminarRegistro(Usuario usuario);
 public List<Usuario> obtenerRegistros();
 public Usuario obtenerRegistro(int idUsuario);
}
