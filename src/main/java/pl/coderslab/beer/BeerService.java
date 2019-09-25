package pl.coderslab.beer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class BeerService {

    private BeerRepository br;

    @Autowired
    public BeerService(BeerRepository br) {
        this.br = br;
    }

    public void addBeer (Beer beer) {
        br.save(beer);
    }

    public void updateBeer (Beer beer) {
        br.save(beer);
    }

    public void deleteBook (Long id) {
        br.deleteById(id);
    }

    public Beer findBeer (Long id) {
        return br.findById(id).orElse(null);
    }

    public List <Beer> findAll () {
        return br.findAll();
    }

    public List<Beer> findAllByBrand (String brand) {
        List <Beer> beers = br.findByBrand(brand);
        return beers;
    }

    public List<Beer> findAllByIntuitiveType (String intuitive) {
        List <Beer> beers = br.findByIntuitive_type(intuitive);
        return beers;
    }

    public List<Beer> findAllByOfficialType (String official) {
        List <Beer> beers = br.findByOfficial_type(official);
        return beers;
    }

    public List<Beer> findOtherDark () {
        List <Beer> beers = br.findOtherDark();
        return beers;
    }

    public List<Beer> findOtherLightGrain () {
        List <Beer> beers = br.findOtherLightGrain();
        return beers;
    }

    public List<Beer> findOtherLightType () {
        List <Beer> beers = br.findOtherLightType();
        return beers;
    }


    public List<Beer> findAllByPartialType (String official) {
        List <Beer> beers = br.findByPartialType(official);
        return beers;
    }

    public List <String> intuitiveTypes () {
        List<String> intuitives = new ArrayList<>();
        String[] allIntuitives = br.allIntuitives();
        for (int i = 0; i < allIntuitives.length; i++) {
            if (!intuitives.contains(allIntuitives[i])) {
                intuitives.add(allIntuitives[i]);
            }
        }

        return intuitives;
    }
}
