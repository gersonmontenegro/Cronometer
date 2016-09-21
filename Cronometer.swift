//
//  Cronometer.swift
//  Cronometer
//
//  Created by Gerson Montenegro on 21/09/16.
//  Copyright © 2016 Gerson Montenegro. All rights reserved.
//

import Foundation
import UIKit

class Cronometer{
    private var lblCronometer:UILabel = UILabel()
    private var seconds:Int = 0
    private var minutes:Int = 0
    private var hours:Int = 0
    private var counter:Int = 0
    private var timer:Timer = Timer()
    private var state:Bool = true
    
    func setLblCronometer(lbl:UILabel){
        self.lblCronometer = lbl
    }
    
    func initCronometer(){
        if self.state{
            //            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector(("onTick")), userInfo: nil, repeats: true)
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.onTick), userInfo: nil, repeats: true)
//            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("onTick"), userInfo: nil, repeats: true)
        }else{
            self.timer.invalidate()
        }
        
        self.state = !self.state
    }
    
    @objc func onTick(){
        self.counter += 1
        print(self.counter)
    }
}
