package pl.coderslab.beer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @Autowired
    public BeerController(BeerService bs) {
        this.bs = bs;
    }

    @GetMapping("/allbeers")
    public  String findAll (Model model){
        List <Beer> beers = bs.findAll();
        model.addAttribute("beers", beers);
        return "beerlist";
    }

    @GetMapping("/type/{official}")
    public  String findAll (@PathVariable String official, Model model){
        if (official.contains("lager")) {
            official = "wied";
        }

        List <Beer> beers = new ArrayList<>();
        if (official.contains("dark_other")) {
            beers = bs.findOtherDark();
        } else if (official.contains("light_grains")) {
           beers = bs.findOtherLightGrain();
        } else if (official.contains("light_taste")) {
            beers = bs.findOtherLightType();
        } else {
            beers = bs.findAllByPartialType(official);
        }
        model.addAttribute("beers", beers);
        return "beerlist";
    }

    @GetMapping("/results")
    public String retrieveResult(@RequestParam String[] pickedBeers, Model model){

        List<Beer> beers = new ArrayList<>();
//        List <String> intuitives = bs.intuitiveTypes();

        for (String picked : pickedBeers) {
                beers.addAll(bs.findAllByIntuitiveType(picked));
        }

        if (beers.size()==0) {
            beers.add(bs.findBeer(82l));}

        model.addAttribute("beers", pickedBeers);

        return "beerlist";
    }

//    @GetMapping("/result")
//    @kResponseBody
//    public String findYourResult (Model model, HttpServletRequest request) {
//        Map<String, String[]> picked = request.getParameterMap();
//
//
//        List<Beer> beers = new ArrayList<>();
//
//        if (beers.size()==0) {
//            beers.add(bs.findBeer(82l));
//        }
//
//        model.addAttribute("beers", beers);
//        return picked.toString();
//    }

}
