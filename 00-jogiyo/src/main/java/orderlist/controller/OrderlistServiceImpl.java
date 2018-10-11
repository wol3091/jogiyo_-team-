package orderlist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import orderlist.bean.OrderlistDTO;
import orderlist.dao.OrderlistDAO;

@Service
public class OrderlistServiceImpl implements OrderlistService {
	
	
	@Autowired
	private OrderlistDAO orderlistDAO;
	
	@Override
	public int orderlistWrite(OrderlistDTO orderlistDTO) {
		return orderlistDAO.orderlistWrite(orderlistDTO);

	}

	@Override
	public String dayProfit(OrderlistDTO orderlistDTO) {
		return orderlistDAO.dayProfit(orderlistDTO);
	}

	@Override
	public List<OrderlistDTO> propitByMenu(String ceo_seq) {
		return orderlistDAO.propitByMenu(ceo_seq);
	}

}
