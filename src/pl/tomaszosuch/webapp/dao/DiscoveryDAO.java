package pl.tomaszosuch.webapp.dao;

import pl.tomaszosuch.webapp.model.Discovery;

import java.util.List;

public interface DiscoveryDAO extends GenericDAO<Discovery, Long> {

    List<Discovery> getAll();
}
