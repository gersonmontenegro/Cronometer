//
//  ViewController.swift
//  Cronometer
//
//  Created by Gerson Montenegro on 16/09/16.
//  Copyright © 2016 Gerson Montenegro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnRestart: UIToolbar!
    @IBOutlet var lblDigits: UILabel!
    @IBOutlet var btnPlay: UIBarButtonItem!
    @IBOutlet var barBottomToolbar: UIToolbar!
    @IBOutlet var buttonCollection: [UIBarButtonItem]?
    
    var bolPlay:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeSystemItem() {
        let btnTmp = UIButton()
        btnTmp.setImage(UIImage(named: "CameraIcon"), for: UIControlState())
        btnTmp.setTitleShadowColor(UIColor.blue, for: UIControlState())
        btnTmp.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnTmp.addTarget(self, action: #selector(ViewController.clickEvent), for: .touchUpInside)
//        self.btnPlay.customView = btnTmp
        
        let bUtil:UIButtonUtil = UIButtonUtil()
//        bUtil.changeIcon(tag: 99, icon: "Stop", coll: self.buttonCollection!, actionEvent: "clickEvent")
//        bUtil.changeIcon(btn: self.btnPlay, color: UIColor.cyan, iconSelected: "Stop", actionEventName: "clicEvent")
        
//        bUtil.testColor(btn: self.btnPlay)
        
        if self.bolPlay {
            self.bolPlay = false
            bUtil.changeImage(btn: self.btnPlay, imageName: "Stop")
        }else{
            self.bolPlay = true
            bUtil.changeImage(btn: self.btnPlay, imageName: "Play")
        }
        
//        bUtil.testColor(btn: self.btnPlay)
        
//        print ("1------")
//        print (self.btnPlay)
//        print (self.barBottomToolbar.viewWithTag(100)!)
//        print (self.view.viewWithTag(100)!)
//        print ("========")
//        for (q, w) in (self.buttonCollection?.enumerated())!{
//            if let auxBtn = w as? UIBarButtonItem{
//                print ("..........." +  String(describing: auxBtn.tag))
//            }
//        }
//        print ("2------")
//        print (self.barBottomToolbar.accessibilityElementCount())
//        for (k, v) in self.barBottomToolbar.subviews.enumerated(){
//            print (v.superclass!)
//            //if v.superclass! == UIView{
//                print ("--TAG---->" + String(v.tag))
//                print ("--SUBv--->" + String(v.subviews.count))
//            if v.subviews.count > 0{
//                for (n, m) in v.subviews.enumerated(){
//                    print ("----TAG---->" + String(m.tag))
//                }
//            }
//            //}
//        }
//        print ("3------")
        
    }
    
    func clickEvent(){
        print("...click Event")
    }
    
    @IBAction func clickPlayButton(_ sender: UIBarButtonItem) {
        print("el primero...")
        self.changeSystemItem()
    }
    
}

