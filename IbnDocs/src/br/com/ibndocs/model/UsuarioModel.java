package br.com.ibndocs.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.ibndocs.daoGenericos.UsuarioDao;
import br.com.ibndocs.daoGenericos.UsuarioDaoImplementacao;
import br.com.ibndocs.entity.Usuario;
import br.com.ibndocs.uteis.ConexaoEntityFactory;

public class UsuarioModel {

	public int ObterIdUsuarioPeloNome(String usuario) {
		EntityManager em = new ConexaoEntityFactory().getEntityManager();

		Query query = (Query) em.createQuery(
				"SELECT usuaId FROM Usuario u WHERE u.usuaUsuario=:usuario", Integer.class);

		query.setParameter("usuario", usuario);

		return Integer.parseInt(query.getSingleResult().toString());
		
	}
	
	
	public boolean VerificarAutenticacao(String usuario, String senha) {
		EntityManager em = new ConexaoEntityFactory().getEntityManager();

		Query query = (Query) em.createQuery(
				"SELECT COUNT(*) FROM Usuario u WHERE u.usuaUsuario=:usuario AND u.usuaSenha=:senha", Long.class);

		query.setParameter("usuario", usuario);
		query.setParameter("senha", senha);

		long existeUsuario = Long.parseLong(query.getSingleResult().toString());
		if (existeUsuario == 0)
			return false;
		else
			return true;
	}

	public String Salvar(Usuario usuario) {

		try {
			UsuarioDao usuarioDAO = new UsuarioDaoImplementacao();
			usuarioDAO.save(usuario);
			return "sucesso";
		} catch (Exception ex) {
			return "falha";
		}
	}
	
	public String Excluir(int id) {
		try {
			UsuarioDao usuarioDAO = new UsuarioDaoImplementacao();
			Usuario usuario = usuarioDAO.getById(Usuario.class, id);
			usuarioDAO.remove(usuario);
			return "sucesso";
		} catch (Exception ex) {
			return "falha";
		}
	}

}
