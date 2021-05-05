//
//  SignTableViewCell.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import UIKit

class SignTableViewCell: UITableViewCell {
    
    let signLabel = UILabel()
    let horoscopeLabel = UILabel()
    let picture = UIImageView()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        
        contentView.backgroundColor = UIColor(red: 174/255, green: 198/255, blue: 207/255, alpha: 1)

        
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
        
        signLabel.translatesAutoresizingMaskIntoConstraints = false
       // signLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        signLabel.font = UIFont.boldSystemFont(ofSize: 22.0)
        contentView.addSubview(signLabel)
        
        
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            signLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 18),
            signLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            signLabel.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: 50)
        ])
        NSLayoutConstraint.activate([
            picture.topAnchor.constraint(equalTo: signLabel.bottomAnchor, constant: 12),
            picture.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            picture.widthAnchor.constraint(equalToConstant: 72),
            picture.heightAnchor.constraint(equalToConstant: 72)
        ])
    }
}

