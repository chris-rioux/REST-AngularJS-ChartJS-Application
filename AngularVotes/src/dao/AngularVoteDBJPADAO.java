package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Vote;

@Transactional
public class AngularVoteDBJPADAO implements AngularVoteDBDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addVote(Vote vote) {
		em.persist(vote);
	}
	
	
	// get all chart data
	@Override
	public List<Vote> getAllVotes() {
		List<Vote> allVotes = (List<Vote>) em.createQuery("SELECT v FROM Vote v").getResultList();
		return allVotes;
	}
	
	
	// get individual chart data
	@Override
	public List<Object[]> getDaveData() {
		List<Object[]> daveData = em.createNativeQuery("SELECT vote, COUNT(vote) FROM vote WHERE name = 'David Hasselhoff' GROUP BY vote").getResultList();
		return daveData;
	}
	
	@Override
	public List<Object[]> getShiaData() {
		List<Object[]> shiaData = em.createNativeQuery("SELECT vote, COUNT(vote) FROM vote WHERE name = 'Shia LaBeouf' GROUP BY vote").getResultList();
		return shiaData;
	}
	
	@Override
	public List<Object[]> getRyanData() {
		List<Object[]> ryanData = em.createNativeQuery("SELECT vote, COUNT(vote) FROM vote WHERE name = 'Ryan Gosling' GROUP BY vote").getResultList();
		return ryanData;
	}

}