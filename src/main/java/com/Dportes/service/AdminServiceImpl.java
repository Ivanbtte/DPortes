
package com.Dportes.service;

import com.Dportes.entity.Admin;
import com.Dportes.model.AdminModelImpl;
import com.Dportes.model.IAdminModel;
import java.util.List;

public class AdminServiceImpl implements IAdminService {
    IAdminModel modelo = new AdminModelImpl();

    @Override
    public void crearRegistro(Admin admin) {
     modelo.crearRegistro(admin);
    }

    @Override
    public void actualizarRegistro(Admin admin) {
    modelo.actualizarRegistro(admin);
    }

    @Override
    public void eliminarRegistro(Admin admin) {
    modelo.eliminarRegistro(admin);
    }

    @Override
    public List<Admin> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Admin obtenerRegistro(int idAdmin) {
        return modelo.obtenerRegistro(idAdmin);
    }
    
}
