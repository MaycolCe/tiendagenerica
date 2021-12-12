
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class clienteDao {
    
    Conexion cnn=new Conexion();
    PreparedStatement ps=null;
    ResultSet res=null;
    Connection con=null;
    
    public ArrayList<clienteDto> listarclientes(){    
    clienteDto clie=null;
    ArrayList<clienteDto> lista=new ArrayList<>();
    
    try{
    con=cnn.Conecta();
    String sql= "select * from clientes";
    ps=con.prepareStatement(sql);
    res=ps.executeQuery();
    while(res.next()){
    clie=new clienteDto(res.getLong(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5));  
    lista.add(clie);   
    }
    con.close();
    }catch(SQLException ex){
    
        System.out.println("Error al consultar los clientes: "+ ex);

    }
     return lista;
    }
    
    public clienteDto buscarCliente(long cedula){
    clienteDto clie=null;
    try{
        con=cnn.Conecta();
        String sql= "select * from clientes where cedula_cliente=?";
        ps=con.prepareStatement(sql);
        ps.setLong(1, cedula);
        res=ps.executeQuery();
        while(res.next()){
        clie=new clienteDto(res.getLong(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5));
        }
        con.close();
    }catch(SQLException ex){
        System.out.println("Error al consultar: "+ex);
    }    
    return clie;    
    }
    
    public boolean insertarCliente (clienteDto clie){
    
    boolean resultado=false;
    if(buscarCliente(clie.getCedula())==null){
    
    try{
    con=cnn.Conecta();
    String sql=("insert into clientes value(?,?,?,?,?)");
    ps=con.prepareStatement(sql);
    ps.setLong(1,clie.getCedula() );
    ps.setString(2, clie.getDireccion());
    ps.setString(3, clie.getCorreo());
    ps.setString(4, clie.getNombre());
    ps.setString(5,clie.getTelefono());
    resultado=ps.executeUpdate()>0;
    con.close();    
    }catch(SQLException ex){
    
        System.out.println("Error al insertar cliente "+ ex);
    }
    }else resultado=false;
    return resultado;
    }
    
    public boolean actualizaCliente(clienteDto clie){
    
    boolean resultado=false;    
    try{
    con=cnn.Conecta();
    String sql=("update clientes set direccion_cliente=?,email_cliente=?,nombre_cliente=?,telefono_cliente=? where clientes.cedula_cliente=?;");
    ps=con.prepareStatement(sql);
    ps.setString(1, clie.getDireccion());
    ps.setString(2, clie.getCorreo());
    ps.setString(3,clie.getNombre());
    ps.setString(4,clie.getTelefono());
    ps.setLong(5, clie.getCedula());
    resultado=ps.executeUpdate()>0;
    con.close();
    }catch(SQLException ex){
    
        System.out.println("Error al actualizar el cliente"+ex);
    }
    return resultado;
    }
    
    public boolean eliminaCliente(long cedula){
    boolean resultado=false;
    try{
    con=cnn.Conecta();
    String sql="delete from clientes where clientes.cedula_cliente= ?";
    ps=con.prepareStatement(sql);
    ps.setLong(1, cedula);
    resultado=ps.executeUpdate()>0;
    con.close();
    }catch(SQLException ex){
    
        System.out.println("error al eliminar el cliente");    
    }
       return resultado; 
    } 
}
