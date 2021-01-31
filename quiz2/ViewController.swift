import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
   
  override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Home"
    self.view.backgroundColor=UIColor.white
    setupViews()
    }
    
    @objc func btnStart() {
        let vc = QuizVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func btnHistory() {
        let vc2 = HistoryVC()
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    func setupViews() {
        self.view.addSubview(appTitle)
        appTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        appTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        appTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        appTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(startButton)
        startButton.heightAnchor.constraint(equalToConstant: 100).isActive=true
        startButton.widthAnchor.constraint(equalToConstant: 350).isActive=true
        startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        startButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true
        
        self.view.addSubview(historyButton)
        historyButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 550).isActive=true
        historyButton.heightAnchor.constraint(equalToConstant: 100).isActive=true
        historyButton.widthAnchor.constraint(equalToConstant: 350).isActive=true
        historyButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        historyButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true
        
        self.view.addSubview(developerName)
        developerName.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 820).isActive=true
        developerName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
               }
    
    let appTitle: UILabel = {
        let appTitle=UILabel()
        appTitle.text="Quiz"
        appTitle.textColor=UIColor.systemBlue
        appTitle.textAlignment = .center
        appTitle.font = UIFont.systemFont(ofSize: 46)
        appTitle.translatesAutoresizingMaskIntoConstraints=false
        return appTitle
    }()
    
    let startButton: UIButton = {
        let startButton = UIButton()
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor=UIColor.systemBlue
        startButton.layer.cornerRadius=50
        startButton.layer.masksToBounds=true
        startButton.translatesAutoresizingMaskIntoConstraints=false
        startButton.addTarget(self, action: #selector(btnStart), for: .touchUpInside)
        return startButton
    }()
    
    let historyButton: UIButton = {
        let historyButton = UIButton()
        historyButton.setTitle("History", for: .normal)
        historyButton.backgroundColor=UIColor.systemBlue
        historyButton.layer.cornerRadius=50
        historyButton.layer.masksToBounds=true
        historyButton.translatesAutoresizingMaskIntoConstraints=false
        historyButton.addTarget(self, action: #selector(btnHistory), for: .touchUpInside)
        return historyButton
    }()
    let developerName: UILabel = {
        let developerName=UILabel()
        developerName.text="Developed by Tolganay"
        developerName.textColor=UIColor.gray
        developerName.textAlignment = .center
        developerName.font = UIFont.systemFont(ofSize: 20)
        developerName.translatesAutoresizingMaskIntoConstraints=false
        return developerName
    }()
    }

