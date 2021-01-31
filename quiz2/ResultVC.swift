//
//  ResultVC.swift
//  quiz2
//
//  Created by Admin on 31.01.2021.
//

import UIKit

class ResultVC: UIViewController {
    
    var score: Int?
    var totalScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.view.backgroundColor=UIColor.white
        setupViews()
    }
    
    func showRating() {
        var rating = ""
        var color = UIColor.white
        guard let sc = score, let tc = totalScore else { return }
        let s = sc * 100 / tc
        if s < 10 {
            rating = "Poor"
            color = UIColor.darkGray
        }  else if s < 40 {
            rating = "Average"
            color = UIColor.blue
        } else if s < 60 {
            rating = "Good"
            color = UIColor.yellow
        } else if s < 80 {
            rating = "Very Good"
            color = UIColor.red
        } else if s <= 100 {
            rating = "Excellent"
            color = UIColor.orange
        }
        lblRating.text = "\(rating)"
        lblRating.textColor=color
    }
    
  @objc func btnRestartAction() {
    self.navigationController?.popToRootViewController(animated: true)
    
  }
    
    @objc func btn2Home() {
        let vc2 = ViewController()
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(lblScore)
        lblScore.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 0).isActive=true
        lblScore.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblScore.widthAnchor.constraint(equalToConstant: 150).isActive=true
        lblScore.heightAnchor.constraint(equalToConstant: 60).isActive=true
        lblScore.text = "\(score!) / \(totalScore!)"
        
        self.view.addSubview(lblRating)
        lblRating.topAnchor.constraint(equalTo: lblScore.bottomAnchor, constant: 40).isActive=true
        lblRating.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblRating.widthAnchor.constraint(equalToConstant: 150).isActive=true
        lblRating.heightAnchor.constraint(equalToConstant: 60).isActive=true
        showRating()
        
        self.view.addSubview(btnRestart)
        btnRestart.topAnchor.constraint(equalTo: lblRating.bottomAnchor, constant: 40).isActive=true
        btnRestart.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnRestart.widthAnchor.constraint(equalToConstant: 350).isActive=true
        btnRestart.heightAnchor.constraint(equalToConstant: 100).isActive=true
        btnRestart.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive=true
        btnRestart.addTarget(self, action: #selector(btnRestartAction), for: .touchUpInside)
        
        self.view.addSubview(btnHome)
        btnHome.topAnchor.constraint(equalTo: lblRating.bottomAnchor, constant: 40).isActive=true
        btnHome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnHome.widthAnchor.constraint(equalToConstant: 350).isActive=true
        btnHome.heightAnchor.constraint(equalToConstant: 100).isActive=true
        btnHome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 600).isActive=true
        btnHome.addTarget(self, action: #selector(btn2Home), for: .touchUpInside)
        
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Your Score"
        lbl.textColor=UIColor.systemBlue
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 46)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblScore: UILabel = {
        let lbl=UILabel()
        lbl.text="0 / 0"
        lbl.textColor=UIColor.lightGray
        lbl.textAlignment = .center
        lbl.font = UIFont.boldSystemFont(ofSize: 24)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblRating: UILabel = {
        let lbl=UILabel()
        lbl.text="Good"
        lbl.textColor=UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.boldSystemFont(ofSize: 24)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnRestart: UIButton = {
        let btn = UIButton()
        btn.setTitle("Restart", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.systemBlue
        btn.layer.cornerRadius=50
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }()
    
    let btnHome: UIButton = {
        let btn2 = UIButton()
        btn2.setTitle("Home page", for: .normal)
        btn2.setTitleColor(UIColor.white, for: .normal)
        btn2.backgroundColor=UIColor.systemBlue
        btn2.layer.cornerRadius=50
        btn2.clipsToBounds=true
        btn2.translatesAutoresizingMaskIntoConstraints=false
        return btn2
    }()
}
