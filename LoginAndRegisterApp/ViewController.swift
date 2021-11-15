//
//  ViewController.swift
//  LoginAndRegisterApp
//
//  Created by Konstantin Zaimov on 11/4/21.
//

import UIKit


var userManager = UserManager()

class ViewController: UIViewController {

    @IBOutlet weak var LoginView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var UserIcon: UIImageView!
    @IBOutlet weak var ErrorLabel: UILabel!
    @IBOutlet weak var LoadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var UsernameIcon: UIImageView!
    @IBOutlet weak var PasswordIcon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize: CGRect = UIScreen.main.bounds
        LoginView.layer.cornerRadius = 30
        LoginView.widthAnchor.constraint(equalToConstant: screenSize.width - 50).isActive = true
        LoginView.heightAnchor.constraint(equalToConstant: screenSize.height - 250).isActive = true
        RegisterButton.layer.cornerRadius = 30
        LoginButton.layer.cornerRadius = 30
        UsernameIcon.layer.cornerRadius = UsernameIcon.frame.height/2
        PasswordIcon.layer.cornerRadius = PasswordIcon.frame.height/2
        UserIcon.layer.cornerRadius = UserIcon.frame.height/2
    }

    @IBAction func OnLoginPressed(_ sender: Any) {
        
        LoadingIndicator.startAnimating()
        userManager.signIn(username: UsernameTextField.text ?? "", password: PasswordTextField.text ?? "") {  [self] result in
            if result == true {
                ErrorLabel.text = ""
                performSegue(withIdentifier: "login", sender: self)
            }
            else{
                ErrorLabel.text = "Грешно потребителско име или парола."
            }
            LoadingIndicator.stopAnimating()
        }
        
        
    }
    
    @IBAction func OnRegisterPressed(_ sender: Any) {
        performSegue(withIdentifier: "register", sender: sender)
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
}

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

class RegisterController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var termsOfUseField: UISwitch!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func OnSignUp(_ sender: Any) {
        let age: Int! = Int(ageField.text ?? "0")
        let user = User(username: usernameField.text ?? "", password: passwordField.text ?? "", age: age, email: emailField.text ?? "")
        
        loadingIndicator.startAnimating()
        
        userManager.register(user: user) { [self] result in
            if result == true {
                errorLabel.text = ""
                performSegue(withIdentifier: "returnToLogin", sender: sender)
            } else{
                errorLabel.text = "Има вече регистриран потребител с този username."
            }
            loadingIndicator.stopAnimating()
        }
        
    }
    

}
