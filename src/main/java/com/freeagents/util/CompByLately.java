package com.freeagents.util;

import java.util.Comparator;

import com.freeagents.model.Job;

public class CompByLately implements Comparator<Job>{

	public int compare(Job j1, Job j2) {
		return (int)(j2.getId() - j1.getId());
	}
	
}