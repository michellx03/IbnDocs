package br.com.ibndocs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.ibndocs.daoGenericos.EmpresaDAO;
import br.com.ibndocs.daoGenericos.EmpresaDaoImplementacao;
import br.com.ibndocs.entity.Empresa;

@Controller
@RequestMapping("/Empresa")
public class EmpresaController {
	
	@RequestMapping("/Consulta")
	public ModelAndView ViewDashboardIndex() {
		ModelAndView view = new ModelAndView("Empresa/Consulta");
		return view;
	}
	
	@RequestMapping("/Cadastro")
	public ModelAndView Cadastro() {
		Empresa empresa = new Empresa();
		ModelAndView view = new ModelAndView("Empresa/CadastroOrEditar");
		view.addObject("empresa", empresa);
		return view;
	}
	
	@RequestMapping("/Editar")
	public ModelAndView Editar(@RequestParam("id") int id) {
		EmpresaDAO dao = new EmpresaDaoImplementacao();
		Empresa empresa = dao.getById(Empresa.class, id);
		ModelAndView view = new ModelAndView("Empresa/CadastroOrEditar");
		view.addObject("empresa", empresa);
		return view;
	}
	
	@RequestMapping("/Excluir")
	public String Excluir(@RequestParam("id") int id) {
		try {
			EmpresaDAO dao = new EmpresaDaoImplementacao();
			Empresa empresa = dao.getById(Empresa.class, id);
			dao.remove(empresa);
			return "redirect:/Empresa/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			return "redirect:/Empresa/Consulta?mensagem=falha";
		}
	}
	
	@RequestMapping(value = "/Salvar", method = RequestMethod.POST)
	public String Salvar(Empresa empresa) {
		try {			
			EmpresaDAO dao = new EmpresaDaoImplementacao();
			dao.save(empresa);
			return "redirect:/Empresa/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			System.out.println("Erro ao salvar " + ex);
			return "redirect:/Empresa/Consulta?mensagem=falha";
		}
	}

}
