//
//  MyListTableViewController.swift
//  MyList
//
//  Created by 山田宏道 on 2014/09/20.
//  Copyright (c) 2014年 Torques Inc. All rights reserved.
//

import UIKit

class MyListTableViewController: UITableViewController {

	var books : [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
			
			var firstBook = Book()
			firstBook.name = "My First Book"
			firstBook.star	= 4
			books.append(firstBook)
			
			var secondBook = Book(name:"どうぶつ")
			secondBook.star	= 3
			books.append(secondBook)

			books.append( Book(name: "Animals1", star: 5) )
			books.append( Book(name: "Animals2") )
			books.append( Book(name: "Animals3", star: 3) )
			books.append( Book(name: "Animals4") )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return books.count
    }
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("MyListCell", forIndexPath: indexPath) as UITableViewCell
		
		// Configure the cell...
		//				cell.textLabel?.text = "セクション：\(indexPath.section) 行：\(indexPath.row)"
		//				cell.detailTextLabel?.text = "行：\(indexPath.row)"
		
		let currentBook : Book = books[indexPath.row]
		cell.textLabel?.text	= currentBook.name
		cell.detailTextLabel?.text	= currentBook.starString()
		
		
		
		/*
		cell.textLabel?.text	= books[indexPath.row].name
		//			cell.detailTextLabel?.text	= "星：\(books[indexPath.row].star)"
		cell.detailTextLabel?.text	= books[indexPath.row].starString()
		*/
		
		return cell
	}
	

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
