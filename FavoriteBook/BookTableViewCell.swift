//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Austin Ramsdale on 10/25/20.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblLength: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with book: Book) {
        lblTitle.text = book.title
        lblGenre.text = book.genre
        lblAuthor.text = book.author
        lblLength.text = book.length
    }
}
