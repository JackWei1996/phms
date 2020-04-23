package com.phms.service.impl;

import com.phms.mapper.DiagnosisMapper;
import com.phms.model.MMGridPageVoBean;
import com.phms.pojo.Diagnosis;
import com.phms.service.DiagnosisService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    DiagnosisMapper diagnosisMapper;
    @Override
    public Object getAllByLimit(Diagnosis diagnosis) {
        int size = 0;

        Integer begin = (diagnosis.getPage() - 1) * diagnosis.getLimit();
        diagnosis.setPage(begin);

        List<Diagnosis> rows = new ArrayList<>();
        try {
            rows = diagnosisMapper.getAllByLimit(diagnosis);
            size = diagnosisMapper.countAllByLimit(diagnosis);
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<Diagnosis> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        diagnosisMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(Diagnosis diagnosis) {
        diagnosisMapper.insert(diagnosis);
    }

    @Override
    public void update(Diagnosis diagnosis) {
        diagnosisMapper.updateByPrimaryKeySelective(diagnosis);
    }
}
