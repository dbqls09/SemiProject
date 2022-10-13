package dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.face.MovieDao;

public class MovieDaoImpl implements MovieDao {

	private PreparedStatement ps; //SQL수행 객체
	private ResultSet rs; //SQL조회 결과 객체
}
