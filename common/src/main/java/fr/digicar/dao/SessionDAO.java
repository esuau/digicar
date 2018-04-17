package fr.digicar.dao;

import fr.digicar.model.Car;
import fr.digicar.model.Session;

import java.sql.Time;
import java.util.Date;
import java.util.List;

public interface SessionDAO {
    Session getSession(int id);
    List<Session>getUserSessions(int userID,Date d);
    List<Session>getImpactedSessions(String registration, Long arrival_time);
    List<Session>getAllSessions();
    Car getSessionCar(int sessionId);

}
