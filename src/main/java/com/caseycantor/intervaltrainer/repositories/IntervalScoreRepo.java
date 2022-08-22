package com.caseycantor.intervaltrainer.repositories;

import java.util.List;
import java.util.Date;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.caseycantor.intervaltrainer.models.IntervalScore;
import com.caseycantor.intervaltrainer.models.User;

@Repository
public interface IntervalScoreRepo extends CrudRepository<IntervalScore, Long> {
	List<IntervalScore> findAll();
	List<IntervalScore> findAllByOrderByScoreDesc();
	List<IntervalScore> findAllByUserOrderByScoreDesc(User user);
	List<IntervalScore> findAllByCreatedAtOrderByScoreDesc(Date date);

}