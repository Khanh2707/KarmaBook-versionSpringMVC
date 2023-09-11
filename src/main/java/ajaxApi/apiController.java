package ajaxApi;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.User;
import service.LoginService;

@Controller
@RequestMapping("api/")
@SessionAttributes("user")
public class apiController {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	LoginService loginService;
	
	@GetMapping("AuthenticationLogin")
	@ResponseBody
	public String AuthenticationLogin(@RequestParam String email, @RequestParam String password, ModelMap modelMap) {
		
		User user = loginService.AuthenticationLogin(email, password);
		
		modelMap.addAttribute("user", user);
		
		if (user != null) {
			return "true";
		}
		else {
			return "false";
		}
		
	}
	
}
