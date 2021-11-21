import Foundation


class UserManager {
    private var users: [User] = []
    
    
    func signIn(username: String, password: String, login: @escaping (Bool) -> ())
    {
        let found = users.contains { u in
            u.username == username && u.password == password
        }
        if found == true {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                login(true)
            })
        }
        else{
            login(false)
        }
    }
    
    
    func register(user: User, reg: @escaping (Bool) -> ())
    {
        let found = users.contains { u in
                    u.username == user.username
                }
        if found == true {
            reg(false)
        }
        else{
            users.append(user)
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                reg(true)
            })
            
        }
    }
    
}
