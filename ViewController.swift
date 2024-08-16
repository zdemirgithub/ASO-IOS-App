// ViewController.swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewTextField: UITextField!
    
    var rating: Int = 0
    var reviews: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rateApp(_ sender: UIStepper) {
        rating = Int(sender.value)
        ratingLabel.text = "Rating: \(rating)"
    }
    
    @IBAction func submitReview(_ sender: UIButton) {
        if let review = reviewTextField.text, !review.isEmpty {
            reviews.append(review)
            reviewTextField.text = ""
            showAlert(message: "Review submitted!")
        } else {
            showAlert(message: "Please enter a review")
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Info", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
