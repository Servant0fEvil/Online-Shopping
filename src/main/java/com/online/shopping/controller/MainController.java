package com.online.shopping.controller;

import com.online.shopping.model.Admin;
import com.online.shopping.model.Member;
import com.online.shopping.service.AdminService;
import com.online.shopping.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

import java.util.Date;

/**
 * @author ServantOfEvil
 */

@Controller
public class MainController {

    @Autowired
    MemberService memberService;
    

    @RequestMapping("trang-chu")
    public ModelAndView index() {
        ModelAndView model = new ModelAndView("/KhachHang/TrangChu");
        model.addObject("pageTitle", "Trang chủ");
        return model;
    }

    @RequestMapping(value = "dang-ky",method = RequestMethod.GET)
    public ModelAndView dangKy() {

        return new ModelAndView("KhachHang/DangKy");
    }


    @RequestMapping(value = "dang-ky",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    public ModelAndView regProcess(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
        ModelAndView model = null;
request.setCharacterEncoding("utf-8");
        String username = request.getParameter("name");
        String password = request.getParameter("pw");
        String password2 = request.getParameter("pw2");
        String fullname = request.getParameter("fl");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String adress = request.getParameter("address");

        System.out.println(fullname);
        if( (password.equals(password2) ==  true) && phone.length() == 10 ){
            if(memberService.validate(new Member(username,password)) == null){
                memberService.addMember(new Member(username,password,fullname,adress,phone,email,1,"",new Date(),new Date(),new Date(),1));
                model = new ModelAndView("KhachHang/DangNhap");
            }
        } else {
                model = new ModelAndView("KhachHang/DangKy");
                model.addObject("message","Error");
        }
        return model;

    }

    @RequestMapping(value = "dang-nhap",method = RequestMethod.GET)
    public ModelAndView dangNhap(HttpServletRequest request,HttpServletResponse response)
    {
        return new ModelAndView("KhachHang/DangNhap");
    }

    @RequestMapping(value = "dang-nhap",method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request,HttpServletResponse response){
            ModelAndView model = null;

            String username = request.getParameter("us");
            String password = request.getParameter("pw");


            Member member1 = memberService.validate(new Member(username,password));

            if(member1 != null){
                model = new ModelAndView("KhachHang/TrangChu");
            } else {
                model = new ModelAndView("KhachHang/DangNhap");
                model.addObject("message", "Username or Password is wrong!!");
            }
             return model;
    }




    @RequestMapping("san-pham-noi-bat")
    public ModelAndView sanPhamNoiBat() {

        return new ModelAndView("KhachHang/SanPhamNoiBat");
    }

    @RequestMapping("tra-cuu-don-hang")
    public ModelAndView traCuuDonHang() {
        return new ModelAndView("KhachHang/DonHang");
    }

    @RequestMapping("chi-tiet-san-pham")
    public ModelAndView xemChiTietSanPham() {

        return new ModelAndView("KhachHang/XemChiTietSP");
    }

    @RequestMapping("gio-hang")
    public ModelAndView xemGioHang() {

        return new ModelAndView("KhachHang/XemGioHang");
    }

    @RequestMapping("loai-hang")
    public ModelAndView xemTheoLoaiHang() {

        return new ModelAndView("KhachHang/XemTheoLoaiHang");
    }

    @RequestMapping("nganh-hang")
    public ModelAndView xemTheoNganhHang() {

        return new ModelAndView("KhachHang/XemTheoNganhHang");
    }

    @RequestMapping("tin-tuc")
    public ModelAndView xemTinTuc() {

        return new ModelAndView("KhachHang/XemTinTuc");
    }

    @RequestMapping("chi-tiet-tin")
    public ModelAndView xemTinTucChiTiet() {

        return new ModelAndView("KhachHang/XemTinTucChiTiet");
    }
}
