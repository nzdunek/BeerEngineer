package pl.coderslab.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.User;
import pl.coderslab.usermessage.UserMessage;
import pl.coderslab.user.UserService;
import pl.coderslab.usermessage.UserMessageService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@Controller
public class HomeController {

    private UserService us;
    private NotificationService ns;
    private UserMessageService ums;

    @Autowired
    public HomeController(UserService us, NotificationService ns, UserMessageService ums) {
        this.us = us;
        this.ns = ns;
        this.ums = ums;
    }

    @GetMapping("/")
    public String index(@RequestParam(defaultValue = "")String successMessage, Model model) {

        if(!successMessage.isBlank()){
            model.addAttribute("success",successMessage);
        }
        return "home";
    }

    @GetMapping("/login")
    public String loginPage(@RequestParam(value = "error", required = false) String error, Model model) {
        String errorMessge = null;
        if(error != null) {
            errorMessge = "Błędne dane logowania";
        }
        model.addAttribute("errorMessge", errorMessge);
        return "login";
    }

    @GetMapping("/logout")
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }

    @GetMapping("/register")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "registration";
    }

    @PostMapping("/register")
    public String addUser(@ModelAttribute @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "registration";
        }
        us.addUser(user);
        return "redirect:/login";
    }

    @GetMapping("/contact")
    public String sendMessage(Model model) {
        model.addAttribute("userMessage", new UserMessage());
        return "contact";
    }

    @PostMapping("/contact")
    public String sendMessage(@ModelAttribute @Valid UserMessage userMessage, BindingResult result) {
        if (result.hasErrors()) {
            return "contact";
        }
        ums.saveMessage(userMessage);
        ns.sendNotification(userMessage.toString());
        String message = URLEncoder.encode("Twoja wiadomość została wysłana", StandardCharsets.UTF_8);
        return "redirect:/?successMessage="+message;
    }

}