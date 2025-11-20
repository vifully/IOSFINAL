//
//  ViewController.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/3/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var promptLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        promptLabel.numberOfLines = 0

        APIService.shared.fetchRedditPrompt { prompt in
            DispatchQueue.main.async {
                self.promptLabel.text = prompt ?? "No prompt today"
                print("Prompt set:", self.promptLabel.text!)
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWriteScreen" {
            let destination = segue.destination as! WritePromptViewController
            destination.promptText = promptLabel.text
        }
    }
}


