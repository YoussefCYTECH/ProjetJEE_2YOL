package fr.eisti.ACCEG.jee.LeCoinPhoto.dao;
// Generated Dec 25, 2021, 5:02:26 PM by Hibernate Tools 5.4.14.Final

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import fr.eisti.ACCEG.jee.LeCoinPhoto.model.Categories;

/**
 * Home object for domain model class Categories.
 * @see fr.eisti.ACCEG.jee.LeCoinPhoto.dao.Categories
 * @author Hibernate Tools
 */
public class CategoriesHome {

	private static final Logger logger = Logger.getLogger(CategoriesHome.class.getName());

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			logger.log(Level.SEVERE, "Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Categories transientInstance) {
		logger.log(Level.INFO, "persisting Categories instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			logger.log(Level.INFO, "persist successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Categories instance) {
		logger.log(Level.INFO, "attaching dirty Categories instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void attachClean(Categories instance) {
		logger.log(Level.INFO, "attaching clean Categories instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void delete(Categories persistentInstance) {
		logger.log(Level.INFO, "deleting Categories instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			logger.log(Level.INFO, "delete successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "delete failed", re);
			throw re;
		}
	}

	public Categories merge(Categories detachedInstance) {
		logger.log(Level.INFO, "merging Categories instance");
		try {
			Categories result = (Categories) sessionFactory.getCurrentSession().merge(detachedInstance);
			logger.log(Level.INFO, "merge successful");
			return result;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "merge failed", re);
			throw re;
		}
	}

	public Categories findById(java.lang.Integer id) {
		logger.log(Level.INFO, "getting Categories instance with id: " + id);
		try {
			Categories instance = (Categories) sessionFactory.getCurrentSession()
					.get("fr.eisti.ACCEG.jee.LeCoinPhoto.dao.Categories", id);
			if (instance == null) {
				logger.log(Level.INFO, "get successful, no instance found");
			} else {
				logger.log(Level.INFO, "get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "get failed", re);
			throw re;
		}
	}

	public List findByExample(Categories instance) {
		logger.log(Level.INFO, "finding Categories instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("fr.eisti.ACCEG.jee.LeCoinPhoto.dao.Categories").add(Example.create(instance))
					.list();
			logger.log(Level.INFO, "find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "find by example failed", re);
			throw re;
		}
	}
}