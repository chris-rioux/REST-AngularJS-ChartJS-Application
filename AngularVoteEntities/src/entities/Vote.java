package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="VOTE")
public class Vote {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String vote;
	
	
	public Vote() {
		super();
	}

	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getVote() {
		return vote;
	}


	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setVote(String vote) {
		this.vote = vote;
	}


}