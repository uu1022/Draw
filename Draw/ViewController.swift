//
//  ViewController.swift
//  Draw
//
//  Created by 张聪 on 2020/5/21.
//  Copyright © 2020 李煜. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var znView: ZNView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChange(firstBtn)
    }


    @IBAction func colorChange(_ sender: UIButton) {
        let currentColor = sender.backgroundColor!
        znView.lineColor = currentColor
    }
    
    @IBAction func widtChange(_ sender: UISlider) {
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
}

