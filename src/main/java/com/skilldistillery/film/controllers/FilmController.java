package com.skilldistillery.film.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDao;
	
	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET,  params = "filmId") //filmId ,
	public ModelAndView showFilm(Integer filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(filmId);
		mv.addObject("film", film);
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/filmId.jsp");
		return mv;
	}
	
	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET, params = "keyword") //keyword  
	public ModelAndView showFilm(String keyword) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Film> film = filmDao.findByKeyword(keyword);
		mv.addObject("listOfFilms", film);
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/filmByKeyword.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST) //addFilm
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		film = filmDao.createFilm(film);
		mv.addObject("film", film);
		//mv.setViewName("film"); //If view resolver
		mv.setViewName("WEB-INF/index.html");
		return mv;
	}
//	
//	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET, params = "filmId") //update
//	public ModelAndView showFilm(Integer filmId) {
//		ModelAndView mv = new ModelAndView();
//		Film film = filmDao.findFilmById(filmId);
//		mv.addObject("film", film);
//		//mv.setViewName("film"); //If view resolver
//		mv.setViewName("WEB-INF/film.jsp");
//		return mv;
//	}
//	
//	@RequestMapping(path = "showFilm.do", method = RequestMethod.GET, params = "filmId")  //delete
//	public ModelAndView showFilm(Integer filmId) {
//		ModelAndView mv = new ModelAndView();
//		Film film = filmDao.findFilmById(filmId);
//		mv.addObject("film", film);
//		//mv.setViewName("film"); //If view resolver
//		mv.setViewName("WEB-INF/film.jsp");
//		return mv;
//	}

}
