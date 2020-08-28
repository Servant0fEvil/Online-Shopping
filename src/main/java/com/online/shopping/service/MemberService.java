package com.online.shopping.service;

import com.online.shopping.model.Member;

import java.util.List;

public interface MemberService {
    public Member getMember(int id);
    public List<Member> getAllMember();
    public int addMember(Member member);
    public int updateMember(Member member);
    public int updateMember(int id, String name, String address, String phone, String email, String avt);
    public int deleteMember(int id);
    public Member validate(Member member);
}
