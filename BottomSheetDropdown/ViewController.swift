//
//  ViewController.swift
//  BottomSheetDropdown
//
//  Created by Jana's MacBook Pro on 3/14/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    lazy private var lists: DropDown = {
        let ls = DropDown()
        return ls
    }()
    
    var fruits: [String] = ["Apple", "Mango", "Banana", "Papaya", "Jackfruit", "Grapes", "Oranges", "Pineapple", "Pomegranate", "Watermelon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        lists.launchList(itemsArray: fruits) { (index) in
                   if index > -1 {
                       self.displayLabel.text = self.fruits[index]
                   }
               }
    }

}

