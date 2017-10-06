package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import ua.com.owu.entity.Profile;
import ua.com.owu.entity.User;
import ua.com.owu.service.ProfileService;
import ua.com.owu.service.UserService;
import ua.com.owu.validator.UserValidator;

@Controller
public class MainController {
    @Autowired
    UserService userService;
    @Autowired
    ProfileService profileService;
    @Autowired
    UserValidator userValidator;


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





    @PostMapping("save2")
    public String saveProfile(@RequestParam("interest")String interest,
                              @RequestParam("aim")String aim){
        Profile profile = new Profile();
        profile.setInterest(interest);
        profile.setAim(aim);
        profileService.save(profile);
        return "/personal";
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


