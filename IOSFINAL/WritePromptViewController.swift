//
//  WritePromptViewController.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/11/25.
//

import UIKit

class WritePromptViewController: UIViewController {
    var promptText: String?
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var writingTextView: UITextView!

    
    @IBAction func submitPressed(_ sender: Any) {
        let t = writingTextView.text ?? ""
        if t.isEmpty { return }
        
        let p = SavinThePrompt(text: t)
        PromptStorage.shared.add(p)
        print("Saved prompts:", PromptStorage.shared.load())


        tabBarController?.selectedIndex = 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        promptLabel.text = promptText
        promptLabel.numberOfLines = 0
        
        
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
