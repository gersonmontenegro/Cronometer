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
    let crono:Cronometer = Cronometer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.crono.setLblCronometer(lbl: self.lblDigits)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func changePlayIcon() {
        let bUtil:UIButtonUtil = UIButtonUtil()
        if self.bolPlay {
            bUtil.changeImage(btn: self.btnPlay, imageName: "Stop")
            self.crono.initCronometer()
        }else{
            self.crono.initCronometer()
            bUtil.changeImage(btn: self.btnPlay, imageName: "Play")
        }
        self.bolPlay = !self.bolPlay
    }
    
    @IBAction func clickPlayButton(_ sender: UIBarButtonItem) {
        self.changePlayIcon()
    }
    
}

