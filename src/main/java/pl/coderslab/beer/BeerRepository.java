package pl.coderslab.beer;

import org.hibernate.query.NativeQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.lang.annotation.Native;
import java.util.List;

@Repository
public interface BeerRepository extends JpaRepository <Beer, Long> {

    @Query("select b from Beer b where b.intuitive_type = ?1")
    List<Beer> findByIntuitive_type (String intuitive);

    @Query("select b from Beer b where b.official_type = ?1")
    List<Beer> findByOfficial_type (String official);

    @Query("select b from Beer b where b.brand = ?1")
    List<Beer> findByBrand(String brand);

    @Query("select b from Beer b where b.official_type like %?1%")
    List<Beer> findByPartialType (String official);

    @Query(value="select * from beers where type = 0 and (official_type not like '%bock%' and official_type not like " +
            "'%porter%' and official_type not like '%stout%')", nativeQuery = true)
    List<Beer> findOtherDark ();

    @Query(value = "select * from beers where type = 1 and (official_type like '%witt%' or official_type like '%rice%' " +
            "or official_type like '%rye%' or official_type like '%weizen%')", nativeQuery = true)
    List<Beer> findOtherLightGrain ();

    @Query(value = "select * from beers where type = 1 and (official_type like '%gose%' or official_type like '%flavored%' " +
            "or official_type like '%milk')", nativeQuery = true)
    List<Beer> findOtherLightType ();

}
