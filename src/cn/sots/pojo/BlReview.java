package cn.sots.pojo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlReview {
	private int brid;
	private String brContent;
	private Date createTime;
	private int userId;
	private int blogId;
	private List<User> users;
	private Blog blog;
}
