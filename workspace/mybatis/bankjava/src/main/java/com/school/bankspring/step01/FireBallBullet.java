package com.school.bankspring.step01;

public class FireBallBullet implements MagicSystem {

	@Override
	public void magic() {
		System.out.println("파이어볼 발사!!!");
	}

	@Override
	public String showMasicName() {
		return "파이어볼";
	}

}
