package com.duing.service.impl;

import com.duing.dao.FilmMapper;
import com.duing.entity.Film;
import com.duing.service.FilmService;
import com.duing.vo.FilmDetailVo;
import com.duing.vo.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class FilmServiceImpl implements FilmService {
    @Autowired
    private FilmMapper filmMapper;

    @Override
    public List<FilmVo> selectAll() {
        List<Film> films = filmMapper.getList();
        System.out.println("数据库中影片数量：" + films.size());

        List<FilmVo> result = new ArrayList<>();
        for (Film film : films) {
            FilmVo vo = new FilmVo();
            vo.setFilmId(film.getFilm_id());
            vo.setName(film.getName());
            vo.setDirector(film.getDirector());
            vo.setImgPath(film.getImg_path());

            result.add(vo);
        }
        return result;
    }

    @Override
    public FilmDetailVo findFilmById(String filmId) {
        Film film = filmMapper.getFilmById(filmId);
        FilmDetailVo filmDetailVo = new FilmDetailVo();
        filmDetailVo.setCountry(film.getCountry());
        filmDetailVo.setDirector(film.getDirector());
        filmDetailVo.setFilmId(film.getFilm_id());
        filmDetailVo.setImgPath(film.getImg_path());
        filmDetailVo.setLength(film.getLength());
        filmDetailVo.setName(film.getName());
        filmDetailVo.setPlayer(film.getPlayer());
        filmDetailVo.setSynopsis(film.getSynopsis());
        filmDetailVo.setPlayTime(film.getPlay_time());
        filmDetailVo.setType(film.getType());
        return filmDetailVo;
    }
}
