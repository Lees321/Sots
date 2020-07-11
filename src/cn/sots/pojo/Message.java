package cn.sots.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message {
	private int mid;//信息id
	private String userName;//用户姓名
	private String userAddress;//地址
	private String userPhone;//电话
	private String userEmail;//邮箱
	private String suggestion;//建议
	private Date createTime;//时间
}
