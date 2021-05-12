//
//  PushViewController.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import UIKit

import UIKit

class PushViewController: UIViewController {
    weak var delegate: InfoDelegate?
    
    var sign = UILabel()
    var horoscope = UILabel()
    var picture = UIImageView()

    let button = UIButton()
    let buttonLabel = UILabel()
    var cell: Sign?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor =  UIColor(red: 174/255, green: 198/255, blue: 207/255, alpha: 1)
        
        setupViews()
        setupConstraints()
    }
    
    func getHoroscopeData() {
        NetworkManager.getHoroscope(id: cell!.id){
            sign in
            self.horoscope.text = sign.horoscope
            print(self.horoscope.text)
        }
    }
    
    func setupViews() {
        getHoroscopeData()
        sign.translatesAutoresizingMaskIntoConstraints = false
        sign.text = cell!.sign
        sign.textColor =  UIColor(red: 174/255, green: 198/255, blue: 207/255, alpha: 1)
        sign.font = UIFont.boldSystemFont(ofSize: 16.0)
        view.addSubview(sign)
        
        picture.translatesAutoresizingMaskIntoConstraints = false
        picture.image = UIImage(named: cell!.picture)
        view.addSubview(picture)
        
        horoscope.translatesAutoresizingMaskIntoConstraints = false
        horoscope.text = cell!.horoscope
        horoscope.numberOfLines = 10
        horoscope.textAlignment = .center
        horoscope.font = UIFont.boldSystemFont(ofSize: 16.0)
        getHoroscopeData()
        view.addSubview(horoscope)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 3
        view.addSubview(button)
        
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonLabel.text = "BACK"
        buttonLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonLabel.textColor =  UIColor(red: 174/255, green: 198/255, blue: 207/255, alpha: 1)
        view.addSubview(buttonLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            sign.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            sign.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            picture.topAnchor.constraint(equalTo: view.topAnchor, constant: 73),
            picture.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            picture.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            picture.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18)
        ])
        NSLayoutConstraint.activate([
            horoscope.topAnchor.constraint(equalTo: view.topAnchor, constant: 290),
            horoscope.heightAnchor.constraint(equalToConstant: 300),
            horoscope.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            horoscope.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            buttonLabel.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            buttonLabel.centerYAnchor.constraint(equalTo: button.centerYAnchor)
        ])

    }
    
    @objc func buttonPressed(){
        self.dismiss(animated: true, completion: nil)
    }
    
}
