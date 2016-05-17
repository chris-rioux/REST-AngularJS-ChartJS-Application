package rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import dao.AngularVoteDBDAO;
import entities.Vote;

@RestController
public class AngularVotesRestController {
	@Autowired
	private AngularVoteDBDAO voteDAO;
	
	
	@RequestMapping("Votes")
	public List<Vote> getAllVotes() {
		List<Vote> allVotes = voteDAO.getAllVotes();
		return allVotes;
	}
	
	@RequestMapping(value="AddVote", method=RequestMethod.POST)
	public void addVote(@RequestBody Vote vote) {
		voteDAO.addVote(vote);
	}

}