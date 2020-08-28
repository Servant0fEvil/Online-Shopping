package com.online.shopping.controller;


import com.online.shopping.model.Cart;
import com.online.shopping.model.Product;
import com.online.shopping.service.ProductCatService;
import com.online.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ShoppingCart {

    @Autowired
    ProductService productService;

    @Autowired
    ProductCatService productCatService;

    @RequestMapping("gio-hang")
    public ModelAndView xemGioHang() {

        ModelAndView model = new ModelAndView("KhachHang/XemGioHang");

        model.addObject("category",productCatService.getAllProductCategory());

        return model;
    }

    @RequestMapping("gio-hang/them-hang/{id}")
    public ModelAndView addCart(@PathVariable int id, HttpSession session) {

        ModelAndView model = new ModelAndView("KhachHang/XemGioHang");

        model.addObject("category",productCatService.getAllProductCategory());

        Product product = productService.getProduct(id);

        Cart cart = new Cart();

        List<Cart> list = (List<Cart>) session.getAttribute("cart");

        if(list == null){
            list = new ArrayList<>();
        }

        if(product != null){
            cart.toCart(product);
            Double total = addToCart(list,cart);
            model.addObject("total",total);
            session.setAttribute("cart",list);
        }
        model.addObject("listcart",list);
        return model;
    }

    public  Double addToCart(List<Cart> list, Cart cart) {
        Double total = new Double(0);
        boolean isExit = false;
        for(Cart c :list){
            if(c.equals(cart)){
                c.setQuantity(c.getQuantity()+1);
                isExit = true;
            }
            total += (c.getPrice() * c.getQuantity());
        }
        if (isExit == false){
            list.add(cart);
            total += (cart.getPrice()*cart.getQuantity());
        }
        return total;
    }
    @RequestMapping("gio-hang/xoa-hang/{id}")
    public ModelAndView removeCart(@PathVariable int id,HttpSession session){
        ModelAndView mav = new ModelAndView("KhachHang/XemGioHang");
        List<Cart> list = (List<Cart>) session.getAttribute("cart");
        if (list != null) {
            Double total = removeCartItem(list, id);
            mav.addObject("total", total);
            session.setAttribute("cart", list);
        }
        mav.addObject("listCart", list);
        return mav;
    }

    private Double removeCartItem(List<Cart> list, int id) {
        Double total = new Double(0);
        Cart temp = null;
        for (Cart c : list) {
            if (c.getId() == (id)) {
                temp = c;
                continue;
            }
            total += c.getPrice()*c.getQuantity();
        }
        if (temp != null)
            list.remove(temp);
        return total;
    }
    @RequestMapping("/gio-hang/cap-nhat")
    public ModelAndView updateCart(@RequestParam int id,
                                   @RequestParam int quantity,
                                   HttpSession session) {
        ModelAndView mav = new ModelAndView("KhachHang/XemGioHang");
        List<Cart> list = (List<Cart>) session.getAttribute("cart");
        if (list != null) {
            Double total = updateCartItem(list, id, quantity);
            mav.addObject("total", total);
            session.setAttribute("cart", list);
        }
        mav.addObject("listCart", list);
        return mav;
    }

    private Double updateCartItem(List<Cart> list, int id, int quantity) {
        Double total = new Double(0);
        for (Cart c : list) {
            if (c.getId() == (id)) {
                c.setQuantity(quantity);
            }
            total += c.getQuantity()*c.getPrice();
        }
        return total;
    }

}
