package orderlist.controller;

import java.util.List;

import orderlist.bean.OrderlistDTO;

public interface OrderlistService {
	int orderlistWrite(OrderlistDTO orderlistDTO);
	String dayProfit(OrderlistDTO orderlistDTO);
	List<OrderlistDTO> propitByMenu(String ceo_seq);
}
