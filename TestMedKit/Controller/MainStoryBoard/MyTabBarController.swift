//
//  MyTabBarController.swift
//  TestMedKit
//
//  Created by Student on 2018-05-24.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    var basicInfo: BasicInfo!
    var server: Server!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
