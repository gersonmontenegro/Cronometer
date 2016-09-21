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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func changeSystemItem() {
        let bUtil:UIButtonUtil = UIButtonUtil()
        if self.bolPlay {
            self.bolPlay = false
            bUtil.changeImage(btn: self.btnPlay, imageName: "Stop")
        }else{
            self.bolPlay = true
            bUtil.changeImage(btn: self.btnPlay, imageName: "Play")
        }
    }
    
    func clickEvent(){
        
    }
    
    @IBAction func clickPlayButton(_ sender: UIBarButtonItem) {
        self.changeSystemItem()
    }
    
}

