//
//  ViewController.swift
//  table
//
//  Created by Mac User on 5/12/16.
//  Copyright © 2016 Ajackster. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    //If we wanted to update list from server we would just make an http get request and fill an array up with JSON objects
    var userID = ["", "1", "2", "3"]
    var firstNames = ["", "Mark", "Jacob", "Larry"]
    var lastNames = ["", "Otto", "Thornton", "the Bird"]
    var usernames = ["", "@mdo", "@fat", "@twitter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This line of code magically makes empty cells dissapear :)
        tableView.tableFooterView = UIView()
    }
    
    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //This function returns the amount of rows; this can also be determined on a live application by getting making an http get request to get the largest ID in the database.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return userID.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
            as! CustomCell

        //Checking if the row is odd
        if indexPath.row % 2 != 0
        {
            
            //Changing the row color to a snow-like color
            cell.backgroundColor = UIColor(red: 249.0/255, green: 249.0/255, blue: 249.0/255, alpha: 1.0)
        }
        
        //Bolding the column headers
        if indexPath.row == 0
        {
            cell.idLbl.font = UIFont.boldSystemFontOfSize(16.0)
            cell.firstNameLbl.font = UIFont.boldSystemFontOfSize(16.0)
            cell.lastNameLbl.font = UIFont.boldSystemFontOfSize(16.0)
            cell.usernameLbl.font = UIFont.boldSystemFontOfSize(16.0)
            
            //Setting the column headers
            makeCell(cell, ID: "#", firstName: "First Name", lastName: "Last Name", username: "Username")
            return cell
        }
        
        //Setting data for each custom cell
        makeCell(cell, ID: userID[indexPath.row], firstName: firstNames[indexPath.row], lastName: lastNames[indexPath.row], username: usernames[indexPath.row])
        return cell
    }
    
    //function that sets the data in a cell
    func makeCell(cell: CustomCell, ID: String, firstName: String, lastName: String, username: String)
    {
        cell.idLbl.text = ID
        cell.firstNameLbl.text = firstName
        cell.lastNameLbl.text = lastName
        cell.usernameLbl.text = username
    }
}

