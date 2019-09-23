package pl.coderslab.beerengineer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @GetMapping("/")
    public String getBooks() {
        return "home";
    }

    @GetMapping(value = {"/login"})
    public String login() {
        return "login";
    }
}
