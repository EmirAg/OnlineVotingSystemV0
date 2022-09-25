//
//  ViewController.swift
//  VotingOnlineSystem0
//
//  Created by AmeerAG on 25/09/2022.
//

import UIKit

class LoginVC: UIViewController {
    
    //---------------------------
    var student : Student!
    
    //---------------------------
    
    
    @IBOutlet weak var fullNameTxt: LoginTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //---------------------------
        // Do any additional setup after loading the view.
//        student = Student()
//        student.fullName = fullNameTxt.text
        //---------------------------
    }
    
    
    @IBAction func submitBtnPressed(_ sender: Any) {
        
        
       //----------------------------
//        performSegue(withIdentifier: "infoVC", sender: self)
        //---------------------------
    }
    
   
    
    @IBAction func unwindFromInfoVC( unwindSegue: UIStoryboardSegue) {
            //back
        }
    
    
    //-------------------------------------------------------------------
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let infoVC = segue.destination as? InfoVC{
//            infoVC.student = student
//        }
//        }
    
    
    //---------------------------
}

