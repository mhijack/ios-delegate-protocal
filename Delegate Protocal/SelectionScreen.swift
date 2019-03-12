//
//  SelectionScreen.swift
//  Delegate Protocal
//
//  Created by jianyuan chen on 2019-03-11.
//  Copyright © 2019 Jianyuan Chen. All rights reserved.
//

import UIKit

// basically a list of function names
protocol SideSelectionDelegate {
    func didTapChoice(name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Pressed(_ sender: Any) {
        selectionDelegate.didTapChoice(name: "Jack", color: UIColor.red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        selectionDelegate.didTapChoice(name: "Melody", color: UIColor.green)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
