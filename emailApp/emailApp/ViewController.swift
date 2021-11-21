//
//  ViewController.swift
//  emailApp
//
//  Created by Konstantin Zaimov on 11/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailsView: UITableView!
    
    var emails = Email.getMockEmails(items: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = emails[indexPath.row]
        var cell: EmailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath) as! EmailTableViewCell
        if let emailCell = cell {
            emailCell.title.text = emails[indexPath.row].sender
            emailCell.subject.text = emails[indexPath.row].subject
            emailCell.content.text = emails[indexPath.row].summary
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm a"
            let timeString = formatter.string(from: emails[indexPath.row].date)
            emailCell.time.text = timeString
            return emailCell
        }
        
        return EmailTableViewCell(style: .default, reuseIdentifier: "emailCell")
    }
    
    
}

