
package com.Dportes.entity;

import java.io.Serializable;
import java.math.BigInteger;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author labso02
 */
@Entity
@Table(name = "admin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Admin.findAll", query = "SELECT a FROM Admin a"),
    @NamedQuery(name = "Admin.findByCodigo", query = "SELECT a FROM Admin a WHERE a.codigo = :codigo"),
    @NamedQuery(name = "Admin.findByNombre", query = "SELECT a FROM Admin a WHERE a.nombre = :nombre"),
    @NamedQuery(name = "Admin.findByApellido", query = "SELECT a FROM Admin a WHERE a.apellido = :apellido"),
    @NamedQuery(name = "Admin.findByDireccion", query = "SELECT a FROM Admin a WHERE a.direccion = :direccion"),
    @NamedQuery(name = "Admin.findByTelefono", query = "SELECT a FROM Admin a WHERE a.telefono = :telefono"),
    @NamedQuery(name = "Admin.findByCorreo", query = "SELECT a FROM Admin a WHERE a.correo = :correo"),
    @NamedQuery(name = "Admin.findBySexo", query = "SELECT a FROM Admin a WHERE a.sexo = :sexo"),
    @NamedQuery(name = "Admin.findByContrase\u00f1a", query = "SELECT a FROM Admin a WHERE a.contrase\u00f1a = :contrase\u00f1a"),
    @NamedQuery(name = "Admin.findByRol", query = "SELECT a FROM Admin a WHERE a.rol = :rol")})
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Size(max = 25)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 25)
    @Column(name = "apellido")
    private String apellido;
    @Size(max = 80)
    @Column(name = "direccion")
    private String direccion;
    @Column(name = "telefono")
    private BigInteger telefono;
    @Size(max = 50)
    @Column(name = "correo")
    private String correo;
    @Size(max = 20)
    @Column(name = "sexo")
    private String sexo;
    @Size(max = 20)
    @Column(name = "contrase\u00f1a")
    private String contraseña;
    @Size(max = 20)
    @Column(name = "rol")
    private String rol;

    public Admin() {
    }

    public Admin(Integer codigo) {
        this.codigo = codigo;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public BigInteger getTelefono() {
        return telefono;
    }

    public void setTelefono(BigInteger telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Admin)) {
            return false;
        }
        Admin other = (Admin) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.Dportes.entity.Admin[ codigo=" + codigo + " ]";
    }
    
}
