package pl.tomaszosuch.webapp.dao;

import pl.tomaszosuch.webapp.model.Comment;

import java.util.List;

public class CommentDAOImpl implements CommentDAO{
    @Override
    public List<Comment> getAll(Long primaryKey) {
        return null;
    }

    @Override
    public boolean deleteByDiscoveryId(long discoveryId) {
        return false;
    }

    @Override
    public boolean deleteByUserId(long userId) {
        return false;
    }

    @Override
    public Comment create(Comment newObject) {
        return null;
    }

    @Override
    public Comment read(Long primaryKey) {
        return null;
    }

    @Override
    public boolean update(Comment updateObject) {
        return false;
    }

    @Override
    public boolean delete(Long key) {
        return false;
    }

    @Override
    public List<Comment> getAll() {
        return null;
    }
}
