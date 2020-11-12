package edu.eci.cvds.persistencia.mybatisimpl.mappers;

import java.math.BigInteger;
import java.util.List;
import edu.eci.cvds.entities.Rol;
import edu.eci.cvds.entities.Usuario;
import org.apache.ibatis.annotations.Param;

public interface UsuarioMapper {
    
	public List<Usuario> consultarUsuarios();
	public Usuario consultarUsuarioLog(@Param("carneT") int carnet,  @Param("contrasenA") String contrasena);
	
}
