package com.phms.controller.user;

import com.phms.model.MMGridPageVoBean;
import com.phms.pojo.Appointment;
import com.phms.pojo.Pet;
import com.phms.pojo.PetDaily;
import com.phms.pojo.User;
import com.phms.service.AppointmentService;
import com.phms.service.DiagnosisService;
import com.phms.service.PetDailyService;
import com.phms.service.PetService;
import com.phms.utils.MyUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
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
    @Autowired
    private PetDailyService petDailyService;

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
     * 预约统计
     */
    @RequestMapping("/tjApply")
    public String tjApply(Model model) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        Appointment appointment = new Appointment();
        appointment.setUserId(user.getId());
        appointment.setPage(1);
        appointment.setLimit(99999);
        MMGridPageVoBean<Appointment> voBean = (MMGridPageVoBean<Appointment>)  appointmentService.getAllByLimit(appointment);
        List<Appointment> rows = voBean.getRows();

        Map<String, String> names = new HashMap<>();
        Map<String, String> date = new HashMap<>();
        Map<String, Map<String, Integer>> counts = new HashMap<>();

        for (Appointment a: rows){
            Pet pet = petService.selectByPrimaryKey(a.getPetId());
            // 宠物名
            if (pet!=null){
                names.put(pet.getId()+"", pet.getName());
            }
            // 日期
            String dd = MyUtils.getDate2String(a.getAppTime(), "yyyy-MM-dd");
            date.put(dd, dd);

            // 次数
            Map<String, Integer> map = counts.get(pet.getId() + "");
            if (map == null){
                Map<String, Integer> m = new HashMap<>();
                m.put(dd, 0);
                counts.put(pet.getId() + "", m) ;
            }else {
                Integer i = map.get(dd);
                if (i==null){
                    map.put(dd, 0);
                }else {
                    map.put(dd, i + 1);
                }
            }
        }
        model.addAttribute("names", names);
        model.addAttribute("date", date);
        model.addAttribute("counts", counts);

        return "tj/tjApply";
    }

    /**
     * 预约统计
     */
    @RequestMapping("/tjDaily")
    public String tjDaily(Model model) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        Pet pet = new Pet();
        pet.setUserId(user.getId());
        pet.setPage(1);
        pet.setLimit(99999);
        MMGridPageVoBean<Pet> voBean = (MMGridPageVoBean<Pet>)  petService.getAllByLimit(pet);
        List<Pet> rows = voBean.getRows();

        model.addAttribute("pets", rows);
        if (rows.size()>0){
            pet = rows.get(0);
            PetDaily daily = new PetDaily();
            daily.setPetId(pet.getId());
            daily.setPage(1);
            daily.setLimit(99999);
            MMGridPageVoBean<PetDaily> ppp = (MMGridPageVoBean<PetDaily>)  petDailyService.getAllByLimit(daily);
            List<PetDaily> list = ppp.getRows();

            for (PetDaily p : list){
                p.setDateTime(MyUtils.getDate2String(p.getCreateTime(), "yyyy-MM-dd"));
            }

            model.addAttribute("dailys", list);
        }

        return "tj/tjDaily";
    }

    @RequestMapping("/tjDailyData")
    @ResponseBody
    public Object tjDailyData(Long id){
        PetDaily daily = new PetDaily();
        daily.setPetId(id);
        daily.setPage(1);
        daily.setLimit(99999);
        MMGridPageVoBean<PetDaily> ppp = (MMGridPageVoBean<PetDaily>)  petDailyService.getAllByLimit(daily);
        List<PetDaily> list = ppp.getRows();
        for (PetDaily p : list){
            p.setDateTime(MyUtils.getDate2String(p.getCreateTime(), "yyyy-MM-dd"));
        }
        return list;
    }
}
