//
//  ResultViewController.swift
//  GachaGacha
//
//  Created by 白川創大 on 2023/05/09.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var number: Int = 0
    
    @IBOutlet var backgroundimageview: UIImageView!
    @IBOutlet var charactorimageview: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        
        if number == 9 {
            charactorimageview.image = UIImage(named: "IoTMesh")
            backgroundimageview.image = UIImage(named: "bgBlue")
        } else if number >= 7{
            charactorimageview.image = UIImage(named: "camera")
            backgroundimageview.image = UIImage(named: "bgGreen")
        } else {
            charactorimageview.image = UIImage(named: "iphone")
            backgroundimageview.image = UIImage(named: "bgRed")
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.charactorimageview.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.charactorimageview.center.y += 10
        }){ _ in
            self.charactorimageview.center.y -= 10
        }
    }
        
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
        number = 0
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
