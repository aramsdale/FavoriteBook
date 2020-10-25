//
//  BookFormTableTableViewController.swift
//  FavoriteBooks
//
//  Created by Austin Ramsdale on 10/24/20.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    
    var book: Book?
    
    @IBOutlet weak var txtAuthor: UITextField!
    @IBOutlet weak var txtGenre: UITextField!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtLength: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }

    func updateView() {
        guard let book = book else {return}
        
        txtTitle.text = book.title
        txtAuthor.text = book.author
        txtGenre.text = book.genre
        txtLength.text = book.length
    }
   
    
   
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = txtTitle.text,
            let author = txtAuthor.text,
            let genre = txtGenre.text,
            let length = txtLength.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
}
