//
//  FunFactsViewController.swift
//  Nature Trails
//
//  Created by Sophia Wang on 4/28/21.
//

import UIKit
var input: String = ""
class FunFactsViewController: UIViewController {
    
    var receivedString = "Default"
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    override func viewDidLoad() {
        print(receivedString)
        super.viewDidLoad()
        setLabel()
    }
    
    func setLabel(){
        switch receivedString {
        case "Forest Animals":
            infoLabel.text = "Foxes would be great triathletes! They can run up to 31 mph, jump over 6 ft, and can swim. Their tails are also over half their body length (70% to be exact) \nBear cubs will stay with their mother for 2-4 years. When they are young they can climb trees but when they grow older they lose this ability. Grizzly bears also hiberate for 5-8 months, living on fat reserves. To store fat they'll eat up to 25 fish a day."
            imageOne.image = #imageLiteral(resourceName: "scott-walsh-CQl3Y5bV6FA-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "janko-ferlic-SDivo1PTBDs-unsplash")
        case "Forest Plants":
            infoLabel.text = "Lichen (above picture) are good indicators of air quality because they absorb everything around them. They can survive on all sorts of things, including in extreme environments and on sand dunes. \nForests are home to over 80% of land animals and plants. Forests also cover 31% of the Earth's total land area. One tree can produce nearly 260 pounds of oxygen each year."
            imageOne.image = #imageLiteral(resourceName: "janko-ferlic-cxuqTorAQfs-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "rural-explorer-oWS_3i0Y5sI-unsplash")
        case "marine":
            infoLabel.text = "Jellyfish are the oldest multicellular animls on the planet. They don't have brains and can clone themselves. One jellyfish is called a Medusa and jellyfish have acutally gone into space!\nFish breathe oxygen, not air through their gills. Most fish (except sharks) don't have eyelids so when they rest, they float in space or hide somewhere to \"sleep\""
            imageOne.image = #imageLiteral(resourceName: "sasha-stories-r5sWUXSgEfg-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "claudio-guglieri-K2RH1QZdLF4-unsplash")
        case "seashells":
            infoLabel.text = "Seashells are mobile homes for many mollusks. There are likely over 200,000 different mollucks, each with unique shells. Fun fact! Most shells open to the right, they are dextral. People love seashells. Many love to collect them during trips to the beach."
            imageOne.image = #imageLiteral(resourceName: "mandy-henry-2Jjx-btuiMY-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "dagmara-dombrovska-lcgFTsce9kc-unsplash")
        case "winterA":
            infoLabel.text = "Arctic foxes are super well-adapted to the cold. They can survive in temperatures down to -70 degrees celcius. They don't hibernate and their fur changes colors with the seasons, from brown to white. \nA group of penguins in water is a raft, but on land it's called a waddle! Penguins are flightless birds that mostly live in the Southern Hemisphere (none lives in the North Pole) They can also drink sea water!"
            imageOne.image = #imageLiteral(resourceName: "jonatan-pie-NBvcQRdRSeQ-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "yvette-zhang-g-tyziMh37o-unsplash")
        case "snow":
            infoLabel.text = "Many say that every snowflake is unique, but that's actually a myth. Some snowflakes can be identical to others. All snowflakes have 6 sides and they are actually not white. They are translucent!"
            imageOne.image = #imageLiteral(resourceName: "hide-obara-KHDeVpytLuU-unsplash")
            imageTwo.image = #imageLiteral(resourceName: "damian-mccoig-2HqpqSqy0zg-unsplash")
        default:
            print("default case")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
}
