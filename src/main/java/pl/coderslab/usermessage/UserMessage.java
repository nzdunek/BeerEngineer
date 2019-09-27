package pl.coderslab.usermessage;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "messages")
public class UserMessage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Email
    private String email;

    @NotBlank
    private String message;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public UserMessage() {
    }

    public UserMessage(String email, String message) {
        this.email = email;
        this.message = message;
    }

    @Override
    public String toString() {
        return "Dostałeś nową wiadomość ze strony BeerEngineer! \n" +
                "Nadawca: " + email + "\n" +
                "Treść wiadomości: " + message;
    }
}
