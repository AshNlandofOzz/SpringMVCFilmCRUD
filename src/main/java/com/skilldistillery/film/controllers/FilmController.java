package com.skilldistillery.film.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDao;
	
	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET,  params = "filmId") //filmId ,
	public ModelAndView showFilm(Integer filmId) {
		ModelAndView mv = new ModelAndView(); //try update rather than new instantiation
		Film film = filmDao.findFilmById(filmId);
		
		mv.addObject("film", film);
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/filmId.jsp");
		return mv;
	}
	
	@RequestMapping(path = "showFilms.do", method = RequestMethod.GET, params = "keyword") //keyword  
	public ModelAndView showFilms(String keyword) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Film> film = filmDao.findByKeyword(keyword);
		mv.addObject("listOfFilms", film);
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/filmByKeyword.jsp");
		return mv;
	}
	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)  //delete
	public ModelAndView updateFilm(int filmId, Film film) {//@RequestParam Integer filmId, 
		ModelAndView mv = new ModelAndView();
		//film = null;
		System.out.println(film + "***********");
		film.setId(filmId);
		//film = filmDao.findFilmById(filmId);
		System.out.println(film + "***********");
		Film updatedFilm = filmDao.updateFilm(filmId, film);
		//film = filmDao.updateFilm(filmId, film);
		mv.addObject("film", updatedFilm);
		System.out.println(film + "***********");
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/updateFilm.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST) //addFilm
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		System.out.println(film + "***********");
		film = filmDao.createFilm(film);
		mv.addObject("film", film);
		System.out.println(film + "***********");
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/showCreatedFilm.jsp"); 
		return mv;
	}
	
	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST) //update
	public ModelAndView deleteFilm(@RequestParam Integer filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = null;
		film = filmDao.findFilmById(filmId);
		Boolean deleted = filmDao.deleteFilm(filmId);
		if(deleted ==true) {
			film = null;
			mv.addObject("film", film);
		}
		mv.setViewName("WEB-INF/deleteConfirm.jsp");
		return mv;
	}
	
	
	@RequestMapping(path = "findFilmInfo.do", method = RequestMethod.GET, params = "filmId")
	public ModelAndView getFilm(int filmId) { //gets film details
		ModelAndView mv = new ModelAndView();
		Film details = filmDao.findFilmById(filmId); //assigns film details to details obj
		mv.addObject("film", filmDao.findFilmById(filmId)); //assigns to DAO
		System.out.println(details);
		mv.setViewName("WEB-INF/updateFilm.jsp");
		return mv;
	}
	
}
	

