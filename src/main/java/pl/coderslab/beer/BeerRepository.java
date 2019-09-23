package pl.coderslab.beer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

public interface BeerRepository extends JpaRepository <Beer, Long> {

    @Query("select b from Beer b where b.intuitive_type = ?1")
    List<Beer> findByIntuitive_type (String intuitive);

    @Query("select b from Beer b where b.official_type = ?1")
    List<Beer> findByOfficial_type (String official);

    @Query("select b from Beer b where b.brand = ?1")
    List<Beer> findByBrand(String brand);

}
