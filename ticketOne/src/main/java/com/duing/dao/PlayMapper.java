package com.duing.dao;

import com.duing.entity.Play;
import java.util.List;

public interface PlayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Play record);

    Play selectByPrimaryKey(Long id);

    List<Play> selectAll();

    int updateByPrimaryKey(Play record);
}