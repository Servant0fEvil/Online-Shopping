package com.online.shopping.dao;

import com.online.shopping.model.Member;

import java.util.List;

public interface MemberDAO {
    public Member getMember(int id);
    public List<Member> getAllMember();
    public int addMember(Member member);
    public int updateMember(Member member);
    public int deleteMember(int id);
}
