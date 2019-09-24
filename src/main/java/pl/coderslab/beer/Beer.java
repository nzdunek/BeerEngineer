package pl.coderslab.beer;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "beers")
public class Beer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private byte type;
    // 0 - ciemne
    // 1 - jasne

    @NotBlank
    private String name;

    @NotBlank
    private String brand;

    @Size(min=20, max = 500)
    private String description;

    @NotBlank
    private String official_type;

    @NotBlank
    private String intuitive_type;

    public Long getId() {
        return id;
    }

    public byte getType() {
        return type;
    }

    public void setType(byte type) {
        this.type = type;
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

    public Beer(byte type, @NotBlank String name, @NotBlank String brewery,
                @Size(min = 20, max = 500) String description, @NotBlank String official_type,
                @NotBlank String intuitive_type) {
        this.type = type;
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
                ", type=" + type +
                ", name='" + name + '\'' +
                ", brewery='" + brand + '\'' +
                ", description='" + description + '\'' +
                ", official_type='" + official_type + '\'' +
                ", intuitive_type='" + intuitive_type + '\'' +
                '}';
    }
}
