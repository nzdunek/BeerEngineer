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
}
