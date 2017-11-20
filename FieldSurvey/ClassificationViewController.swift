//
//  ClassificationViewController.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//

import UIKit

class ClassificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
  
    
  
    @IBOutlet weak var eventsTableVIew: UITableView!
    
    let classifications = TitlesJSONLoader.load(fileName: "field_observations")
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classifications.count
    }
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Field Survey"
        // Do any additional setup after loading the view.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    /**
    func tableVIew(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return classifications.count
    }
    **/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "classificationCell", for: indexPath)
        
        if let cell = cell as? CheckTableViewCell{
            //he had sportEvent = sportsEvents
            let classification = classifications[indexPath.row]
            //might have problem here
            cell.iconImageView.image = classification.classification.image
            cell.nameLabel.text = classification.title
            
            cell.dateLabel.text = dateFormatter.string(from: classification.date)
            //cell.dateLabel.text = dateFormatter.string(from: title.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ClassificationDetailViewController,
            let row = eventsTableVIew.indexPathForSelectedRow?.row {
                destination.classific = classifications[row]
            }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
