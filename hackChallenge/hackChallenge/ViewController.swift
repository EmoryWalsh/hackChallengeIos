//
//  ViewController.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import UIKit

protocol InfoDelegate: class {
    //func changeSong(song: Song, newTitle: String, newArtist: String, newAlblum: String)
}

class ViewController: UIViewController {
    
    let signTableView = UITableView()
    let signReuseIdentifier = "signReuseIdentifier"
    
    var signData: [Sign] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Choose Your Sign"
        view.backgroundColor = .black
        
        createDummyData()
        
        setUpViews()
        setUpConstraints()
    }
    
    func createDummyData(){

        let aries = Sign(sign: "Aries", horoscope: "", picture: "aries", id: 3)
        let taurus = Sign(sign: "Taurus", horoscope: "It may be the case that some of your recent decisions have been called into question but there is no reason to change anything just to please other people. You still have faith in your own abilities and, ultimately, that’s the only thing that matters.", picture: "taurus", id: 4)
        let gemini = Sign(sign: "Gemini", horoscope: "There are so many positive things going on in your life at the moment and by the end of the week you’ll be convinced that the cosmic powers that be are watching over and protecting you. Don’t take risks where you don’t have to though.", picture: "gemini", id: 5)
        let cancer = Sign(sign: "Cancer", horoscope: "If you find yourself jumping at your own shadow you must get out into the world and mix with other people. The less time you spend on your own over the next 24 hours the less likely it is your wayward thoughts will confuse you.", picture: "cancer", id: 6)
        let leo = Sign(sign: "Leo", horoscope: "Self-doubt may be foreign to your emotional make-up but today nothing will seem to add up and you will wonder if you have made a wrong move. Maybe you have but you don’t need to change. Tomorrow your ego will be in charge again.", picture: "leo", id: 7)
        let virgo = Sign(sign: "Virgo", horoscope: "You won’t lack for opportunities to impress other people today but for best results you should focus on the one person who can help you make the biggest changes. Let them know you are ready to not just change your life but to finally transform it.", picture: "virgo", id: 8)
        let libra = Sign(sign: "Libra", horoscope: "You need to be more adventurous, physically, mentally and maybe emotionally too. Others will say you have duties close to home that need to be dealt with but just this once it could pay you to be a touch irresponsible. When did you last do something purely for fun?", picture: "libra", id: 9)
        let scorpio = Sign(sign: "Scorpio", horoscope: "Don’t cut back on your spending too much – you can go to extremes at times – but certainly stop paying out for luxuries you know you don’t need. There are plenty of ways you can have fun that don’t cost an arm or a leg.", picture: "scorpio", id: 10)
        let sagittarius = Sign(sign: "Sagittarius", horoscope: "Friends and family members seem exceptionally helpful at the moment. So what are they up to? Most likely they are not up to anything, but your own mind is finding it hard to accept that they can do things for you without some kind of motive.", picture: "sagittarius", id: 11)
        let capricorn = Sign(sign: "Capricorn", horoscope: "You must deliver on a promise you made. You have a reputation as someone who can be trusted, both in big things and small, and if, for whatever reason. you fail to meet your obligations it may be a long time before that reputation is restored.", picture: "capricorn", id: 12)
        let aquarius = Sign(sign: "Aquarius", horoscope: "Creative matters will go well for you today but it’s unlikely you will get much help from other people. That’s okay. The less willing they are to share the workload the less you will have to share the glory, which won’t be long in coming.", picture: "aquarius", id: 1)
        let pisces = Sign(sign: "Pisces", horoscope: "You may need to let off steam over the next 24 hours and if the desire to make a scene gets too much to be contained by all means scream and shout. Don’t scream and shout at people though. Take out your frustrations on inanimate objects instead.", picture: "pisces", id: 2)
        //Thanks NYPost for the dummy data horoscopes
        
        signData = [aries, taurus, gemini, cancer, leo, virgo, libra, scorpio, sagittarius, capricorn, aquarius, pisces]
    }
    
    func setUpViews(){
        
        signTableView.translatesAutoresizingMaskIntoConstraints = false
        signTableView.delegate = self
        signTableView.dataSource = self
        signTableView.register(SignTableViewCell.self, forCellReuseIdentifier: signReuseIdentifier)
        view.addSubview(signTableView)
    }
    
    func setUpConstraints(){
       NSLayoutConstraint.activate([
            signTableView.topAnchor.constraint(equalTo: view.topAnchor),
            signTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            signTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            signTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: signReuseIdentifier, for: indexPath) as! SignTableViewCell
        let signObject = signData[indexPath.row]
        signTableView.rowHeight = 150
        cell.signLabel.text = signObject.sign
        cell.horoscopeLabel.text = signObject.horoscope
        cell.picture.image = UIImage(named: signObject.picture)
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let pushViewController = PushViewController()
        pushViewController.delegate = self
        pushViewController.cell = signData[indexPath.row]
        self.present(pushViewController, animated: true, completion: nil)
    }
    
}


extension ViewController: InfoDelegate {

}
