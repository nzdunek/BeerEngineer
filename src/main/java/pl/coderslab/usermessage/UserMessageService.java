package pl.coderslab.usermessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.beer.Beer;
import pl.coderslab.user.UserRepository;

@Service
public class UserMessageService {
    private UserMessageRepository umr;

    @Autowired
    public UserMessageService(UserMessageRepository umr) {
        this.umr = umr;
    }

    public void saveMessage (UserMessage um) {
        umr.save(um);
    }

}
