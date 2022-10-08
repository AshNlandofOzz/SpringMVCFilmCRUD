package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.ArrayList;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;



public interface FilmDAO {
	  public Film findFilmById(int filmId);
	  public ArrayList<Actor> findActorsByFilmId(int filmId) ;
	  public ArrayList<Film> findByKeyword(String keyword) ;
	  
	  //full CRUD
	  public Actor createActor(Actor actor);
	  public Film createFilm(Film film);
	  public Film updateFilm(int filmId, Film film);
	  public boolean deleteFilm(int filmId);
}
