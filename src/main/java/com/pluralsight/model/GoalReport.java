package com.pluralsight.model;

// This clas works with Projection - Kind of like SQL with multiple table joins
public class GoalReport
{
	private int		goalMinutes;
	private int		exerciseMinutues;
	private String	exerciseActivity;

	public GoalReport( int goalMinutes, int exerciseMinutues, String exerciseActivity )
	{
		this.goalMinutes = goalMinutes;
		this.exerciseMinutues = exerciseMinutues;
		this.exerciseActivity = exerciseActivity;
	}

	public String getExerciseActivity()
	{
		return exerciseActivity;
	}

	public int getExerciseMinutues()
	{
		return exerciseMinutues;
	}

	public int getGoalMinutes()
	{
		return goalMinutes;
	}

	public void setExerciseActivity( String exerciseActivity )
	{
		this.exerciseActivity = exerciseActivity;
	}

	public void setExerciseMinutues( int exerciseMinutues )
	{
		this.exerciseMinutues = exerciseMinutues;
	}

	public void setGoalMinutes( int goalMinutes )
	{
		this.goalMinutes = goalMinutes;
	}
}