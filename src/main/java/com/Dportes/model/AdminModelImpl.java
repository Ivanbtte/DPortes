package com.Dportes.model;

import com.Dportes.entity.Admin;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class AdminModelImpl implements IAdminModel {

    private SessionFactory sf;
    private Session s;

    @Override
    public void crearRegistro(Admin admin) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(admin);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al crear los registros: " + e.getMessage());
        }
    }

    @Override
    public void actualizarRegistro(Admin admin) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.update(admin);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al recuperar los registros: " + e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Admin admin) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(admin);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al eliminar los registros: " + e.getMessage());
        }
    }

    @Override
    public List<Admin> obtenerRegistros() {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            List<Admin> lista = s.createCriteria(Admin.class).list();
            s.close();
            sf.close();
            return lista;
        } catch (HibernateException e) {
            System.out.println("Error al recuperar los registros: " + e.getMessage());
        }
        return null;
    }

    @Override
    public Admin obtenerRegistro(int idAdmin) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Admin usuario = (Admin) s.get(Admin.class, idAdmin);
            s.close();
            sf.close();
            return usuario;
        } catch (HibernateException e) {
            System.out.println("Error al recuperar los registros: " + e.getMessage());
        }
        return null;
    }

}
