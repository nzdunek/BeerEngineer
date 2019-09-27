package pl.coderslab.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class NotificationService {

    private final JavaMailSender javaMailSender;

    @Autowired
    public NotificationService(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendNotification(String messageContent) throws MailException {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo("beer.engineer@wp.pl");
        mailMessage.setFrom("beer.engineer@wp.pl");
        mailMessage.setSubject("Nowa wiadomość od użytkownika!");
        mailMessage.setText(messageContent);

        javaMailSender.send(mailMessage);
    }

}