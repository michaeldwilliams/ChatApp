//
//  ChatViewController.swift
//  ChatApp
//
//  Created by Michael Williams on 8/23/16.
//  Copyright © 2016 Michael D. Williams. All rights reserved.
//

import UIKit
import SlackTextViewController

class ChatViewController: SLKTextViewController {

    var messages:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView?.registerClass(ChatTableViewCell.self, forCellReuseIdentifier: "ChatTableViewCell")
        self.tableView?.rowHeight = UITableViewAutomaticDimension
        self.tableView?.estimatedRowHeight = 64.0
        self.tableView?.separatorStyle = .None
        self.textView.placeholder = "Message Here"
        self.inverted = true
        self.bounces = true
        self.shouldScrollToBottomAfterKeyboardShows = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChatTableViewCell", forIndexPath: indexPath)
        let message = self.messages[indexPath.row]
        cell.textLabel!.text = message
        cell.selectionStyle = .None
        cell.transform = tableView.transform
        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("ChatTableViewCell", forIndexPath: indexPath) as! ChatTableViewCell
//        let message = self.messages[indexPath.row]
//        cell.nameLabel.text = message.user
//        cell.bodyLabel.text = message.text
//        cell.selectionStyle = .None
        
        return cell
    }
    
    override func didPressRightButton(sender: AnyObject?) {
//        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//        let rowAnimation: UITableViewRowAnimation = self.inverted ? .Bottom : .Top
//        let scrollPosition: UITableViewScrollPosition = self.inverted ? .Bottom : .Top
        
        self.textView.refreshFirstResponder()
        let message = self.textView.text
        self.messages.insert(message, atIndex: 0)
//        self.tableView?.insertRowsAtIndexPaths([indexPath], withRowAnimation: rowAnimation)
        self.tableView?.reloadData()
//        self.tableView?.scrollToRowAtIndexPath(indexPath, atScrollPosition: scrollPosition, animated: true)
        
//        self.tableView?.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        super.didPressRightButton(sender)
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
