//
//  ViewController.swift
//  Divine9
//
//  Created by Mobolaji Moronfolu on 6/8/20.
//  Copyright © 2020 Mobolaji Moronfolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameView)
        view.addSubview(descriptionView)
        setupLayout()
        setupDefaults()
    }
    
    var BGLO: Content? {
           didSet {
               guard let unwrappedPage = BGLO else { return }
               greekSigilView.image = UIImage(named: unwrappedPage.imageName)
               let attributedText1 = NSMutableAttributedString(string: BGLO!.Organization, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)])
                let attributedText2 = NSMutableAttributedString(string: BGLO!.Detail, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14)])
               nameView.attributedText = attributedText1
               descriptionView.attributedText = attributedText2
               nameView.backgroundColor = BGLO!.bodyColor
               descriptionView.backgroundColor = BGLO!.bodyColor
               descriptionView.textAlignment = .center
               nameView.textAlignment = .center
              
           }
       }
    
    struct Content{
        let imageName: String
        let Organization: String
        let Detail: String
        let bodyColor: UIColor
    }
    
    let greekSigilView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Sigil")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.layer.cornerRadius = 15
        textView.clipsToBounds = true
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let nameView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        let attributedText1 = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)])
        textView.textAlignment = .center
        textView.isEditable = false
        textView.layer.cornerRadius = 15
        textView.clipsToBounds = true
        textView.isScrollEnabled = false
        return textView
        
        
    }()
    
    let lyleLoveSwitch: UISwitch = {
        let Switch = UISwitch()
        Switch.translatesAutoresizingMaskIntoConstraints = false
        Switch.layer.cornerRadius = 16
        Switch.addTarget(self, action: #selector(lyleSwitch(sender:)), for: .valueChanged)
        return Switch
        
    }()

    let colemanLoveSwitch: UISwitch = {
        let Switch = UISwitch()
        Switch.translatesAutoresizingMaskIntoConstraints = false
        Switch.layer.cornerRadius = 16
        Switch.addTarget(self, action: #selector(colemanswitch), for: .valueChanged)
        return Switch
    }()

    let doveLove: UISwitch = {
        let Switch = UISwitch()


        Switch.translatesAutoresizingMaskIntoConstraints = false
        Switch.layer.cornerRadius = 16
        Switch.addTarget(self, action: #selector(doveSwitch(sender:)), for: .valueChanged)
        return Switch
      }()

    let indyLoveSwitch: UISwitch = {

        let Switch = UISwitch()
        Switch.translatesAutoresizingMaskIntoConstraints = false
        Switch.layer.cornerRadius = 16
        Switch.addTarget(self, action: #selector(indylove(sender:)), for: .valueChanged)
        return Switch
         }()

    let iota: UISwitch = {

        let Switch = UISwitch()
        Switch.translatesAutoresizingMaskIntoConstraints = false
        Switch.layer.cornerRadius = 16
        Switch.addTarget(self, action: #selector(iotaswitch(sender:)), for: .valueChanged)
        return Switch
    }()
    
    @objc func lyleSwitch(sender:UISwitch){
        if (sender.isOn == true){
            view.backgroundColor = .black
            BGLO = Content(imageName: "ALPHA", Organization: "ALPHA PHI ALPHA", Detail: "Alpha Phi Alpha Fraternity, Incorporated (ΑΦΑ) is the first historically African American intercollegiate Greek-lettered fraternity. It was initially a literary and social studies club organized in the 1905–1906 school year at Cornell University but later evolved into a fraternity with a founding date of December 4, 1906, at Cornell. It employs an icon from Ancient Egypt, the Great Sphinx of Giza, as its symbol. Its aims are 'Manly Deeds, Scholarship, and Love For All Mankind,' and its motto is 'First of All, Servants of All, We Shall Transcend All.' Its archives are preserved at the Moorland-Spingarn Research Center.", bodyColor: .oldGold)
            defaults.set(0, forKey: "org")
           }
           else{
            view.backgroundColor = .salmonPink
            BGLO = Content(imageName: "AKA", Organization: "Alpha Kappa Alpha", Detail: "Alpha Kappa Alpha Sorority, Incorporated (ΑΚΑ) is the first historically African American Greek-lettered sorority for college-educated women The organization was founded on five basic tenets:To cultivate and encourage high scholastic and ethical standards, to promote unity and friendship among college women, to study and help alleviate problems concerning girls and women in order to improve their social stature, to maintain a progressive interest in college life, and to be of 'Service to All Mankind'.The sorority was founded on January 15, 1908, at the historically black Howard University in Washington, D.C., by a group of sixteen students led by Ethel Hedgeman Lyle.", bodyColor: .appleGreen)
            defaults.set(1, forKey: "org")
           }

    }

    @objc func colemanswitch(sender:UISwitch){
        if (sender.isOn == true){
            view.backgroundColor = .purple
            BGLO = Content(imageName: "QUE", Organization: "Omega Psi Phi", Detail: "Omega Psi Phi Fraternity, Incorporated (ΩΨΦ) is an intercollegiate, historically African American Greek-letter fraternity. The organization has over 750 undergraduate and graduate chapters. The fraternity was founded on November 17, 1911 by three Howard University juniors, Edgar Amos Love, Oscar J. Cooper and Frank Coleman, and their faculty adviser, Dr. Ernest Everett Just. Omega Psi Phi is the first predominantly African-American fraternity to be founded at a historically black university.", bodyColor: .oldGold)
            defaults.set(2, forKey: "org")
           }
           else{
            view.backgroundColor = .crimson
            BGLO = Content(imageName: "DELTA", Organization: "Delta Sigma Theta", Detail: "Delta Sigma Theta Sorority, Incorporated (ΔΣΘ) is a historically African American Greek-lettered sorority. The organization was founded by college-educated women dedicated to public service with an emphasis on programs that target the African American community. Delta Sigma Theta was founded on January 13, 1913, by twenty-two women at Howard University in Washington, D.C. Membership is open to any woman who meets the requirements, regardless of religion, race, or nationality. Women may join through undergraduate chapters at a college or university, or through an alumnae chapter after earning a college degree.", bodyColor: .creme)
            defaults.set(3, forKey: "org")

           }

    }
    @objc func doveSwitch(sender: UISwitch){
        if (sender.isOn == true){
            view.backgroundColor = .royalBlue
            BGLO = Content(imageName: "PBS", Organization: "Phi Beta Sigma", Detail: "Phi Beta Sigma Fraternity, Incorporated (ΦΒΣ) is an intercollegiate, historically African-American Greek letter fraternity. It was founded at Howard University in Washington, D.C. on January 9, 1914, by three young African-American male students with nine other Howard students as charter members. The fraternity's founders, Abram Langston Taylor, Leonard Frances Morse, and Charles Ignatius Brown, wanted to organize a Greek letter fraternity that would exemplify the ideals of Brotherhood, Scholarship and Service while taking an inclusive perspective to serve the community as opposed to having an exclusive purpose. The fraternity exceeded the prevailing models of Black Greek-Letter fraternal organizations by being the first to establish alumni chapters, youth mentoring clubs, a federal credit union, chapters in Africa and a collegiate chapter outside of the United States. It is the only fraternity to hold a constitutional bond with a historically African-American sorority, Zeta Phi Beta (ΖΦΒ), which was founded on January 16, 1920 at Howard University in Washington, D.C., through the efforts of members of Phi Beta Sigma.", bodyColor: .white)
            defaults.set(4, forKey: "org")

        }
        else{
            view.backgroundColor = .royalBlue
            BGLO = Content(imageName: "ZPB", Organization: "Zeta Phi Beta", Detail: "Zeta Phi Beta Sorority, Incorporated (ΖΦΒ) is an international, historically African American Greek-lettered sorority. In 1920, five women from Howard University envisioned a sorority that would raise the consciousness of their people, encourage the highest standards of scholastic achievement, and foster a greater sense of unity among its members. These women believed that sorority elitism and socializing overshadowed the real mission for progressive organizations. Since its founding Zeta Phi Beta has historically focused on addressing social causes.", bodyColor: .white)
            defaults.set(5, forKey: "org")

        }
    }

    @objc func indylove(sender: UISwitch){
        if (sender.isOn == true){
        view.backgroundColor = .creme
            BGLO = Content(imageName: "Kappa", Organization: "Kappa Alpha Psi", Detail: "Kappa Alpha Psi Fraternity, Incorporated (ΚΑΨ) is a historically African-American intercollegiate Greek-letter fraternity. Since the fraternity's founding on January 5, 1911 at Indiana University Bloomington, the fraternity has never limited membership based on color, creed or national origin. The fraternity has over 160,000 members with 721 undergraduate and alumni chapters in every state of the United States, and international chapters in the United Kingdom, Germany, South Korea, Japan, United States Virgin Islands, Nigeria, South Africa, and The Bahamas.",bodyColor: .crimson)
            defaults.set(6, forKey: "org")

       }
       else{
           view.backgroundColor = .royalBlue
            BGLO = Content(imageName: "SGRHO", Organization: "Sigma Gamma Rho", Detail: "Sigma Gamma Rho Sorority, Incorporated (ΣΓΡ) is a historically African American Greek lettered sorority. ΣΓΡ was founded on November 12, 1922, at Butler University in Indianapolis, Indiana by seven young educators. It was incorporated within the state of Indiana in December 1922 and became a national collegiate sorority on December 30, 1929, when a charter was granted to the Alpha chapter.", bodyColor: .oldGold)
            defaults.set(7, forKey: "org")

       }
    }

    @objc func iotaswitch(sender: UISwitch){
        if (sender.isOn == true){
               view.backgroundColor = .charcoalBrown
            BGLO = Content(imageName: "IOTA", Organization: "Iota Phi Theta", Detail: "Iota Phi Theta Fraternity, Incorporated (ΙΦΘ) is a historically African-American, intercollegiate Greek letter fraternity. It was founded on September 19, 1963, at Morgan State University (then Morgan State College) in Baltimore, Maryland, and now has initiated over 30,000 members. There are currently over 301 undergraduate and alumni chapters (including colonies), as well as colonies located in 40 U.S. states, the District of Columbia, The Bahamas, Colombia, South Korea, and Japan.", bodyColor: .gildedGold)
            defaults.set(8, forKey: "org")
           }
           else{
               defaults.set(9, forKey: "org")
           }

    }
    
    func setupDefaults(){
        
        if defaults.bool(forKey: "hasLaunchedBefore") {
               let defaultValue = defaults.integer(forKey: "org")
               switch defaultValue {
               case 0:
                   lyleLoveSwitch.isOn = true
                   lyleSwitch(sender: lyleLoveSwitch)
               case 1:
                   lyleLoveSwitch.isOn = false
                   lyleSwitch(sender: lyleLoveSwitch)
               case 2:
                   colemanLoveSwitch.isOn = true
                   colemanswitch(sender: colemanLoveSwitch)
               case 3:
                   colemanLoveSwitch.isOn = false
                   colemanswitch(sender: colemanLoveSwitch)
               case 4:
                   doveLove.isOn = true
                   doveSwitch(sender: doveLove)
               case 5:
                   doveLove.isOn = false
                   doveSwitch(sender: doveLove)
               case 6:
                   indyLoveSwitch.isOn = true
                   indylove(sender: indyLoveSwitch)
               case 7:
                   indyLoveSwitch.isOn = false
                   indylove(sender: indyLoveSwitch)
               case 8:
                   iota.isOn = true
                   iotaswitch(sender: iota)
               default:
                   iota.isOn = false
                   view.backgroundColor = .white
                   descriptionView.backgroundColor = .white
                   nameView.backgroundColor = .white
               }
           } else {
               print("This is the first launch ever!")
               UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
           }
        
    }
    
    private func setupLayout(){
        let topImageViewController = UIView()
        view.addSubview(topImageViewController)
        topImageViewController.translatesAutoresizingMaskIntoConstraints = false
        topImageViewController.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.35).isActive = true
        topImageViewController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor) .isActive = true
        topImageViewController.leadingAnchor.constraint(equalTo: view.leadingAnchor) .isActive = true
        topImageViewController.trailingAnchor.constraint(equalTo: view.trailingAnchor) .isActive = true
        
        topImageViewController.addSubview(greekSigilView)
        greekSigilView.centerXAnchor.constraint(equalTo: topImageViewController.centerXAnchor).isActive = true
        greekSigilView.centerYAnchor.constraint(equalTo: topImageViewController.centerYAnchor, constant: -20).isActive = true
        greekSigilView.heightAnchor.constraint(equalTo: topImageViewController.heightAnchor, multiplier: 0.5).isActive =  true
        greekSigilView.widthAnchor.constraint(equalTo: topImageViewController.widthAnchor, multiplier: 0.5).isActive =  true
        
        nameView.topAnchor.constraint(equalTo: topImageViewController.bottomAnchor, constant: 1).isActive = true
         nameView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
         nameView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        nameView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true

        descriptionView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 1).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -225).isActive = true
        
        let bottomControlStackView = UIStackView(arrangedSubviews: [lyleLoveSwitch,colemanLoveSwitch,indyLoveSwitch,doveLove,iota])
        bottomControlStackView.translatesAutoresizingMaskIntoConstraints = false
       
        bottomControlStackView.axis = .vertical
        bottomControlStackView.distribution = .fillEqually
        bottomControlStackView.alignment = .center
        view.addSubview(bottomControlStackView)

        NSLayoutConstraint.activate(
            [bottomControlStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
             bottomControlStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
             bottomControlStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
             bottomControlStackView.topAnchor.constraint(equalTo: descriptionView.bottomAnchor,constant: 20)
            ])
        
    }
}

extension UIColor{
    static var oldGold =  UIColor(red: 207/255, green: 181/255, blue: 59/255, alpha: 1)
    static var salmonPink = UIColor(red: 255/255, green: 145/255, blue: 164/255, alpha: 1)
    static var royalBlue = UIColor(red: 65/255, green: 105/255, blue: 225/255, alpha: 1)
    static var crimson = UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1)
    static var charcoalBrown = UIColor(red: 81/255, green: 69/255, blue: 69/255, alpha: 1)
    static var gildedGold = UIColor(red: 212/255, green: 175/255, blue: 55/255, alpha: 1)
    static var appleGreen = UIColor(red: 213/255, green: 231/255, blue: 81/255, alpha: 1)
    static var creme = UIColor(red: 255/255, green: 253/255, blue: 208/255, alpha: 1)
}


