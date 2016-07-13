//
//  ex5ViewController.swift
//  ViewHomework
//
//  Created by YeYixin on 7/13/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ex5ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var namesTableView: UITableView!
    
    var data : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        self.namesTableView.dataSource = self;
    }

    func setup() {
        for i in 0..<10 {
            data.append("Row \(i+1)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ex5Identifier", forIndexPath: indexPath) as UITableViewCell
        
        let theCell = cell.contentView.viewWithTag(101) as? UILabel
    
        theCell?.text = self.data[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
