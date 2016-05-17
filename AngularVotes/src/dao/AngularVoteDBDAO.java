package dao;

import java.util.List;

import entities.Vote;

public interface AngularVoteDBDAO {
	public void addVote(Vote vote);
	public List<Vote> getAllVotes();
	public List<Object[]> getDaveData();
	public List<Object[]> getShiaData();
	public List<Object[]> getRyanData();
}