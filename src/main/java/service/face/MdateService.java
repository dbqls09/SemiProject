package service.face;

import java.util.List;

import dto.Mdate;

public interface MdateService {

	/**
	 * 날짜 전체 조회
	 * 
	 * @return List<Mdate> - 날짜 전체 조회 결과 목록
	 */
	public List<Mdate> getList();
	
}
