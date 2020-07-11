package cn.sots.pojo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	private int cid;//购物车主键
	private int userTd;//关联用户表
	private int pid;//关联商品表
	private int cnum;//数量
	private double Subtotal;//小计
	private Date createTime;//商品添加时间
	private User user;//映射用户
	private List<Product> products;//映射一个或多个商品
	private Product product;//映射商品，为做酒店类型用
	private List<Hoteltitle> hotType;//映射酒店类型
	
}
