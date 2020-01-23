package pl.tomaszosuch.webapp.service;

import pl.tomaszosuch.webapp.dao.DAOFactory;
import pl.tomaszosuch.webapp.dao.DiscoveryDAO;
import pl.tomaszosuch.webapp.model.Discovery;
import pl.tomaszosuch.webapp.model.User;

import java.sql.Timestamp;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class DiscoveryService {

    public void addDiscovery(String name, String desc, String url, User user) {
        Discovery discovery = createDiscoveryObject(name, desc, url, user);
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        discoveryDAO.create(discovery);
    }

    private Discovery createDiscoveryObject(String name, String desc, String url, User user) {
        Discovery discovery = new Discovery();
        discovery.setName(name);
        discovery.setDescription(desc);
        discovery.setUrl(url);
        User userCopy = new User(user);
        discovery.setUser(userCopy);
        discovery.setTimestamp(new Timestamp(new Date().getTime()));
        return discovery;
    }

    public Discovery getDiscoveryById(long discoveryId) {
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        Discovery discovery = discoveryDAO.read(discoveryId);
        return discovery;
    }
    public boolean updateDiscovery(Discovery discovery){
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDao = factory.getDiscoveryDAO();
        boolean result = discoveryDao.update(discovery);
        return result;
    }

    public List<Discovery> getAllDiscovery() {
        return getAllDiscovery(null);
    }

    public List<Discovery> getAllDiscovery(Comparator<Discovery> comparator) {
        DAOFactory factory = DAOFactory.getDAOFactory();
        DiscoveryDAO discoveryDAO = factory.getDiscoveryDAO();
        List<Discovery> discoveries = discoveryDAO.getAll();
        if (comparator != null && discoveries != null){
            discoveries.sort(comparator);
        }

        return discoveries;
    }
}
