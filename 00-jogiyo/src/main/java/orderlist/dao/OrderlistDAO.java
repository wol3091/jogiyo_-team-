package orderlist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import orderlist.bean.OrderlistDTO;

@Repository
public class OrderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int orderlistWrite(OrderlistDTO orderlistDTO) {
		return sqlSession.insert("mybatis.orderlistMapper.orderlistInsert",orderlistDTO) ;
	}
	
	public String dayProfit(OrderlistDTO orderlistDTO) {
		return sqlSession.selectOne("mybatis.orderlistMapper.dayProfit",orderlistDTO) ;
	}
	
	public List<OrderlistDTO> propitByMenu(String ceo_seq) {
		return sqlSession.selectList("mybatis.orderlistMapper.propitByMenu",ceo_seq) ;
	}
	
	

}
