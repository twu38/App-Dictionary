//
//  ViewController.swift
//  Dictionary
//
//  Created by Apple on 4/25/18.
//  Copyright © 2018 Tichin Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    var eDict = ["ice","water","steam","snow","fog"]
    var kDict = ["얼음","물","증기","눈","안개"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            label.text = kDict[0]
            image.image = #imageLiteral(resourceName: "ice.jpeg")
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     
        return eDict[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("user stopped on row\(row)")
        
        
        if row == 0 { // ice
            image.image = #imageLiteral(resourceName: "ice.jpeg")
            label.text = kDict[0]
        }
        else if row == 1 {//water
            image.image = #imageLiteral(resourceName: "water.jpg")
            label.text = kDict[1]
        }
        else if row == 2 {//steam
            image.image = #imageLiteral(resourceName: "steam")
            label.text = kDict[2]
        }
        else if row == 3 {//snow
            image.image = #imageLiteral(resourceName: "snow.jpg")
            label.text = kDict[3]
        }
        else { //row ==4 ,fog
            image.image = #imageLiteral(resourceName: "fog.jpg")
            label.text = kDict[4]
        }
        
        
    }
   
}


