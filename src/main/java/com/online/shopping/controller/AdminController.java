package com.online.shopping.controller;


import com.online.shopping.model.Admin;
import com.online.shopping.model.Member;
import com.online.shopping.service.AdminService;
import com.online.shopping.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller

@RequestMapping("/managers")
public class AdminController {
    @Autowired
    MemberService memberService;

    @Autowired
    AdminService adminService;

    @Autowired
    ServletContext context;

    @RequestMapping("")
    public String index() {
        return "redirect:/managers/admin-manager";
    }

    @RequestMapping("/admin-manager")
    public ModelAndView adminManager() {
        ModelAndView modelAndView = new ModelAndView("manager/quanTriVien");
        modelAndView.addObject("active", "quan-li-quan-tri-vien");
        List<Admin> list = adminService.getAllAdmin();
        modelAndView.addObject("list", list);
        return modelAndView;
    }

    @RequestMapping(value = "/admin-manager/new", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public ModelAndView addNewAdmin(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("repassword") String repassword, @RequestParam("phone") String phone, @RequestParam("avatar") MultipartFile file, @RequestParam("fullName") String fullname, @RequestParam("address") String address, @RequestParam("sex") String sex, @RequestParam("email") String email) throws ParseException {
        ModelAndView model = new ModelAndView("redirect:/managers/admin-manager");

        int _sex = sex.equalsIgnoreCase("Nam") ? 1 : 0;

        if ((password.equals(repassword))) {
            adminService.addAdmin(new Admin(username, password, 1, fullname, address, _sex, file.getOriginalFilename(), phone, email, new SimpleDateFormat("dd/MM/yyyy").parse("06/09/2000"), new Date(), new Date()));
            try {
                file.transferTo(new File(context.getRealPath("/image/" + file.getOriginalFilename())));
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            model.addObject("message", "Error");
        }
        return model;
    }


    @RequestMapping(value = "/admin-manager/update", method = RequestMethod.POST)
    public ModelAndView updateAdmin(@RequestParam("id-admin") int id, @RequestParam("fullname") String fullname, @RequestParam("avatar") MultipartFile file, @RequestParam("address") String address, @RequestParam("phone") String phone, @RequestParam("email") String email) {
        ModelAndView model = new ModelAndView("redirect:/managers/admin-manager");
        try {
            if (!file.isEmpty())
                file.transferTo(new File(context.getRealPath("/image/" + file.getOriginalFilename())));
            adminService.updateAdmin(id, fullname, address, phone, email, file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }

    @RequestMapping(value = "/admin-manager/delete", method = RequestMethod.POST)
    public ModelAndView deleteAdmin(@RequestParam("admin-id") int id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/managers/admin-manager");
        adminService.deleteAdmin(id);
        System.out.println(id);
        return modelAndView;
    }

    @RequestMapping("/staff-manager")
    public ModelAndView staffManager() {
        ModelAndView modelAndView = new ModelAndView("manager/nhanVien");
        modelAndView.addObject("active", "quan-li-nhan-vien");
        List<Admin> list = adminService.getAllAdmin();
        modelAndView.addObject("list", list);
        return modelAndView;
    }

    @RequestMapping(value = "/staff-manager/new", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public ModelAndView addNewStaff(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("repassword") String repassword, @RequestParam("phone") String phone, @RequestParam("avatar") MultipartFile file, @RequestParam("fullName") String fullname, @RequestParam("address") String address, @RequestParam("sex") String sex, @RequestParam("email") String email) throws ParseException {
        ModelAndView model = new ModelAndView("redirect:/managers/staff-manager");

        int _sex = sex.equalsIgnoreCase("Nam") ? 1 : 0;

        if ((password.equals(repassword))) {
            adminService.addAdmin(new Admin(username, password, 0, fullname, address, _sex, file.getOriginalFilename(), phone, email, new SimpleDateFormat("dd/MM/yyyy").parse("06/09/2000"), new Date(), new Date()));
            try {
                file.transferTo(new File(context.getRealPath("/image/" + file.getOriginalFilename())));
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            model.addObject("message", "Error");
        }
        return model;
    }

    @RequestMapping(value = "/staff-manager/update", method = RequestMethod.POST)
    public ModelAndView updateStaff(@RequestParam("id-admin") int id, @RequestParam("fullname") String fullname, @RequestParam("avatar") MultipartFile file, @RequestParam("address") String address, @RequestParam("phone") String phone, @RequestParam("email") String email) {
        ModelAndView model = new ModelAndView("redirect:/managers/staff-manager");
        try {
            if (!file.isEmpty())
                file.transferTo(new File(context.getRealPath("/image/" + file.getOriginalFilename())));
            adminService.updateAdmin(id, fullname, address, phone, email, file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }

    @RequestMapping(value = "/staff-manager/delete", method = RequestMethod.POST)
    public ModelAndView deleteStaff(@RequestParam("admin-id") int id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/managers/staff-manager");
        adminService.deleteAdmin(id);
        System.out.println(id);
        return modelAndView;
    }

    @RequestMapping("/member-manager")
    public ModelAndView memberManager() {
        ModelAndView modelAndView = new ModelAndView("manager/thanhVien");
        modelAndView.addObject("active", "quan-li-thanh-vien");
        List<Member> list = memberService.getAllMember();
        modelAndView.addObject("list", list);
        return modelAndView;
    }

    @RequestMapping(value = "/member-manager/update", method = RequestMethod.POST)
    public ModelAndView updateMember(@RequestParam("id-member") int id, @RequestParam("fullname") String fullname, @RequestParam("avatar") MultipartFile file, @RequestParam("address") String address, @RequestParam("phone") String phone, @RequestParam("email") String email) {
        ModelAndView model = new ModelAndView("redirect:/managers/member-manager");
        try {
            if (!file.isEmpty())
                file.transferTo(new File(context.getRealPath("/image/" + file.getOriginalFilename())));
            memberService.updateMember(id, fullname, address, phone, email, file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }

    @RequestMapping(value = "/member-manager/delete", method = RequestMethod.POST)
    public ModelAndView deleteMember(@RequestParam("member-id") int id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/managers/member-manager");
        memberService.deleteMember(id);

        return modelAndView;
    }

    @RequestMapping("/news-manager")
    public ModelAndView newsManager() {
        ModelAndView modelAndView = new ModelAndView("manager/tinTuc");
        modelAndView.addObject("active", "quan-li-tin-tuc");
        return modelAndView;
    }

    @RequestMapping("/supplier-manager")
    public ModelAndView supplierManager() {
        ModelAndView modelAndView = new ModelAndView("manager/nhaCungCap");
        modelAndView.addObject("active", "quan-li-nha-cung-cap");
        return modelAndView;
    }

    @RequestMapping("/category-manager")
    public ModelAndView categoryManager() {
        ModelAndView modelAndView = new ModelAndView("manager/nganhHang");
        modelAndView.addObject("active", "quan-li-nganh-hang");
        return modelAndView;
    }

    @RequestMapping("/type-manager")
    public ModelAndView typeManager() {
        ModelAndView modelAndView = new ModelAndView("manager/loaiHang");
        modelAndView.addObject("active", "quan-li-loai-hang");
        return modelAndView;
    }

    @RequestMapping("/product-manager")
    public ModelAndView productManager() {
        ModelAndView modelAndView = new ModelAndView("manager/hangHoa");
        modelAndView.addObject("active", "quan-li-hang-hoa");
        return modelAndView;
    }

    @RequestMapping("/bill-manager")
    public ModelAndView billManager() {
        ModelAndView modelAndView = new ModelAndView("manager/donHang");
        modelAndView.addObject("active", "quan-li-don-hang");
        return modelAndView;
    }

    @RequestMapping("/feedback-manager")
    public ModelAndView feedbackManager() {
        ModelAndView modelAndView = new ModelAndView("manager/phanHoi");
        modelAndView.addObject("active", "quan-li-phan-hoi");
        return modelAndView;
    }


}