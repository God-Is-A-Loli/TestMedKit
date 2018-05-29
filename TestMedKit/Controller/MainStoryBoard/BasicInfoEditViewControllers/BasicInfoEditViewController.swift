//
//  BasicInfoEditViewController.swift
//  TestMedKit
//
//  Created by Student on 2018-04-30.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class BasicInfoEditViewController: UIViewController {
    var patient: Patient!
    var editingField: String!
    var completion: ((BasicInfo?) -> Void)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(doneButtonAction(_:)))
        self.navigationItem.rightBarButtonItem = doneBarButton
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
    
    @objc func doneButtonAction(_ sender: UIBarButtonItem){
        
        let newBasicInfo = getNewBasicInfo()
        
        completion(newBasicInfo)
        navigationController?.popViewController(animated: true)
    }

    func getNewBasicInfo() -> BasicInfo? {
        return nil
    }
}
