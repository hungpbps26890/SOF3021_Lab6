package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.DrinkImageDAO;

@Service
public class DrinkImageServiceIpml implements DrinkImageService{
	@Autowired
	DrinkImageDAO drinkImageDAO;
}
