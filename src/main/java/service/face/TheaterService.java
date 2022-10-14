package service.face;

import java.util.List;

import dto.Theater;

public interface TheaterService {

	/**
	 * 극장 전체 조회
	 * 
	 * @return List<Theater> - 극장 전체 조회 결과 목록
	 */
	public List<Theater> getList();
	
}
