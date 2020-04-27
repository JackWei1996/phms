package com.phms.controller.user;

import com.phms.pojo.Appointment;
import com.phms.pojo.User;
import com.phms.service.AppointmentService;
import com.phms.service.UserService;
import com.phms.utils.MyUtils;
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

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 用户预约
 */
@Controller("UserApplyController")
@RequestMapping("/user/apply")
public class UserApplyController {
    @Autowired
    private AppointmentService appointmentService;
    @Autowired
    private UserService userService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * 医生管理预约页面
     * user/applyListDoctor.html
     */
    @RequestMapping("/applyListDoctor")
    public String applyListDoctor(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }
        return "user/applyListDoctor";
    }

    /**
     * 普通用户预约页面
     * user/applyList.html
     */
    @RequestMapping("/applyList")
    public String applyList(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }
        return "user/applyList";
    }
    /**
     * 普通用户返回查询数据渲染表格
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        appointment.setUserId(user.getId());
        return appointmentService.getAllByLimit(appointment);
    }
    /**
     * 医生角色返回查询数据渲染表格
     */
    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitBaoJie(Appointment appointment) {
        return appointmentService.getAllByLimit(appointment);
    }

    /**
     * 根据id删除预约
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            appointmentService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 添加预约页面 user/applyAdd.html
     */
    @RequestMapping(value = "/add")
    public String addUserPage(Long id, Model model) {
        model.addAttribute("petId", id);
        return "user/applyAdd";
    }

    /**
     * 预约信息插入数据库
     */
    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (appointment.getPetId() == null){
            return "noPetId";
        }
        try {
            // 当前预约人的id
            appointment.setUserId(user.getId());
            appointment.setCreateTime(new Date());
            // 状态:1申请中,2申请通过,3不通过,4已完成
            appointment.setStatus(1);
            appointmentService.add(appointment);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 改变预约状态
     */
    @RequestMapping(value = "/chStatus")
    @ResponseBody
    @Transactional
    public String chStatus(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();


        try {
            appointment.setDoctorId(user.getId());
            appointmentService.update(appointment);
            // 就诊
            if (appointment.getStatus() == 4){
                return "jz";
            }
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 用户查看医生空闲时间
     */
    @RequestMapping(value = "/freeTime")
    public String freeTime(Model model) {
        List<User> doctors = userService.listDoctor();
        model.addAttribute("doctors", doctors);

        Long docId = doctors.get(0).getId();
        String nowDateYMD = MyUtils.getNowDateYMD();

        Map<String, Integer> map = appointmentService.getFreeTimeById(docId, nowDateYMD+MyUtils.START_HOUR);
        List<String> time = new ArrayList<>();
        List<Integer> value = new ArrayList<>();


        for(Map.Entry<String, Integer> a:map.entrySet()){
            time.add(a.getKey());
            Integer v = a.getValue();
            if (v==null){
                value.add(0);
            }else {
                value.add(v);
            }
        }

        model.addAttribute("time", time);
        model.addAttribute("value", value);

        return "user/freeTime";
    }
}
