import Foundation


class User {
    var username : String
    var password : String
    var age : Int
    var email : String
    
    init(username:String, password: String, age: Int, email: String) {
        self.username = username
        self.password = password
        self.age = age
        self.email = email
    }
}
