package com.online.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author ServantOfEvil
 */

@Controller
public class MainController {

    @RequestMapping("trang-chu")
    public ModelAndView index() {
        ModelAndView model = new ModelAndView("/KhachHang/TrangChu");
        model.addObject("pageTitle", "Trang chủ");
        return model;
    }

    @RequestMapping("dang-ky")
    public ModelAndView dangKy() {

        return new ModelAndView("KhachHang/DangKy");
    }

    @RequestMapping("dang-nhap")
    public ModelAndView dangNhap() {
        return new ModelAndView("KhachHang/DangNhap");
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
