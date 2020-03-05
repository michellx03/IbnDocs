package br.com.ibndocs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.ibndocs.daoGenericos.SetorDAO;
import br.com.ibndocs.daoGenericos.SetorDaoImplementacao;
import br.com.ibndocs.entity.Setor;

@Controller
@RequestMapping("/Setor")
public class SetorController {
	
	@RequestMapping("/Consulta")
	public ModelAndView ViewDashboardIndex() {
		ModelAndView view = new ModelAndView("Setor/Consulta");
		return view;
	}
	
	@RequestMapping("/Cadastro")
	public ModelAndView Cadastro() {
		Setor setor = new Setor();
		ModelAndView view = new ModelAndView("Setor/CadastroOrEditar");
		view.addObject("setor", setor);
		return view;
	}
	
	@RequestMapping("/Editar")
	public ModelAndView Editar(@RequestParam("id") int id) {
		SetorDAO dao = new SetorDaoImplementacao();
		Setor setor = dao.getById(Setor.class, id);
		ModelAndView view = new ModelAndView("Setor/CadastroOrEditar");
		view.addObject("setor", setor);
		return view;
	}
	
	@RequestMapping("/Excluir")
	public String Excluir(@RequestParam("id") int id) {
		try {
			SetorDAO dao = new SetorDaoImplementacao();
			Setor setor = dao.getById(Setor.class, id);
			dao.remove(setor);
			return "redirect:/Setor/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			return "redirect:/Setor/Consulta?mensagem=falha";
		}
	}
	
	@RequestMapping(value = "/Salvar", method = RequestMethod.POST)
	public String Salvar(Setor setor) {
		try {			
			SetorDAO dao = new SetorDaoImplementacao();
			dao.save(setor);
			return "redirect:/Setor/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			System.out.println("Erro ao salvar " + ex);
			return "redirect:/Setor/Consulta?mensagem=falha";
		}
	}

}
