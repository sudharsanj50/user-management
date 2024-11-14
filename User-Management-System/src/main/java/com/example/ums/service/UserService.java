package com.example.ums.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.ums.entity.User;
import com.example.ums.exception.UserNotFoundByIdException;
import com.example.ums.repository.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

	public void addUser(User user) {
		userRepository.save(user);

	}

	public List<User> findAllUsers() {
		return userRepository.findAll();		
	}

	public void deleteUser(int userId) {
		User user=this.findUser(userId);
		userRepository.delete(user);

	}

	public User findUser(int user) {
		//Functional program update from java 8
	 return userRepository.findById(user)
			 .orElseThrow(()->new UserNotFoundByIdException("Fail to find user","display-user"));
		
//	Optional<User> optional=userRepository.findById(userId);
//	if(optional.isPresent()) {
//		return optional.get();
//	}else {
//		//throw new UserNotFoundByIdException
//		return new UserNotFoundByIdException(null, null);
//		
//	}

//	public void finalUpdate(User user) {
//		userRepository.save(user);
//		
//	}


	}

	public void finalUpdateUser(User user) {
		this.findUser(user.getUserId());
		userRepository.save(user);
		
	}
	}

	
	
