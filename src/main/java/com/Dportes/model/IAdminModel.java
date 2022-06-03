
package com.Dportes.model;

import com.Dportes.entity.Admin;
import java.util.List;

public interface IAdminModel {
 
 public void crearRegistro(Admin admin);
 public void actualizarRegistro(Admin admin);
 public void eliminarRegistro(Admin admin);
 public List<Admin> obtenerRegistros();
 public Admin obtenerRegistro(int idAdmin);
 
}
