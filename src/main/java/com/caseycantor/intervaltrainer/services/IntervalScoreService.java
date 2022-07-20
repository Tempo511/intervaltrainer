package com.caseycantor.intervaltrainer.services;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.caseycantor.intervaltrainer.models.IntervalScore;
import com.caseycantor.intervaltrainer.repositories.IntervalScoreRepo;



@Service
public class IntervalScoreService {
	
	private final IntervalScoreRepo repo;
	
	public IntervalScoreService(IntervalScoreRepo repo) {
		this.repo = repo;
	}
	
	public List<IntervalScore> allIntervalScores(){
		return repo.findAll();
	}
	
	
	public IntervalScore findById(Long id) {
		Optional<IntervalScore> optionalScore = repo.findById(id);
		if(optionalScore.isPresent()) {
			return optionalScore.get();
		}else {
			return null;
		}
	}
	


	
	public IntervalScore addIntervalScore(IntervalScore score) {
		return repo.save(score);
	}
	
	public IntervalScore updateIntervalScore(IntervalScore score) {
		return repo.save(score);
	}
	
	public void deleteIntervalScore(IntervalScore score) {
		repo.delete(score);
	}
	
	

}
