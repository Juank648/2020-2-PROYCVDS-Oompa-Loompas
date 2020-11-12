
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.eci.cvds.persistencia;

import edu.eci.cvds.entities.Rol;
import edu.eci.cvds.entities.Usuario;
import java.util.*;
import java.lang.String;
import java.math.BigInteger;

public interface UsuarioDAO {
	
	public List<Usuario> obtenerUsuarios() throws PersistenceException;
	
	public Usuario obtenerUsuarioLog(int carnet, String contrasena) throws PersistenceException;
	


}
