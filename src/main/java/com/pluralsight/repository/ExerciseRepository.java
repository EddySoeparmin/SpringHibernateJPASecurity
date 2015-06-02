package com.pluralsight.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pluralsight.model.Exercise;

@Repository("exercise")
public interface ExerciseRepository extends JpaRepository< Exercise, Long >
{
	// No need to create the implementation class. Take a look at ExerciseServiceImpl.java, it's using
	// the build in save()
}
