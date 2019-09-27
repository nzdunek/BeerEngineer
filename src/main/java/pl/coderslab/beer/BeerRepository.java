package pl.coderslab.beer;

import org.hibernate.query.NativeQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.lang.annotation.Native;
import java.util.ArrayList;
import java.util.List;

@Repository
public interface BeerRepository extends JpaRepository <Beer, Long> {

    @Query(value = "SELECT COUNT(*) from beers_users where beer_id = ?1", nativeQuery = true)
    int countRecommentingUsers(Long beer_id);

    @Query("select b from Beer b where b.intuitive_type = ?1")
    List<Beer> findByIntuitive_type (String intuitive);

    @Query("select b from Beer b where b.official_type = ?1")
    List<Beer> findByOfficial_type (String official);

    @Query("select b from Beer b where b.bigger_type = ?1")
    List<Beer> findByBigger_type (String type);

    @Query("select b from Beer b where b.brand = ?1")
    List<Beer> findByBrand(String brand);

    @Query("select b from Beer b where b.official_type like %?1%")
    List<Beer> findByPartialType (String official);

}
