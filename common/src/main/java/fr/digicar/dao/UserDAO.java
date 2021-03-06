package fr.digicar.dao;

import fr.digicar.model.User;

import java.util.List;

public interface UserDAO {

    void addUser(User team);

    void updateUser(User team);

    User getUser(int id);
    void updateGestureAccountUser(int id);

    void deleteUser(int id);

    List<User> getUsers();

    List<User> filterUsers(String searchString);

    boolean checkEmailExistence(String email);

    boolean checkUserCredentials(User user);

}
