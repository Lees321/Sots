package cn.sots.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message {
	private int mid;//��Ϣid
	private String userName;//�û�����
	private String userAddress;//��ַ
	private String userPhone;//�绰
	private String userEmail;//����
	private String suggestion;//����
	private Date createTime;//ʱ��
}
