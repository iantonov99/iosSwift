import UIKit

struct Movie {
    let title: String
    let photo: String
    var info:MovieInfo
}

struct MovieInfo {
    let description: String
    let releaseDate: String
}

struct Model {
    let movies = [
        Movie(title: "Dune", photo: "dune.jpg" , info:MovieInfo(description: "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence, only those who can conquer their own fear will survive.", releaseDate:"2022-01-20" )),
        Movie(title: "Hating Game", photo: "hating-game.jpg" , info:MovieInfo(description: "Resolving to achieve professional success without compromising her ethics, Lucy embarks on a ruthless game of one-upmanship against cold and efficient nemesis Joshua, a rivalry that is complicated by her growing attraction to him.", releaseDate:"2022-01-20" )),
        Movie(title: "Morbius", photo: "morbius.jpg" , info:MovieInfo(description: "Biochemist Michael Morbius tries to cure himself of a rare blood disease, but when his experiment goes wrong, he inadvertently infects himself with a form of vampirism instead.", releaseDate:"2022-01-20" )),
        Movie(title: "Mortal Kombat", photo: "mortal-kombat.jpg" , info:MovieInfo(description: "Cole Young, an MMA champion, is a chosen warrior unaware of his destiny. A grave danger is looming upon the Earthrealm. He must learn to unlock his power and fight the warriors of Outworld.", releaseDate:"2022-01-20" )),
        Movie(title: "Wrath of Man", photo: "wrath-man.jpg" , info:MovieInfo(description: "H is a mysterious man who starts working for a cash moving truck company. He becomes known for using amazing precision and dexterity to neutralise robbers. However, H is actually out for revenge.", releaseDate:"2022-01-20" )),
       
    ]
}


