import UIKit

class ShopItemViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var itemName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Item Detail"
        nameLabel.text = itemName ?? "No name"
    }
}

