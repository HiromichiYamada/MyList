//
//  Book.swift
//  MyList
//
//  Created by 山田宏道 on 2014/09/20.
//  Copyright (c) 2014年 Torques Inc. All rights reserved.
//

import Foundation

class Book {
	var name = ""
	var star = 1
	
	// 独自のコンストラクタ.
	init( name: String = "タイトル無し", star: Int = 1 ){
		self.name = name
		self.star = star
	}
	
	// 星を文字列で返す
	// インスタンスメソッド
	func starString() -> String {
//		return "🌟\(self.star)"
		
		var retString = ""
		for i in (0 ..< self.star) {
			retString += "🌟"
		}
		return retString
	}
	
	/*
	init( name: String = "タイトル無し" ){
		self.name = name
	}
	*/
}


