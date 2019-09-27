package pl.coderslab.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.beer.Beer;
import pl.coderslab.beer.BeerRepository;
import pl.coderslab.role.Role;
import pl.coderslab.role.RoleRepository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;


@Service
@Transactional
public class UserService {
    private UserRepository ur;
    private BeerRepository br;
    private final RoleRepository rr;
    private final BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public UserService(UserRepository ur, RoleRepository rr, BeerRepository br, BCryptPasswordEncoder passwordEncoder) {
        this.ur = ur;
        this.rr = rr;
        this.br = br;
        this.passwordEncoder = passwordEncoder;
    }

    public User findById (Long id) {
        return ur.findById(id).orElse(null);
    }

    public User findByUsername (String username) {return  ur.findByUsername(username);}

    public void addUser (User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        Role userRole = rr.findByName("ROLE_BEER_WARRIOR");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        ur.save(user);
    }

    public void updateUser (User user) {
        ur.save(user);
    }

    public void deleteUser (Long id) {
        ur.deleteById(id);
    }

    public List<Long> usersFavourites (Long user_id) {
        return ur.usersFavourites(user_id);
    }

    public List<Beer> addToFavourites (Long user_id, Long beer_id) {
        List <Long> favBeersId = ur.usersFavourites(user_id);
        List<Beer> favourites = new ArrayList<>();

        for (Long l: favBeersId) {
            Beer beer = br.getOne(l);
            favourites.add(beer);
        }

        Beer toAdd = br.getOne(beer_id);
        favourites.add(toAdd);
        User user = ur.findById(user_id).orElse(null);
        if(user!=null){

            user.setFavourites(new HashSet<>(favourites));
            ur.save(user);
        }
        return favourites;
    }

}
