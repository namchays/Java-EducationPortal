package edu.fa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.fa.model.Fresher;


public interface FresherRepository extends JpaRepository<Fresher, Integer>{
	Fresher findByUsernameAndPassword(String username, String password);
	
}
