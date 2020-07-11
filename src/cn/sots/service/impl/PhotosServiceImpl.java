package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.PhotosDao;
import cn.sots.pojo.Blog;

import cn.sots.pojo.ProPhotos;
import cn.sots.pojo.Product;
import cn.sots.service.PhotosService;
@Service
public class PhotosServiceImpl implements PhotosService {
	@Autowired
	private PhotosDao photosDao;
	@Override
	public List<Product> getPhotos(int yid) {
		// TODO Auto-generated method stub
		return photosDao.getPhotos(yid);
	}
	@Override
	public List<Blog> getBolglist() {
		// TODO Auto-generated method stub
		return photosDao.getBolglist();
	}

}
