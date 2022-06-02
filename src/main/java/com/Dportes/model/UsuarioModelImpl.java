
package com.Dportes.model;

import com.Dportes.entity.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UsuarioModelImpl implements IUsuarioModel{
    private SessionFactory sf;
    private Session s;

    @Override
    public void crearRegistro(Usuario usuario) {
     try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.save(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al crear los registros: "+e.getMessage());
        }
    }

    @Override
    public void actualizarRegistro(Usuario usuario) {
      try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.update(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al recuperar los registros: "+e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Usuario usuario) {
     try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.delete(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al eliminar los registros: "+e.getMessage());
        }
    }

    @Override
    public List<Usuario> obtenerRegistros() {
        try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            List<Usuario> lista = s.createCriteria(Usuario.class).list();
            s.close();
            sf.close();
            return lista;
        }
        catch (HibernateException e){
            System.out.println("Error al recuperar los registros: "+e.getMessage());
        }
        return null;
    }

    @Override
    public Usuario obtenerRegistro(int idUsuario) {
        try{
        sf = new Configuration().configure().buildSessionFactory();
        s= sf.openSession();
        Usuario usuario = (Usuario) s.get(Usuario.class, idUsuario);
        s.close();
        sf.close();
        return usuario;
        }
        catch (HibernateException e){
            System.out.println("Error al recuperar los registros: "+e.getMessage());
        }
        return null;
    }
    
    
}
