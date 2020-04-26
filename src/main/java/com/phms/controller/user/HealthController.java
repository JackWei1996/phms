package com.phms.controller.user;

import com.phms.model.MMGridPageVoBean;
import com.phms.pojo.Appointment;
import com.phms.pojo.Pet;
import com.phms.pojo.User;
import com.phms.service.AppointmentService;
import com.phms.service.DiagnosisService;
import com.phms.service.PetService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * 健康评估
 */
@Controller("HealthController")
@RequestMapping("/health")
public class HealthController {
    @Autowired
    private DiagnosisService diagnosisService;
    @Autowired
    private AppointmentService appointmentService;
    @Autowired
    private PetService petService;

    /**
     * 分析页面
     */
    @RequestMapping("/assess")
    public String applyListDoctor(Model model) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        Pet pet = new Pet();
        pet.setUserId(user.getId());
        pet.setPage(1);
        pet.setLimit(100);
        MMGridPageVoBean<Pet> voBean = (MMGridPageVoBean<Pet>) petService.getAllByLimit(pet);
        List<Pet> rows = voBean.getRows();
        // 获取到该用户下所有的宠物
        model.addAttribute("pets", rows);
        return "user/assess";
    }

    /**
     * 分析数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Long id, Model model) {
        return null;
    }
}
