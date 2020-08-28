package com.online.shopping.service.impl;

import com.online.shopping.dao.ProducerDAO;
import com.online.shopping.model.Producer;
import com.online.shopping.service.ProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProdcerServiceImpl implements ProducerService {
    @Autowired
    ProducerDAO producerDAO;

    @Override
    public Producer getProducer(int id) {
        return producerDAO.getProducer(id);
    }

    @Override
    public List<Producer> getAllProducer() {
        return producerDAO.getAllProducer();
    }

    @Override
    public int addProducer(Producer Producer) {
        return producerDAO.addProducer(Producer) ;
    }

    @Override
    public int updateProducer(Producer Producer) {
        return producerDAO.updateProducer(Producer);
    }

    @Override
    public int deleteProducer(int id) {
        return producerDAO.deleteProducer(id);
    }
}
