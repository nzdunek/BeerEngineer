package pl.coderslab.beer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BeerController {

    private BeerService bs;

    @Autowired
    public BeerController(BeerService bs) {
        this.bs = bs;
    }


}
