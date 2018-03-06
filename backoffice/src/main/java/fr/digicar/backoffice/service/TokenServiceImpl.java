package fr.digicar.backoffice.service;

import fr.digicar.dao.TokenDAO;
import fr.digicar.model.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TokenServiceImpl implements  TokenService {

    @Autowired
    private TokenDAO tokenDAO;

    @Override
    public void addToken(Token t) {
        tokenDAO.addToken(t);
    }

    @Override
    public void updateToken(Token t) {
        tokenDAO.updateToken(t);
    }

    @Override
    public Token getToken(int id) {
        return tokenDAO.getToken(id);
    }

    @Override
    public void deleteToken(int id) {
        tokenDAO.deleteToken(id);
    }

    @Override
    public List<Token> getTokens() {
        return tokenDAO.getTokens();
    }

}
