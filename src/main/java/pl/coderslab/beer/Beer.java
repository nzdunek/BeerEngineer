package pl.coderslab.beer;

import pl.coderslab.user.User;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "beers")
public class Beer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @NotBlank
    private String brand;

    @Size(min=20, max = 500)
    private String description;

    @NotBlank
    private String official_type;

    private String bigger_type;

    @NotBlank
    private String intuitive_type;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "beers_users", joinColumns = @JoinColumn(name = "beer_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
    public Set<User> recommending;

    private int countRecommendations;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOfficial_type() {
        return official_type;
    }

    public void setOfficial_type(String official_type) {
        this.official_type = official_type;
    }

    public String getIntuitive_type() {
        return intuitive_type;
    }

    public void setIntuitive_type(String intuitive_type) {
        this.intuitive_type = intuitive_type;
    }

    public Set<User> getRecommending() { return recommending; }

    public void setRecommending(Set<User> recommending) { this.recommending = recommending; }

    public int getCountRecommendations() {
        return countRecommendations;
    }

    public void setCountRecommendations(int countRecommendations) {
        this.countRecommendations = countRecommendations;
    }

    public String getBigger_type() {
        return bigger_type;
    }

    public void setBigger_type(String bigger_type) {
        this.bigger_type = bigger_type;
    }

    public Beer(byte type, @NotBlank String name, @NotBlank String brewery,
                @Size(min = 20, max = 500) String description, @NotBlank String official_type,
                @NotBlank String intuitive_type) {
        this.name = name;
        this.brand = brand;
        this.description = description;
        this.official_type = official_type;
        this.intuitive_type = intuitive_type;
    }

    public Beer() {
    }

    @Override
    public String toString() {
        return "Beer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", brewery='" + brand + '\'' +
                ", description='" + description + '\'' +
                ", official_type='" + official_type + '\'' +
                ", intuitive_type='" + intuitive_type + '\'' +
                '}';
    }

}