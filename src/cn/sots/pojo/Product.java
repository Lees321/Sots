package cn.sots.pojo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

	private Integer pid;
    private String proCode;
    private String proName;
    private String proDescrible;
    private String proDetailed;
    private Double proPrice;
    private String proPhoto;
    private Integer proNumber;
    private Double proDiscount;
    private Double proCoupon;
    private String proAddress;
    private String proType;
    private String proValuation;
    private Integer proNumViews;
    private Date createTime;
    private Integer yid;
    private Date proFormDay;
    private Date proToDay;
    private Integer thrId;
    private Integer hid;
    private Integer cid;
    private List<Hoteltitle> hotels;
    private List<ProPhotos> proPhotos;

	public Product(String proName,String proType, String proAddress, Integer yid) {
		super();
		this.proName = proName;
		this.proType = proType;
		this.proAddress = proAddress;
		this.yid = yid;
	}

    
}
