package com.online.shopping.controller;
import com.online.shopping.model.*;
import com.online.shopping.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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

    @Autowired
    ProductService productService;

    @Autowired
    ProducerService producerService;

    @Autowired
    ProductCatService productCatService;

    @Autowired
    ProductTypeService productTypeService;

    @RequestMapping("trang-chu")
    public ModelAndView index() {
        ModelAndView model = new ModelAndView("/KhachHang/TrangChu");
        model.addObject("pageTitle", "Trang chủ");

        model.addObject("products",productService.getAllProduct());

        model.addObject("category",productCatService.getAllProductCategory());

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

        if( (password.equals(password2)) && phone.length() == 10 ){
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
                model.addObject("products",productService.getAllProduct());
            } else {
                model = new ModelAndView("KhachHang/DangNhap");
                model.addObject("message", "Username or Password is wrong!!");
            }
             return model;
    }




    @RequestMapping("/san-pham-noi-bat")
    public ModelAndView sanPhamNoiBat() {
        ModelAndView model = new ModelAndView("KhachHang/SanPhamNoiBat");

        model.addObject("category",productCatService.getAllProductCategory());

        model.addObject("products",productService.getAllProduct());
        return model;
    }

    @RequestMapping("tra-cuu-don-hang")
    public ModelAndView traCuuDonHang() {
        ModelAndView model = new ModelAndView("KhachHang/DonHang");

        model.addObject("category",productCatService.getAllProductCategory());

        return model;
    }

    @RequestMapping("/chi-tiet-san-pham/{id}")
    public ModelAndView xemChiTietSanPham(@PathVariable int id) {
        ModelAndView model = new ModelAndView("KhachHang/XemChiTietSP");

//        model.addObject("id",id);
        Product product = productService.getProduct(id);

        model.addObject("category",productCatService.getAllProductCategory());

        model.addObject("product",product);

        model.addObject("producer",producerService.getProducer(product.getIDProducer()));

        return model;
    }

    @RequestMapping("loai-hang/{name}/{id}")
    public ModelAndView xemTheoLoaiHang(@PathVariable int id,@PathVariable String name) {

        ModelAndView model = new ModelAndView("KhachHang/XemTheoLoaiHang");

        model.addObject("type",productTypeService.getAllProductType());

        model.addObject("category",productCatService.getAllProductCategory());

        model.addObject("products",productService.getProductByType(id));

        model.addObject("nameType",name);

        return model;
    }

    @RequestMapping("nganh-hang/{name}/{id}")
    public ModelAndView xemTheoNganhHang(@PathVariable int id,@PathVariable String name) {
        ModelAndView model = new ModelAndView("KhachHang/XemTheoNganhHang");

        model.addObject("products",productService.getProductByCat(id));

        model.addObject("type",productTypeService.getTypebyCat(id));

        model.addObject("category",productCatService.getAllProductCategory());

        model.addObject("nameCat",name);
        return model;
    }

    @RequestMapping("tin-tuc")
    public ModelAndView xemTinTuc() {
        ModelAndView model = new ModelAndView("KhachHang/XemTinTuc");

        model.addObject("category",productCatService.getAllProductCategory());

        return model;
    }

    @RequestMapping("chi-tiet-tin")
    public ModelAndView xemTinTucChiTiet() {
        ModelAndView model =  new ModelAndView("KhachHang/XemTinTucChiTiet");

        model.addObject("category",productCatService.getAllProductCategory());

        return model;
    }
}
