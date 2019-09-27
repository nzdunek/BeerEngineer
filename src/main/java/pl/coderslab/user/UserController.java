package pl.coderslab.user;

import org.hibernate.query.criteria.internal.expression.function.CurrentDateFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.beer.BeerService;

import javax.validation.Valid;

@Controller
@RequestMapping("/app")
public class UserController {
    private UserService us;
    private BeerService bs;

    @Autowired
    public UserController(UserService us) {
        this.us = us;
        this.bs = bs;
    }

    @GetMapping("/dash/{beer_id}")
    public String showRecommendations (@PathVariable String beer_id, @AuthenticationPrincipal CurrentUser cu, Model model) {
        Long id = Long.parseLong(beer_id);
        User user = cu.getUser();
        us.addToFavourites(user.getId(), id);
        return "redirect:/app/dash";
    }

    @GetMapping("/dash")
    public String showDashboard ( @AuthenticationPrincipal CurrentUser cu, Model model) {
        model.addAttribute("mylist", us.findById(cu.getUser().getId()).getFavourites());
        model.addAttribute("user", us.findById(cu.getUser().getId()));
        return "dashboard";
    }



}
