package cn.sots.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Hoteltitle {
	private int zid;
	private String zhotelType;//房间类型,单人间，双人间，套房
	private double zhotelPrice;//商品价格
	private String xxx;//简单描述zDescrible
	private String zIcon;//图标描述
	private String zhotelPhotos;//图片
	private int hid;//与酒店表相联系
	private int pid;
}
