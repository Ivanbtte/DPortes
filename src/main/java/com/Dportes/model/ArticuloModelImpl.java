
package com.Dportes.model;

import com.Dportes.entity.Articulo;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ArticuloModelImpl implements IArticuloModel{
    private SessionFactory sf;
    private Session s;

    @Override
    public void crearRegistro(Articulo articulo) {
     try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.save(articulo);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al crear los registros: "+e.getMessage());
        }
    }

    @Override
    public void actualizarRegistro(Articulo articulo) {
    try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.update(articulo);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al recuperar los registros: "+e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Articulo articulo) {
    try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            s.beginTransaction();
            s.delete(articulo);
            s.getTransaction().commit();
            s.close();
            sf.close();
        }
        catch (HibernateException e){
            System.out.println("Error al eliminar los registros: "+e.getMessage());
        }
    }

    @Override
    public List<Articulo> obtenerRegistros() {
    try{
            sf = new Configuration().configure().buildSessionFactory();
            s= sf.openSession();
            List<Articulo> lista = s.createCriteria(Articulo.class).list();
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
    public Articulo obtenerRegistro(int idarticulo) {
    try{
        sf = new Configuration().configure().buildSessionFactory();
        s= sf.openSession();
        Articulo usuario = (Articulo) s.get(Articulo.class, idarticulo);
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
