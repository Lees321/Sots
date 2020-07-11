package cn.sots.pojo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private int userId;
	private String userName;//userName
	private String userPassword;
	private String userGender;
	private String userCode;
	private String userEmail;
	private String userPhone;
	private String userPhoto;
	private Date createTime;
	private int ucid;//1,2,3角色
	private int blogId;
}
