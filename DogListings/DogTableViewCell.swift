//
//  DogTableViewCell.swift
//  DogListings
//
//  Created by Jogendra on 18/04/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {
    
    struct Constants {
        static let imageSize = CGSize(width: 100, height: 100)
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    let dogImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        return imageView
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
    }
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createViews()
    }
    
    private func createViews() {
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(dogImageView)
        
        // Constraints
        dogImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        dogImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        dogImageView.heightAnchor.constraint(equalToConstant: Constants.imageSize.height).isActive = true
        dogImageView.widthAnchor.constraint(equalToConstant: Constants.imageSize.width).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: dogImageView.trailingAnchor, constant: 32).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: dogImageView.centerYAnchor).isActive = true
    }
    
    public func setData(_ dogDataObject: DogDataObject) {
        titleLabel.text = dogDataObject.name
        dogImageView.image = dogDataObject.image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        titleLabel.text = nil
        dogImageView.image = nil
    }
    
}
