//
//  SecondViewController.swift
//  Alert
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imgCircus: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //imgCircus.image = UIImage(named: "lion.png")
       // imgCircus.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    }
    

    @IBAction func segementImagechange(_ sender: UISegmentedControl) {
        
        displayImage(index: sender.selectedSegmentIndex)
    }
    
     @IBAction func slideChangeImage(_ sender: UISlider) {
        
        let n = Int(sender.value)
        displayImage(index: n)
     }
    
    
    private func displayImage(index: Int)
    {
        var imageName = String()
        switch index
        {
        case 0:
            imageName = "lion"
        case 1:
            imageName = "icecream"
        case 2:
            imageName = "home"
        case 3:
            imageName = "gorilla"
        case 4:
            imageName = "elephant"
        default:
            print("No Image")
        }
        self.imgCircus.image = UIImage(named: imageName)
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
