package com.maruf.UserPortal.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.maruf.UserPortal.bean.User;
import com.maruf.UserPortal.dao.UserDao;

@Controller
public class UserController {

	@Autowired
	UserDao dao;

	HttpSession session;
	String projecturl = "http://localhost:8080/UserPortal/";

	@RequestMapping(value = "/loginverify", method = RequestMethod.POST)
	public String loginVerify(@RequestParam String email, @RequestParam String password, Model m,
			HttpServletRequest request) {
		
		// Admin Login
		if (email.contentEquals("admin@localhost.local") && password.contentEquals("admin")) {
			return "redirect:fulluserlist";
		}

		// User Login
		User user = dao.getUserByEmailAndPass(email, password);

		if (user == null) {
			return "redirect:" + projecturl;
		}
		session = request.getSession();
		session.setAttribute("usersession", user);
		return "redirect:/userprofile";
	}

	@RequestMapping("/regform")
	public String showform(Model m) {
		m.addAttribute("user", new User());
		return "regform";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute User user, HttpServletRequest request) {
		int i = -1;
		if (!user.getEmail().trim().contentEquals(""))
			i = dao.save(user);
		if (i == -1) // checkEmail Availability
			return "redirect:/regform";

		session = request.getSession();
		session.setAttribute("usersession", user);
		return "redirect:/userprofile";
	}

	@RequestMapping("/changepass")
	public String changepassword(@RequestParam("email") String email, Model m) {
		m.addAttribute("useremail", email);
		return "changepassform";
	}

	@RequestMapping("/newpass")
	public String newpassword(@RequestParam String prepass, @RequestParam String newpass, @RequestParam String conpass,
			@RequestParam String email, Model m) {
		String passmsg;
		if (!newpass.contentEquals(conpass)) {
			passmsg = "New Password and Confirm Password didn't match..";
		} else {
			dao.setnewpass(email, newpass);
			passmsg = "Password is Changed Successfully!";
		}
		m.addAttribute("passmsg", passmsg);
		return "passmsg";
	}

	@RequestMapping("/userprofile")
	public String userprofile(HttpServletRequest request, Model m) {
		session = request.getSession();
		User user = (User) session.getAttribute("usersession");
		if (user == null)
			return "redirect:" + projecturl;
		m.addAttribute("user", user);
		return "userprofile";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		session = request.getSession();
		session.invalidate();
		return "redirect:" + projecturl;
	}

	@RequestMapping(value = "/checkEmail/{email}", method = RequestMethod.GET)
	@ResponseBody
	public String checkEmailAvailability(@PathVariable("email") String email) {
		User user = dao.getUserByEmail(email);
		if (user == null)
			return "Email is available..";
		else
			return "Email is not available!!";

	}
	

	@RequestMapping("/fulluserlist")
	public String fullUserList(Model m)
	{
		List<User> list = dao.getUsers();	
		m.addAttribute("list",list);
		return "userlist";
		
	}

	@RequestMapping(value = "/searchbyname", method = RequestMethod.POST)
	public String userListSearchedByName(@RequestParam String name, Model m) {
		List<User> list = dao.getUsersByName(name);
		m.addAttribute("list", list);
		return "userlist2";
	}
	
	


}
