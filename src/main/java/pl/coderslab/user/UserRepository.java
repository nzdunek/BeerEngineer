package pl.coderslab.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.beer.Beer;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository <User, Long> {

    List<User> findAll();

    User findByUsername(String username);

    @Query(value = "SELECT beer_id from beers_users where user_id = ?1", nativeQuery = true)
    List<Long> usersFavourites(Long user_id);


}
