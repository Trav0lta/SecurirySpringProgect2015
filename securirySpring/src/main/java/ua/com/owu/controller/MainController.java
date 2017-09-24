package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.owu.entity.User;
import ua.com.owu.service.UserService;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    UserService userService;

    @GetMapping("/")
    public String toIndex(){
        return "index";
    }

    @PostMapping("/save")
    public String saveUser (@RequestParam("username") String username,
                            @RequestParam("password") String password,
                            @RequestParam("email")String email,
                            @RequestParam("firstName")String firstName,
                            @RequestParam("lastName")String lastName){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        userService.save(user);
        return "/logination";
    }

    @PostMapping("/logination")
    public String enter(){
        return "personal";
    }



    @GetMapping("/toLogin")
    public String toLogin(){
        return "/logination";
    }

    @GetMapping("/toRegist")
    public String toRegist(){
        return "/registration";
    }

    @GetMapping("/toPersonal")
    public String toPersonal(){
        return "/personal";
    }



}


