package com.caseycantor.intervaltrainer.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.caseycantor.intervaltrainer.models.IntervalScore;

@Repository
public interface IntervalScoreRepo extends CrudRepository<IntervalScore, Long> {
	List<IntervalScore> findAll();

}