//
//  UIButtonUtil.swift
//  Cronometer
//
//  Created by Gerson Montenegro on 18/09/16.
//  Copyright © 2016 Gerson Montenegro. All rights reserved.
//

import Foundation
import UIKit

class UIButtonUtil{
    
    func testColor(btn:UIBarButtonItem){
        btn.tintColor = UIColor.cyan
    }
    
    func getImage(btn:UIBarButtonItem){
        
    }
    
    func changeImage(btn:UIBarButtonItem, imageName: String){
        btn.image = UIImage(named: imageName)
    }
    
    func UIColorFromRGB(rgbValue:UInt) -> UIColor{
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0xFF0000) >> 8) / 255.0,
            blue: CGFloat((rgbValue & 0xFF0000)) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    func changeIcon(btn:UIBarButtonItem, color:UIColor, iconSelected:String, actionEventName:String){
        let btnTmp = UIButton()
        btnTmp.setImage(UIImage(named: iconSelected), for: UIControlState() )
        btnTmp.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        btnTmp.addTarget(self, action: Selector((actionEventName)), for: .touchUpInside)
        btnTmp.tintColor = UIColor.cyan
        btnTmp.setTitleColor(UIColorFromRGB(rgbValue: 0xFF00FF), for: UIControlState.application)
        btn.customView = btnTmp
//        btn.tintColor = UIColor.cyan
    }
    
    func _changeIcon(tag:Int, icon:String, coll:[UIBarButtonItem], actionEvent:String){
        for (_, w) in (coll.enumerated()){
//            if let auxBtn = w as? UIBarButtonItem{
            let auxBtn = w as UIBarButtonItem
            if auxBtn.tag == tag{
                let btnTmp = UIButton()
                btnTmp.setImage(UIImage(named: icon), for: UIControlState())
                //            btnTmp.setTitleShadowColor(UIColor.blue, for: UIControlState())
                btnTmp.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
                //                btnTmp.addTarget(self, action: #selector(action), for: .touchUpInside)
                btnTmp.addTarget(self, action: Selector((actionEvent)), for: .touchUpInside)
//                btnTmp.tintColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
                auxBtn.customView = btnTmp
                self.testColor(btn: auxBtn)
                break
            }
//            }
        }
    }
    
}
