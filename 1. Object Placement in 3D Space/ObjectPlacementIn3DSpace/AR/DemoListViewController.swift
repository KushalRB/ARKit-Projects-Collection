//
//  DemoListViewController.swift
//  ObjectPlacementin3DSpace
//
//  Created by Kushal Rajbhandari on 11/29/17.
//  Copyright © 2017 Kushal Rajbhandari. All rights reserved.
//

import UIKit

class DemoListViewController: UIViewController {

    @IBOutlet weak var ARText: UIButton!{
        didSet{
            ARText.layer.borderWidth = 2
            ARText.layer.borderColor = UIColor.init(red: 41/255.0, green: 121/255.0, blue: 182/255.0, alpha: 1.0).cgColor
        }
    }
    
    @IBOutlet weak var ARObject: UIButton!{
        didSet{
            ARObject.layer.borderWidth = 2
            ARObject.layer.borderColor = UIColor.init(red: 41/255.0, green: 121/255.0, blue: 182/255.0, alpha: 1.0).cgColor
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ARTextButtonPressed(_ sender: UIButton) {
        print("ar text clicked")
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let arDemo1VC = storyBoard.instantiateViewController(withIdentifier: "Demo1") as! ARDemo1ViewController
        self.navigationController?.pushViewController(arDemo1VC, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func ARObjectButtonPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let arDemo2VC = storyBoard.instantiateViewController(withIdentifier: "Demo2") as! ARDemo2ViewController
        self.navigationController?.pushViewController(arDemo2VC, animated: true)
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
