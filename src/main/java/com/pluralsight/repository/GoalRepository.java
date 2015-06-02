package com.pluralsight.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.pluralsight.model.Goal;
import com.pluralsight.model.GoalReport;

@Repository("goalRepository")
public interface GoalRepository extends JpaRepository<Goal, Long> {
	// Since we're using JpaRepository, delete or comment out save() and loadAll() since these 2 functions are built-in. Once commented
	// these code, findAllGoalReports() gets an error "Invalid derived query! No property findAllGoalReports found for type Goal.
	// Solution:
	//   - Mark this interface to @Repository("goalRepository")
	//   - Add @Query (from Goal.java @NamedQuery(... FIND_GOAL_REPORTS, ...) shown below
	//   - Go to Goal.java, comment out or delete all @NamedQuerries() at the top
	//	Goal save( Goal goal );
	//	List< Goal > loadAll();
	
	// Projection
	@Query("Select new com.pluralsight.model.GoalReport(g.minutes, e.minutes, e.activity) " +
                     "from Goal g, Exercise e where g.id = e.goal.id")
	List< GoalReport > findAllGoalReports();
}
