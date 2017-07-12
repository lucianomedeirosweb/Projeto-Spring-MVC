package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Usuario;
import service.UsuarioService;

@Controller
public class LoginController {
	
	@Autowired
	private UsuarioService uService;

	@RequestMapping(value = {"/", "loginForm"}, method = RequestMethod.GET)
	public String createFrom(ModelMap map, HttpSession session) {
		map.addAttribute("usuario", new Usuario());
		session.invalidate();
		return "login/inicio";
	}
}
