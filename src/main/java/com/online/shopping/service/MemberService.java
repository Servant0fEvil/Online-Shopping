package com.online.shopping.service;

import com.online.shopping.model.Member;

import java.util.List;

public interface MemberService {
    public Member getMember(int id);
    public List<Member> getAllMember();
    public int addMember(Member member);
    public int updateMember(Member member);
    public int deleteMember(int id);
}
