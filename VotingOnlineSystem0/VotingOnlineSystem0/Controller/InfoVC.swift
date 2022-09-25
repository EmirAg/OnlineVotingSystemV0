//
//  InfoVCViewController.swift
//  VotingOnlineSystem0
//
//  Created by AmeerAG on 25/09/2022.
//

import UIKit

class CellClass : UITableViewCell{
    
}

class InfoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var greetingLbl: UILabel!
    
    // dropdown
    @IBOutlet weak var selectDepartmentBtn: DropDownMenuBtn!
    
    @IBOutlet weak var selectCalssBtn: DropDownMenuBtn!
    let transparentView = UIView()
    let tableView = UITableView()
    var selectedButton = UIButton()
    var dataSource = [String]()
    
    //---------------------------
    var student : Student!
    var name : String?
    //---------------------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register( CellClass.self, forCellReuseIdentifier: "Cell")
        
//----------------------------------------
//        let theName =  student.fullName!
//        greetingLbl.text = theName
//        print(theName)
        //---------------------------
       
    }
    
    //dropdown functions
    func addTransparentView(frames : CGRect){
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
        
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        
        transparentView.backgroundColor = .black.withAlphaComponent(0.9)
        tableView.reloadData()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapGesture)
        
        //animate
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 200)
        }, completion: nil)
    }
    
    @objc func removeTransparentView(){
        let frames = selectedButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
            self.transparentView.alpha = 0
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @IBAction func selectDepartmentBtnPressed(_ sender: Any) {
        dataSource = ["Software Engineering",
                      "Forensic Science)",
                      "Computer Engineering",
                      "Bioengineering",
                      "Electrical-Electronics Engineering",
                      "Industrial Engineering",
                      "Chemical Engineering",
                      "Molecular Biology and Genetics",
                      "Molecular Biology and Genetics"]
        
        selectedButton = selectDepartmentBtn
        addTransparentView(frames: selectDepartmentBtn.frame)
    }
    
    @IBAction func selectClassBtnPressed(_ sender: Any) {
        dataSource = ["Class 1","Class 2","Class 3","Class 4","Class 5"]
        selectedButton = selectCalssBtn
        addTransparentView(frames: selectCalssBtn.frame)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // pass the title of the selected row to the Button
        selectedButton.setTitle(dataSource[indexPath.row], for: .normal)
        removeTransparentView()
    }
    

}
