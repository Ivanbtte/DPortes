package com.Dportes.service;

import com.Dportes.entity.Admin;
import java.util.List;

public interface IAdminService {

    public void crearRegistro(Admin admin);

    public void actualizarRegistro(Admin admin);

    public void eliminarRegistro(Admin admin);

    public List<Admin> obtenerRegistros();

    public Admin obtenerRegistro(int idAdmin);
}
