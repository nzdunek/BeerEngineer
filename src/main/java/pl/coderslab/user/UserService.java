package pl.coderslab.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.beer.Beer;
import pl.coderslab.role.Role;
import pl.coderslab.role.RoleRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
@Transactional
public class UserService {
    private UserRepository ur;
    private final RoleRepository rr;
    private final BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public UserService(UserRepository ur, RoleRepository rr, BCryptPasswordEncoder passwordEncoder) {
        this.ur = ur;
        this.rr = rr;
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

}
