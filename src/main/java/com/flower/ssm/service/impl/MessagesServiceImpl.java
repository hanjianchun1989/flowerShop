package com.flower.ssm.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.MessagesMapper;
import com.flower.ssm.pojo.Messages;
import com.flower.ssm.service.IMessagesService;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月20日 下午2:25:32
 * @version 1.0
 */
@Service
public class MessagesServiceImpl implements IMessagesService {
	@Autowired
	MessagesMapper messagesMapper;

	@Override
	public void addMessages(Messages messages) {

		messagesMapper.insert(messages);
	}


}
