//
//  ProfileDetailTableViewController.swift
//  TestMedKit
//
//  Created by Student on 2018-02-21.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class DetailProfileTableViewController: UITableViewController {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    var patient: Patient!
    
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
        firstNameLabel.text = patient.firstName
        lastNameLabel.text = patient.lastName
        genderLabel.text = patient.gender
        birthdayLabel.text = patient.dateOfBirth
        phoneLabel.text = patient.phoneNumber
        emailLabel.text = patient.email
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view delegate
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){

    }
 */
    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
     */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let segueID = segue.identifier{
            switch segueID {
            case "editFirstName":
                let destination = segue.destination as! EditViewController
                destination.which = EditType.FirstName
                destination.patient = patient
            case "editLastName":
                let destination = segue.destination as! EditViewController
                destination.which = EditType.LastName
                destination.patient = patient
            case "editBirthday":
                let destination = segue.destination as! BirthdayPickerViewController
                destination.patient = patient
            case "editGender":
                let destination = segue.destination as! GenderPickerViewController
                destination.patient = patient
            case "editPhoneNumber":
                let destination = segue.destination as! EditViewController
                destination.which = EditType.Phone
                destination.patient = patient
            case "editEmail":
                let destination = segue.destination as! EditViewController
                destination.which = EditType.Email
                destination.patient = patient
            default:
                fatalError("what happened?")
            }
        }
    }
}