package pl.tomaszosuch.webapp.dao;

import pl.tomaszosuch.webapp.model.User;

import java.util.List;

public interface UserDAO extends GenericDAO<User, Long>{

    List<User> getAll();
    User getUserByUsername(String username);
}
