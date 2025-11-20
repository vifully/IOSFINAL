//
//  TimeLineController.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/19/25.
//

import UIKit

class TimeLineController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var posts: [SavinThePrompt] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        posts = PromptStorage.shared.load()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
        UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let item = posts[indexPath.row]
        cell.textLabel?.text = item.text
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        posts = PromptStorage.shared.load()
        tableView.reloadData()
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

