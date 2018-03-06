package fr.digicar.dao;

import fr.digicar.model.Token;

import java.util.List;

public interface TokenDAO {
    void addToken(Token t);

    void updateToken(Token t);

    Token getToken(int id);

    void deleteToken(int id);

    List<Token> getTokens();


}
