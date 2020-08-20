package com.online.shopping.service.impl;

import com.online.shopping.dao.MemberDAO;
import com.online.shopping.model.Member;
import com.online.shopping.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

    @Override
    public Member getMember(int id) {
        return memberDAO.getMember(id);
    }

    @Override
    public List<Member> getAllMember() {
        return memberDAO.getAllMember();
    }

    @Override
    public int addMember(Member member) {
        return memberDAO.addMember(member);
    }

    @Override
    public int updateMember(Member member) {
        return  memberDAO.updateMember(member);
    }

    @Override
    public int deleteMember(int id) {
        return memberDAO.deleteMember(id);
    }
}
