package pl.coderslab.beer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/beer")
public class BeerController {

    private BeerService bs;
    private UserService us;

    @Autowired
    public BeerController(BeerService bs, UserService us) {
        this.bs = bs;
        this.us = us;
    }

    @GetMapping("/allbeers")
    public  String findAll (Model model){
        List <Beer> beers = bs.findAll();
        model.addAttribute("beers", beers);
        return "beerlist";
    }

    @GetMapping("/type/{type}")
    public  String findAll (@PathVariable String type, Model model){

        List <Beer> beers = bs.findByBiggerType(type);

        model.addAttribute("beers", beers);
        return "beerlist";
    }

    @GetMapping("/results")
    public String retrieveResult(@RequestParam(value = "pickedBeers", required = false) String[] pickedBeers, Model model){

        List<Beer> beers = new ArrayList<>();

        if (pickedBeers == null) {
            beers.add(bs.findBeer(82l));
        } else {
            for (String picked : pickedBeers) {
                beers.addAll(bs.findAllByIntuitiveType(picked));
            }
        }

        model.addAttribute("beers", beers);

        return "beerlist";
    }

}
