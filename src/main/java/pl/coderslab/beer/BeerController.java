package pl.coderslab.beer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
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

    @GetMapping("/{official}")
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

}
