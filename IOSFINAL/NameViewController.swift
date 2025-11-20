//
//  NameViewController.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/18/25.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func startTapped(_ sender: UIButton) {
        guard let name = nameField.text, !name.isEmpty else { return
    }
        UserDefaults.standard.set(name, forKey: "username")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.string(forKey: "username") != nil {
           
        }
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

