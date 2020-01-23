package pl.tomaszosuch.webapp.dao;

import pl.tomaszosuch.webapp.model.Comment;

import java.util.List;

public interface CommentDAO extends GenericDAO<Comment,Long> {

    List<Comment> getAll(Long primaryKey);

    boolean deleteByDiscoveryId(long discoveryId);

    boolean deleteByUserId(long userId);
}
