package br.com.ibndocs.controller;

import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.ibndocs.daoGenericos.ControleAcessoDao;
import br.com.ibndocs.daoGenericos.ControleAcessoDaoImplementacao;
import br.com.ibndocs.daoGenericos.UsuarioDao;
import br.com.ibndocs.daoGenericos.UsuarioDaoImplementacao;
import br.com.ibndocs.entity.Usuario;
import br.com.ibndocs.entity.UsuarioRegra;
import br.com.ibndocs.model.ControleAcessoModel;
import br.com.ibndocs.model.UsuarioModel;
import br.com.ibndocs.uteis.ConexaoEntityFactory;

@Controller
@RequestMapping("/ControleAcesso")
public class ControleAcessoController {

	@RequestMapping(value = "/Consulta")
	public ModelAndView ViewDashboardIndex() {
		ModelAndView view = new ModelAndView("ControleAcesso/Consulta");
		return view;

	}

	@RequestMapping(value = "/Alteracao")
	public ModelAndView ViewDashboardAlteracao(String usuario) {
		ModelAndView view = new ModelAndView("ControleAcesso/Alteracao");
		view.addObject("usuario", usuario);
		return view;

	}
	
	@RequestMapping(value = "/AcessoNegado")
	public ModelAndView ViewDashboardAcessoNegado() {
		ModelAndView view = new ModelAndView("ControleAcesso/AcessoNegado");
		return view;

	}

	@RequestMapping(value = "/Salvar")
	public String ViewDashboardCadastroSalvar(@RequestParam(value = "usuario") String usuario,
			HttpServletRequest request) {

		ControleAcessoModel cam = new ControleAcessoModel();
		cam.RemoverTodasRegrasPeloUsuario(usuario);

		List<String> requestParameterNames = Collections.list((Enumeration<String>) request.getParameterNames());
		ControleAcessoDao daoControleAcesso = new ControleAcessoDaoImplementacao();

		UsuarioModel usuModel = new UsuarioModel();
		int idUser = usuModel.ObterIdUsuarioPeloNome(usuario);
		for (String parametros : requestParameterNames) {

			if (parametros.equals("usuario") == false) {
				UsuarioRegra usuRegra = new UsuarioRegra();
				usuRegra.setUsreRegrId(Integer.parseInt(parametros));
				usuRegra.setUsreUsuaId(idUser);
				daoControleAcesso.save(usuRegra);
			}
		}

		return "redirect:/ControleAcesso/Consulta?mensagem=sucesso";

	}

}
