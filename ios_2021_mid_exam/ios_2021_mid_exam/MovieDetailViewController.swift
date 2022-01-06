
import UIKit


class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var MovieTitle: UILabel!
    @IBOutlet weak var MovieImage: UIImageView!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var ReleaseDate: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MovieTitle.text = movie.title
        MovieImage.image = UIImage.init(imageLiteralResourceName: movie.photo)
        Description.text = movie.info.description
        ReleaseDate.text = "Release Date: " + movie.info.releaseDate
        
    }


}
