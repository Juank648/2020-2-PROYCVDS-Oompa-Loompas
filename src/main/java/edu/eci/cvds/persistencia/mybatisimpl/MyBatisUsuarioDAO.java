package edu.eci.cvds.persistencia.mybatisimpl;

import com.google.inject.Inject;
import edu.eci.cvds.entities.Rol;
import edu.eci.cvds.entities.Usuario;
import edu.eci.cvds.persistencia.PersistenceException;
import edu.eci.cvds.persistencia.*;
import edu.eci.cvds.persistencia.mybatisimpl.mappers.*;
import java.math.BigInteger;
import java.util.List;

public class MyBatisUsuarioDAO implements UsuarioDAO {
    @Inject
    private UsuarioMapper usuarioMapper;

  
	
	@Override
    public List<Usuario> obtenerUsuarios() throws PersistenceException {
        try{
             return usuarioMapper.consultarUsuarios();
         }
         catch(Exception e){
             System.out.println(e);
             throw new PersistenceException("Error al consultar los usuarios:",e);
         }	
        
   
    }
	
	@Override
    public Usuario obtenerUsuarioLog(int carnet, String contrasena) throws PersistenceException {
        try{
             return usuarioMapper.consultarUsuarioLog(carnet,contrasena);
         }
         catch(org.apache.ibatis.exceptions.PersistenceException e){
             throw new PersistenceException("Error al consultar las credenciales del usuario:",e);
         }	
        
    }
	
	
	


	
		
}
