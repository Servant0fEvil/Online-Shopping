package com.online.shopping.dao;

import com.online.shopping.model.Producer;

import java.util.List;

public interface ProducerDAO {
    public Producer getProducer(int id);
    public List<Producer> getAllProducer();
    public int addProducer(Producer Producer);
    public int updateProducer(Producer Producer);
    public int deleteProducer(int id);
}
