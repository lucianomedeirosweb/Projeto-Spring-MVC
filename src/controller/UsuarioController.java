package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Usuario;
import service.UsuarioService;

@RequestMapping(value = "usuarios")
@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService uService;

	@RequestMapping(value = "listUsuarios", method = RequestMethod.GET)
	public String list(ModelMap map) {
		List<Usuario> usuarios = uService.listAll();
		map.addAttribute("usuarios", usuarios);
		map.addAttribute("filtro", new Usuario());
		int act = 2;
		map.addAttribute("act", act);
		return "usuario/listUsuarios";
	}

	@RequestMapping(value = "filtrar", method = RequestMethod.GET)
	public String filtrar(@ModelAttribute("filtro") Usuario filtro, ModelMap map) {

		List<Usuario> usuarios = uService.buscar(filtro);
		map.addAttribute("usuarios", usuarios);
		map.addAttribute("filtro", filtro);
		int act = 2;
		map.addAttribute("act", act);
		return "usuario/listUsuarios";
	}

	@RequestMapping(value = "{id}/remove", method = RequestMethod.GET)
	public String remove(@PathVariable Long id, ModelMap map) {
		uService.remove(new Usuario(id));
		int act = 2;
		map.addAttribute("act", act);
		return "redirect:/usuarios/listUsuarios";
	}

	@RequestMapping(value = "formCadastro", method = RequestMethod.GET)
	public String createForm(ModelMap map) {
		map.addAttribute("usuario", new Usuario());
		map.addAttribute("botaoNome", "Cadastrar");
		map.addAttribute("focus", "autofocus");
		int act = 2;
		map.addAttribute("act", act);
		return "usuario/cadUsuario";
	}

	@RequestMapping(value = "{id}/formCadastro", method = RequestMethod.GET)
	public String senhaForm(@PathVariable Long id, ModelMap map) {
		Usuario usuario = uService.findId(id);
		usuario.setrSenha(usuario.getSenha());
		map.addAttribute("usuario", usuario);
		int act = 2;
		map.addAttribute("act", act);
		map.addAttribute("botaoNome", "Atualizar");
		return "usuario/cadUsuario";
	}

	@RequestMapping(value = "cadastrar", method = RequestMethod.POST)
	public String save(@ModelAttribute("usuario") Usuario usuario, ModelMap map) {

		if (usuario.hasValidId()) {
			Usuario antigo = uService.findId(usuario.getId());
			if(!antigo.getSenha().equals(usuario.getSenha())){
				if (usuario.getSenha().equals(usuario.getrSenha())) {
					try {
						MessageDigest m = MessageDigest.getInstance("MD5");
						m.update(usuario.getSenha().getBytes(), 0, usuario.getSenha().length());
						usuario.setSenha(new BigInteger(1, m.digest()).toString(16));
					} catch (NoSuchAlgorithmException e) {
						e.printStackTrace();
					}					
				} else {
					usuario.setSenha("");
					usuario.setrSenha("");
					map.addAttribute("usuario", usuario);
					map.addAttribute("botaoNome", "Cadastrar");
					map.addAttribute("tagError", "has-error");
					map.addAttribute("focusError", "autofocus");
					int act = 2;
					map.addAttribute("act", act);
					map.addAttribute("msg", "<strong>Atenção!</strong> As senha digitadas não são iguais!");
					return "usuario/cadUsuario";
				}
			}			
			uService.update(usuario);
		} else {
			if (usuario.getSenha().equals(usuario.getrSenha())) {
				try {
					MessageDigest m = MessageDigest.getInstance("MD5");
					m.update(usuario.getSenha().getBytes(), 0, usuario.getSenha().length());
					usuario.setSenha(new BigInteger(1, m.digest()).toString(16));
				} catch (NoSuchAlgorithmException e) {
					e.printStackTrace();
				}
				uService.insert(usuario);
			} else {
				usuario.setSenha("");
				usuario.setrSenha("");
				map.addAttribute("usuario", usuario);
				map.addAttribute("botaoNome", "Cadastrar");
				map.addAttribute("tagError", "has-error");
				map.addAttribute("focusError", "autofocus");
				int act = 2;
				map.addAttribute("act", act);
				map.addAttribute("msg", "<strong>Atenção!</strong> As senha digitadas não são iguais!");
				return "usuario/cadUsuario";
			}
		}
		int act = 2;
		map.addAttribute("act", act);
		return "redirect:/usuarios/listUsuarios";
	}
}
