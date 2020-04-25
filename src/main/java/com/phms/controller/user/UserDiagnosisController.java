package com.phms.controller.user;

import com.phms.pojo.Appointment;
import com.phms.pojo.Diagnosis;
import com.phms.pojo.User;
import com.phms.service.AppointmentService;
import com.phms.service.DiagnosisService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller("UserDiagnosisController")
@RequestMapping("/user/diagnosis")
public class UserDiagnosisController {
    @Autowired
    private DiagnosisService diagnosisService;
    @Autowired
    private AppointmentService appointmentService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * 分类列表页面
     */
    @RequestMapping("/diagnosisListDoctor")
    public String applyListDoctor() {
        return "user/diagnosisListDoctor";
    }

    @RequestMapping("/diagnosisList")
    public String fenleiList() {
        return "user/diagnosisList";
    }
    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Diagnosis diagnosis) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        diagnosis.setUserId(user.getId());
        return diagnosisService.getAllByLimit(diagnosis);
    }


    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitBaoJie(Diagnosis diagnosis) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        diagnosis.setDoctorId(user.getId());
        return diagnosisService.getAllByLimit(diagnosis);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            diagnosisService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/add")
    public String addUserPage(Long id, Model model) {
        Appointment byId = appointmentService.getById(id);
        model.addAttribute("userId", byId.getUserId());
        model.addAttribute("petId", byId.getPetId());
        return "user/diagnosisAdd";
    }

    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Diagnosis diagnosis) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        try {
            diagnosis.setDoctorId(user.getId());
            diagnosis.setCreateTime(new Date());
            // 状态:1申请中,2申请通过,3不通过,4已完成
            diagnosis.setStatus(1);
            diagnosisService.add(diagnosis);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/chStatus")
    @ResponseBody
    @Transactional
    public String chStatus(Diagnosis diagnosis) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        try {
            diagnosis.setDoctorId(user.getId());
            diagnosisService.update(diagnosis);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
