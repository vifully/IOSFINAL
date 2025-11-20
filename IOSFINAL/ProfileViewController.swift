//
//  ProfileViewController.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/18/25.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var streakStatus: dailyStreakStatus = .active
        nameLabel.text = UserDefaults.standard.string(forKey: "username")
        

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

