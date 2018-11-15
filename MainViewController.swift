//
//  MainViewController.swift
//  PageControl
//
//  Created by Administrator on 2018/11/9.
//  Copyright © 2018年 Apple, Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(buttonChanged(_:)), name: NSNotification.Name.init("pageChange"), object: nil)
    }
    
    @IBAction func leftButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func rightButtonClicked(_ sender: UIButton) {
    }
    
    @objc func buttonChanged(_ notification: Notification) {
        if let userInfo = notification.userInfo {
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
