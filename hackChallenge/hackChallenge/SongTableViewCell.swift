//
//  SongTableViewCell.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let artistLabel = UILabel()
    let alblumLabel = UILabel()
    let picture = UIImageView()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        
        contentView.backgroundColor = .black
        
        setupViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        picture.translatesAutoresizingMaskIntoConstraints = false
        //picture.image = UIImage(named: song)
        contentView.addSubview(picture)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        contentView.addSubview(titleLabel)
        
        artistLabel.translatesAutoresizingMaskIntoConstraints = false
        artistLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        artistLabel.font = UIFont.systemFont(ofSize: 14)
        contentView.addSubview(artistLabel)
        
        alblumLabel.translatesAutoresizingMaskIntoConstraints = false
        alblumLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        alblumLabel.font = UIFont.systemFont(ofSize: 14)
        contentView.addSubview(alblumLabel)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            picture.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            picture.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            picture.widthAnchor.constraint(equalToConstant: 72),
            picture.heightAnchor.constraint(equalToConstant: 72)
        ])
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 18),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 89),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -17),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)
        ])
        NSLayoutConstraint.activate([
            artistLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 36),
            artistLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 89),
            artistLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -17),
            artistLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -28)
        ])
        NSLayoutConstraint.activate([
            alblumLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 58),
            alblumLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 89),
            alblumLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -17),
            alblumLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6)
        ])
    }
}

