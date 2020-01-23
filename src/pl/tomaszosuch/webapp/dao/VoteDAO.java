package pl.tomaszosuch.webapp.dao;

import pl.tomaszosuch.webapp.model.Vote;

public interface VoteDAO extends GenericDAO<Vote, Long> {

    public Vote getVoteByUserIdDiscoveryId(long userId, long discoveryId);
}
