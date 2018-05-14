//
//  MeTableViewController.swift
//  TestMedKit
//
//  Created by Student on 2018-02-20.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
import ResearchKit

class MyProfileTableViewController: UITableViewController {
    var patient: Patient!
    var server: Server!
    var selectedSurveyIndex: Int? = nil
    var uploadEndpoint: Endpoints? = nil
    var resultProcessor: SurveyResultProcessor? = nil
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

        let footerView = UIView()
        self.tableView.tableFooterView = footerView
        self.tableView.backgroundColor = UIColor.groupTableViewBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameLabel.text = patient.basicInfo.fullName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
    }
 */
    func performSurvey(forRow row: Int){
        var id: String = ""
        var orkTaskViewController: ORKTaskViewController? = nil
        
        switch row{
        case 0:
            id = "TobaccoSurvey"
            orkTaskViewController = TobaccoFactory.create(with: id, delegate: self, Endpoints.updateTobacco.rawValue)
        case 1:
            id = "AlcoholSurvey"
            uploadEndpoint = Endpoints.updateAlcohol
            resultProcessor = AlcoholResultProcessor()
            orkTaskViewController = AlcoholFactory.create(with: id, delegate: self)
        case 2:
            id = "PersonalSurvey"
            uploadEndpoint = Endpoints.updatePersonal
            resultProcessor = PersonalResultProcessor()
            orkTaskViewController = PersonalFactory.create(with: id, delegate: self)
        case 3:
            id = "FamilyHistorySurvey"
            uploadEndpoint = Endpoints.updateFamily
            resultProcessor = FamilyHistoryResultProcessor()
            orkTaskViewController = FamilyHistoryFactory.create(with: id, delegate: self)
        case 4:
            id = "AllergySurvey"
            uploadEndpoint = Endpoints.updateAllergy
            resultProcessor = AllergyResultProcessor()
            orkTaskViewController = AllergyFactory.create(with: id, delegate: self)
        case 5:
            id = "MedicationSurvey"
            uploadEndpoint = Endpoints.updateMedication
            resultProcessor = MedicationResultProcessor()
            orkTaskViewController = MedicationFactory.create(with: id, delegate: self)
        case 6:
            id = "MedicalConditionSurvey"
            uploadEndpoint = Endpoints.updateMedicationCondition
            resultProcessor = MedicationConditionResultProcessor()
            orkTaskViewController = MedicalConditionFactory.create(with: id, delegate: self)
        case 7:
            id = "SurgerySurvey"
            uploadEndpoint = Endpoints.updateSurgery
            resultProcessor = SurgeryResultProcessor()
            orkTaskViewController = SurgeryFactory.create(with: id, delegate: self)
        case 8:
            id = "GynecologySurvey"
            uploadEndpoint = Endpoints.updateGynecology
            resultProcessor = GynecologyResultProcessor()
            orkTaskViewController = GynecologyFactory.create(with: id, delegate: self)
        default:
            fatalError()
        }
        
        if let orkTaskViewController = orkTaskViewController {
            present(orkTaskViewController, animated: true, completion: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            performSurvey(forRow: indexPath.row)
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        return CGFloat(20)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueID = segue.identifier, segueID == "showDetailInfo" else { fatalError() }
        
        guard let destination = segue.destination as? DetailProfileTableViewController else { fatalError() }
        
        destination.patient = self.patient
        destination.server = server
    }
}
