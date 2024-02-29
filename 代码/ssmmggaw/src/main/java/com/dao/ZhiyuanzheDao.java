package com.dao;

import com.entity.ZhiyuanzheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhiyuanzheVO;
import com.entity.view.ZhiyuanzheView;


/**
 * 志愿者
 * 
 * @author 
 * @email 
 * @date 2021-04-22 00:34:43
 */
public interface ZhiyuanzheDao extends BaseMapper<ZhiyuanzheEntity> {
	
	List<ZhiyuanzheVO> selectListVO(@Param("ew") Wrapper<ZhiyuanzheEntity> wrapper);
	
	ZhiyuanzheVO selectVO(@Param("ew") Wrapper<ZhiyuanzheEntity> wrapper);
	
	List<ZhiyuanzheView> selectListView(@Param("ew") Wrapper<ZhiyuanzheEntity> wrapper);

	List<ZhiyuanzheView> selectListView(Pagination page,@Param("ew") Wrapper<ZhiyuanzheEntity> wrapper);
	
	ZhiyuanzheView selectView(@Param("ew") Wrapper<ZhiyuanzheEntity> wrapper);
	
}
