package com.online.shopping.model;

public class MemberBill extends Bill {
    private Member member;
    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }
}
