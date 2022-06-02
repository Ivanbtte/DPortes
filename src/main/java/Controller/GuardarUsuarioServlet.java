package Controller;

import com.Dportes.entity.Usuario;
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
        }

    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IUsuarioService service = new UsuarioServiceImpl();
        Usuario u = new Usuario();
        BigInteger tel = new BigInteger(request.getParameter("phone"));
        u.setNombre(request.getParameter("Nombre"));
        u.setApellido(request.getParameter("Apellido"));
        u.setContraseña(request.getParameter("Contraseña"));
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
        u.setContraseña(request.getParameter("Contraseña"));
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
}
