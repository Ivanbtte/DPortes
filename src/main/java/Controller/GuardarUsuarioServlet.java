package Controller;

import com.Dportes.entity.Admin;
import com.Dportes.entity.Usuario;
import com.Dportes.service.AdminServiceImpl;
import com.Dportes.service.IAdminService;
import com.Dportes.service.IUsuarioService;
import com.Dportes.service.UsuarioServiceImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuardarUsuarioServlet extends HttpServlet {

    private IUsuarioService service;
    private IAdminService service2;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("switch: " + action);
        switch (action) {
            case "create":
                crear(request, response);
                break;
            case "listar":
                listar(request, response);
                break;
            case "eliminar":
                eliminar(request, response);
                break;
            case "editar":
                editar(request, response);
                break;
            case "guardar":
                guardar(request, response);
                break;
            case "validar":
                Validar(request, response);
                break;    
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("switch: " + action);
        switch (action) {
            case "create":
                crear(request, response);
                break;
            case "listar":
                listar(request, response);
                break;
            case "eliminar":
                eliminar(request, response);
                break;
            case "editar":
                editar(request, response);
                break;
            case "guardar":
                guardar(request, response);
                break;
            case "validar":
                Validar(request, response);
                break;     
        }

    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getParameter("Contra"));
        IUsuarioService service = new UsuarioServiceImpl();
        Usuario u = new Usuario();
        BigInteger tel = new BigInteger(request.getParameter("phone"));
        u.setNombre(request.getParameter("Nombre"));
        u.setApellido(request.getParameter("Apellido"));
        u.setContraseña(request.getParameter("Contra"));
        u.setTelefono(tel);
        u.setCorreo(request.getParameter("email"));
        u.setDireccion(request.getParameter("Direccion"));
        u.setSexo(request.getParameter("state"));
        u.setEdad(18);
        service.crearRegistro(u);
    }

    private void listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Listar.jsp");
        this.service = new UsuarioServiceImpl();
        List<Usuario> listaUsuario = this.service.obtenerRegistros();
        request.setAttribute("listaUsuario", listaUsuario);
        dispatcher.forward(request, response);
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idUsuario = Integer.parseInt(request.getParameter("id"));
        Usuario u = new Usuario();
        this.service = new UsuarioServiceImpl();
        u = this.service.obtenerRegistro(idUsuario);
        IUsuarioService service = new UsuarioServiceImpl();
        service.eliminarRegistro(u);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Listar.jsp");
        List<Usuario> listaUsuario = this.service.obtenerRegistros();
        request.setAttribute("listaUsuario", listaUsuario);
        dispatcher.forward(request, response);
    }

    private void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idUsuario = Integer.parseInt(request.getParameter("id"));
        Usuario usuario = new Usuario();
        this.service = new UsuarioServiceImpl();
        usuario = this.service.obtenerRegistro(idUsuario);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Editar.jsp");
        request.setAttribute("usuario", usuario);
        dispatcher.forward(request, response);
    }

    private void guardar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idUsuario = Integer.parseInt(request.getParameter("id"));
        Usuario u = new Usuario();
        this.service = new UsuarioServiceImpl();
        u = this.service.obtenerRegistro(idUsuario);
        BigInteger tel = new BigInteger(request.getParameter("phone"));
        u.setNombre(request.getParameter("Nombre"));
        u.setApellido(request.getParameter("Apellido"));
        u.setContraseña(request.getParameter("Contra"));
        u.setTelefono(tel);
        u.setCorreo(request.getParameter("email"));
        u.setDireccion(request.getParameter("Direccion"));
        u.setSexo(request.getParameter("state"));
        IUsuarioService service = new UsuarioServiceImpl();
        service.actualizarRegistro(u);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Listar.jsp");
        List<Usuario> listaUsuario = this.service.obtenerRegistros();
        request.setAttribute("listaUsuario", listaUsuario);
        dispatcher.forward(request, response);
    }

    private void Validar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int aux=0;
        String User = request.getParameter("email");
        String Contra = request.getParameter("Contra");
        this.service = new UsuarioServiceImpl();
        this.service2 = new AdminServiceImpl();
        List<Usuario> listaUsuario = this.service.obtenerRegistros();
        List<Admin> listaAdmin = this.service2.obtenerRegistros();
        for (Usuario usuario : listaUsuario) {
            if (usuario.getCorreo().equals(User)) {
                for (Usuario usuario2 : listaUsuario) {
                    if (usuario2.getContraseña().equals(Contra)) {
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/index2.jsp");
                        dispatcher.forward(request, response);
                        aux=1;
                    }
                }
            }
        }
        for (Admin admin : listaAdmin) {
            if (admin.getCorreo().equals(User)) {
                for (Admin admin2 : listaAdmin) {
                    if (admin2.getContraseña().equals(Contra)) {
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/home.jsp");
                        dispatcher.forward(request, response);
                        aux=1;
                    }
                }
            }
        }
        if (aux==0){
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/IniciarSesion.jsp");
                        dispatcher.forward(request, response);
        }
    }
}
