package controller;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Categoria;
import entity.Sala;
import entity.Unidade;
import service.CategoriaService;
import service.SalaService;
import service.UnidadeService;

@RequestMapping(value = "sala")
@Controller
public class SalaController {

	@Autowired
	private SalaService pService;

	@RequestMapping(value = "listSalas", method = RequestMethod.GET)
	public String list(ModelMap map) {
		List<Sala> salas = pService.listAll();
		map.addAttribute("salas", salas);
		
		int act = 3;
		map.addAttribute("act", act);

		return "produto/listSalas";
	}

	@RequestMapping(value = "{id}/remove", method = RequestMethod.GET)
	public String remove(@PathVariable Long id, ModelMap map) {
		pService.remove(new Sala(id));
		int act = 3;
		map.addAttribute("act", act);
		return "redirect:/sala/listSalas";
	}
	@RequestMapping(value = "inicio", method = RequestMethod.GET)
	public String inicio() {
		
		
		return "login/inicio";
	}

	@RequestMapping(value = "formCadastro", method = RequestMethod.GET)
	public String createForm(ModelMap map) {
		Sala sala = new Sala();
		map.addAttribute("sala", sala);
		map.addAttribute("botaoNome", "Cadastrar");
		map.addAttribute("focus", "autofocus");
		int act = 3;
		map.addAttribute("act", act);
		return "produto/cadSala";
		
	}

	@RequestMapping(value = "{id}/formCadastro", method = RequestMethod.GET)
	public String updateForm(@PathVariable Long id, ModelMap map) {
		Sala sala = pService.findId(id);
		map.addAttribute("salas", sala);
		map.addAttribute("botaoNome", "Atualizar");
		int act = 3;
		map.addAttribute("act", act);
		return "produto/cadProduto";
	}

	
	@RequestMapping(value = "cadastrar", method = RequestMethod.POST)
	public String save(@ModelAttribute("produto") Sala sala, ModelMap map) {

		if (sala.hasValidId()) {
			int act = 3;
			map.addAttribute("act", act);
			pService.update(sala);
		} else {
			int act = 3;
			map.addAttribute("act", act);
			pService.insert(sala);
		}
		int act = 3;
		map.addAttribute("act", act);
return "redirect:/sala/listSalas";
		
	}

}