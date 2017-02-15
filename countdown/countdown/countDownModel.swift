//
//  countDownModel.swift
//  countdown
//
//  Created by Anwar Baroudi on 2/14/17.
//  Copyright © 2017 Anwar Baroudi. All rights reserved.
//

import Foundation


class CountDown {
    var currentCounter: Int
    var timer = Timer()
    
    init (initialCount: Int) {
        self.currentCounter = initialCount
//        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.decrement), userInfo: nil, repeats: true)
    }
    
    func decrement() {
        self.currentCounter -= 1
        if currentCounter == 0 {
            timer.invalidate()
        }
    }
    
}
