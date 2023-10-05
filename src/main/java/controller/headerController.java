package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("user")
public class headerController {

	@GetMapping("logout")
	public String logout(HttpSession httpSession, SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		httpSession.removeAttribute("user");
		return "redirect:/login";
	}
	
}
