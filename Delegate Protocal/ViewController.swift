//
//  ViewController.swift
//  Delegate Protocal
//
//  Created by jianyuan chen on 2019-03-11.
//  Copyright © 2019 Jianyuan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }
    
    
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    

}

extension ViewController: SideSelectionDelegate {
    func didTapChoice(name: String, color: UIColor) {
        nameLabel.text = name
        nameLabel.textColor = color
    }
}
