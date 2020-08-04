package com.maruf.UserPortal.controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.maruf.UserPortal.bean.User;
import com.maruf.UserPortal.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao dao;
	
	HttpSession session;
	String projecturl = "http://localhost:8080/UserPortal/";
	
	@RequestMapping(value="/loginverify",method = RequestMethod.POST)
	public String loginVerify(@RequestParam String email, @RequestParam String password, Model m, HttpServletRequest request)
	{
		// Admin Login
		if(email.contentEquals("admin@localhost.local") && password.contentEquals("admin"))
		{
			List<User> list = dao.getUsers();	
			m.addAttribute("list",list);
			return "userlist";
		}
		
		// User Login
		User user = dao.getUserByEmailAndPass(email, password);
		
		if(user==null)
		{
			return "redirect:" + projecturl;
		}
		session = request.getSession();
		session.setAttribute("usersession", user);
		return "redirect:/userprofile";
	}
	
	@RequestMapping("/regform")
	public String showform(Model m)
	{
		m.addAttribute("user", new User()); 
		return "regform"; 
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String save(@ModelAttribute User user, HttpServletRequest request)
	{
		dao.save(user);
		session = request.getSession();
		session.setAttribute("usersession", user);
		return "redirect:/userprofile";
	}
	
	@RequestMapping("/changepass")
	public String changepassword(@RequestParam("id") int id, Model m)
	{
		m.addAttribute("userid", id);
		return "changepassform";
	}
	
	@RequestMapping("/newpass")
	public String newpassword(@RequestParam String prepass, @RequestParam String newpass, @RequestParam String conpass, @RequestParam int id, Model m)
	{
		String passmsg;
		if(!newpass.contentEquals(conpass))
		{
			passmsg = "New Password and Confirm Password didn't match..";
		}
		else
		{
			dao.setnewpass(id,newpass);
			passmsg = "Password is Changed Successfully!";
		}
		m.addAttribute("passmsg", passmsg);
		return "passmsg";
	}
	
	@RequestMapping("/userprofile")
	public String userprofile(HttpServletRequest request, Model m)
	{
		session = request.getSession();
		User user = (User) session.getAttribute("usersession");
		if(user == null) return "redirect:" + projecturl;
		m.addAttribute("user", user);
		return "userprofile";
	}
	
	@RequestMapping("/logout")
    public String logout(HttpServletRequest request){
		session = request.getSession();
		session.invalidate();
        return "redirect:"+ projecturl;
    }
	
	
}
