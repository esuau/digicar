package fr.digicar.dao;

import fr.digicar.model.Tarif;
import fr.digicar.model.Token;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class TokenDAOImpl  implements  TokenDAO{
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    public void addToken(Token t) {
        sessionFactory.getCurrentSession().save(t);

    }

    public void updateToken(Token t) {
        sessionFactory.getCurrentSession().update(t);
    }

    public Token getToken(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Token t = (Token) session.load(Token.class, new Integer(id));
        return t;
    }

    public void deleteToken(int id) {
        Token t = getToken(id);
        if (t != null)
            getCurrentSession().delete(t);
    }


    public List<Token> getTokens() {
        return getCurrentSession().createQuery("FROM Token").list();
    }

    public void searchTokens(){
    }
}
