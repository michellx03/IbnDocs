package br.com.ibndocs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.ibndocs.daoGenericos.DocumentoDAO;
import br.com.ibndocs.daoGenericos.DocumentoDAOImplementacao;
import br.com.ibndocs.daoGenericos.EmpresaDAO;
import br.com.ibndocs.daoGenericos.EmpresaDaoImplementacao;
import br.com.ibndocs.entity.Documentos;
import br.com.ibndocs.entity.Empresa;

@Controller
@RequestMapping("/Documentos")
public class DocumentosController {
	
	@RequestMapping("/Consulta")
	public ModelAndView ViewDashboardIndex() {
		ModelAndView view = new ModelAndView("Documentos/Consulta");
		return view;
	}
	
	@RequestMapping("/Cadastro")
	public ModelAndView Cadastro() {
		Documentos documetos = new Documentos();
		ModelAndView view = new ModelAndView("Documentos/CadastroOrEditar");
		view.addObject("documetos", documetos);
		return view;
	}
	
	@RequestMapping("/Editar")
	public ModelAndView Editar(@RequestParam("id") int id) {
		DocumentoDAO dao = new DocumentoDAOImplementacao();
		Documentos documentos = dao.getById(Documentos.class, id);
		ModelAndView view = new ModelAndView("Documentos/CadastroOrEditar");
		view.addObject("documentos", documentos);
		return view;
	}
	
	@RequestMapping("/Excluir")
	public String Excluir(@RequestParam("id") int id) {
		try {
			DocumentoDAO dao = new DocumentoDAOImplementacao();
			Documentos documentos = dao.getById(Documentos.class, id);
			dao.remove(documentos);
			return "redirect:/Documentos/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			return "redirect:/Documentos/Consulta?mensagem=falha";
		}
	}
	
	@RequestMapping(value = "/Salvar", method = RequestMethod.POST)
	public String Salvar(Documentos documentos) {
		try {			
			DocumentoDAO dao = new DocumentoDAOImplementacao();
			dao.save(documentos);
			return "redirect:/Documentos/Consulta?mensagem=sucesso";
		}catch(Exception ex) {
			System.out.println("Erro ao salvar " + ex);
			return "redirect:/Documentos/Consulta?mensagem=falha";
		}
	}

}
