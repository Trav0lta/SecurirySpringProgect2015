package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.owu.entity.User;
import ua.com.owu.service.UserService;

@Controller
public class MainController {
    @Autowired
    UserService userService;

    @GetMapping("/")
    public String toIndex(){
        return "index";
    }

    @PostMapping("save")
    public String save (@RequestParam("username") String username,
                            @RequestParam("password") String password){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.save(user);

        return "index";
    }

    @GetMapping("toLogin")
    public String toLogin(){
        return "login";
    }
}
