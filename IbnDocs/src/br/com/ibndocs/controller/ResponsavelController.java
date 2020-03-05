package br.com.ibndocs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.ibndocs.daoGenericos.ResponsavelDAO;
import br.com.ibndocs.daoGenericos.ResponsavelDaoImplementacao;
import br.com.ibndocs.entity.Responsavel;

@Controller
@RequestMapping("/Responsavel")
public class ResponsavelController {
	
	@RequestMapping("/Consulta")
	public ModelAndView ViewDashboardIndex() {
		ModelAndView view = new ModelAndView("Responsavel/Consulta");
		return view;
	}
	
	@RequestMapping("/Cadastro")
	public ModelAndView Cadastro() {
		Responsavel responsavel = new Responsavel();
		ModelAndView view = new ModelAndView("Responsavel/CadastroOrEditar");
		view.addObject("responsavel", responsavel);
		return view;
	}
	
	@RequestMapping("/Editar")
	public ModelAndView Editar(@RequestParam("id") int id) {
		ResponsavelDAO dao = new ResponsavelDaoImplementacao();
		Responsavel responsavel = dao.getById(Responsavel.class, id);
		ModelAndView view = new ModelAndView("Responsavel/CadastroOrEditar");
		view.addObject("responsavel", responsavel);
		return view;
	}
	
	@RequestMapping("/Excluir")
	public String Excluir(@RequestParam("id") int id) {
		try {
			ResponsavelDAO dao = new ResponsavelDaoImplementacao();
			Responsavel responsavel = dao.getById(Responsavel.class, id);
			dao.remove(responsavel);
			return "redirect:/Responsavel/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			return "redirect:/Responsavel/Consulta?mensagem=falha";
		}
	}
	
	@RequestMapping(value = "/Salvar", method = RequestMethod.POST)
	public String Salvar(Responsavel responsavel) {
		try {			
			ResponsavelDAO dao = new ResponsavelDaoImplementacao();
			dao.save(responsavel);
			return "redirect:/Responsavel/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			System.out.println("Erro ao salvar " + ex);
			return "redirect:/Responsavel/Consulta?mensagem=falha";
		}
	}

}
