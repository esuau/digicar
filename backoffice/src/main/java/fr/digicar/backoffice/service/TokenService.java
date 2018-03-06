package fr.digicar.backoffice.service;

import fr.digicar.model.Token;

import java.util.List;

public interface TokenService {
    void addToken(Token t);
    void updateToken (Token t);
    Token getToken(int id);
    void deleteToken(int id);
    List<Token> getTokens();
}
