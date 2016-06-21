//
//  gameScreen.swift
//  FlashBack
//
//  Created by Jack Chen on 6/20/16.
//  Copyright © 2016 Jack Chen. All rights reserved.
//

import UIKit

class gameScreen: UIViewController {
    
    //Level of game starts at 1
    var level = 1
    var iconImage = UIImage(named: "android.png")
    var inGame = false
    var counter = 0
    
    //Which platform we set down an image on really quickly.
    var chosenPlatform = -1
    
    
    //This platform array tells us which platform we are dealing with.
    var platformArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    
    //This array holds the platform positions that were chosen, the user input will be checked against this.
    var checkArray : [Int] = []
    
    //This array holds the user's button presses. 
    var userArray: [Int] = []

    @IBOutlet weak var levelUpImage: UIImageView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var platformZero: UIButton!
    @IBOutlet weak var platformOne: UIButton!
    @IBOutlet weak var platformTwo: UIButton!
    @IBOutlet weak var platformThree: UIButton!
    @IBOutlet weak var platformFour: UIButton!
    @IBOutlet weak var platformFive: UIButton!
    @IBOutlet weak var platformSix: UIButton!
    @IBOutlet weak var platformSeven: UIButton!
    @IBOutlet weak var platformEight: UIButton!
    @IBOutlet weak var platformNine: UIButton!
    @IBOutlet weak var platformTen: UIButton!
    @IBOutlet weak var platformEleven: UIButton!
    

    @IBOutlet weak var platformZeroImage: UIImageView!
    @IBOutlet weak var platformOneImage: UIImageView!
    @IBOutlet weak var platformTwoImage: UIImageView!
    @IBOutlet weak var platformThreeImage: UIImageView!
    @IBOutlet weak var platformFourImage: UIImageView!
    @IBOutlet weak var platformFiveImage: UIImageView!
    @IBOutlet weak var platformSixImage: UIImageView!
    @IBOutlet weak var platformSevenImage: UIImageView!
    @IBOutlet weak var platformEightImage: UIImageView!
    @IBOutlet weak var platformNineImage: UIImageView!
    @IBOutlet weak var platformTenImage: UIImageView!
    @IBOutlet weak var platformElevenImage: UIImageView!
    
    
    
    var checkElement = 0
    

    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    //When we first set up the game, we will want to pick a random platform + random image to display on the platform. Since we're still in prototype, we will just take iconImage for now.
    func setup() {
            userLostClearScreen()
        levelLabel.text = "Level is: " + String(level)
        counter = 0
        userArray = []
        checkArray = []
        print("did i get here?")
        var count = 0
        while count < level {
            let randomIndex = Int(arc4random_uniform(UInt32(platformArray.count)))
            chosenPlatform = platformArray[randomIndex]
            checkArray.append(chosenPlatform)
            count += 1
        }
        
        var delayTime = 0.5


        
        
        for element in checkArray {

            checkElement = element
            print("my chosen platform is: ", checkElement)
            let image = UIImage(named: "android.png") as UIImage!
            let noImage = UIImage(named: "none.png") as UIImage!
            
        
            if element == 0 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformZeroImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformZeroImage.image = noImage

                }

            } else if element == 1 {
                print("should be right after my chosen platform???")
                
                self.delay(delayTime++) {
                    self.platformOneImage.image = image
                }
                
                self.delay(delayTime++) {
                    self.platformOneImage.image = noImage

                }

            } else if element == 2 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformTwoImage.image = image
                }
            
                self.delay(delayTime++) {
                    self.platformTwoImage.image = noImage

                }
                
            } else if element == 3 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformThreeImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformThreeImage.image = noImage

                }

            } else if element == 4 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformFourImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformFourImage.image = noImage

                }

                
            } else if element == 5 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformFiveImage.image = image
                }


                self.delay(delayTime++) {
                    self.platformFiveImage.image = noImage
                }

            } else if element == 6 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformSixImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformSixImage.image = noImage

                }

            } else if element == 7 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformSevenImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformSevenImage.image = noImage

                }


            } else if element == 8 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformEightImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformEightImage.image = noImage

                }


            } else if element == 9 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformNineImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformNineImage.image = noImage

                }

            } else if element == 10 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformTenImage.image = image
                }

                self.delay(delayTime++) {
                    self.platformTenImage.image = noImage

                }

                
            } else if element == 11 {
                print("should be right after my chosen platform???")
                self.delay(delayTime++) {
                    self.platformElevenImage.image = image
                    
                }

                self.delay(delayTime++) {
                    self.platformElevenImage.image = noImage

                }

            }



        }

        disableButtons()
        delay(delayTime) {
            self.enableButtons()
            
        }
        print("check array is: ", checkArray)
        inGame = true
        
        

        
    }
    
    
    func disableButtons() {
        platformZero.enabled = false
        platformOne.enabled = false
        platformTwo.enabled = false
        platformThree.enabled = false
        platformFour.enabled = false
        platformFive.enabled = false
        platformSix.enabled = false
        platformSeven.enabled = false
        platformEight.enabled = false
        platformNine.enabled = false
        platformTen.enabled = false
        platformEleven.enabled = false
    }
    
    func enableButtons() {
        platformZero.enabled = true
        platformOne.enabled = true
        platformTwo.enabled = true
        platformThree.enabled = true
        platformFour.enabled = true
        platformFive.enabled = true
        platformSix.enabled = true
        platformSeven.enabled = true
        platformEight.enabled = true
        platformNine.enabled = true
        platformTen.enabled = true
        platformEleven.enabled = true
    }

    
    func userLostClearScreen() {
        let noImage = UIImage(named: "none.png") as UIImage!
        platformZeroImage.image = noImage
        platformOneImage.image = noImage
        platformTwoImage.image = noImage
        platformThreeImage.image = noImage
        platformFourImage.image = noImage
        platformFiveImage.image = noImage
        platformSixImage.image = noImage
        platformSevenImage.image = noImage
        platformEightImage.image = noImage
        platformNineImage.image = noImage
        platformTenImage.image = noImage
        platformElevenImage.image = noImage
    }
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    

    @IBAction func platformZeroPressed(sender: AnyObject) {
        print("nope")
        if inGame && platformZero.enabled {
            userArray.append(0)
            print(userArray)
            
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    userLostClearScreen()
                    level = 1
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    setup()
                    
                    
                }
            }
            
            
            
        }
    }
    

 
    @IBAction func platformOnePressed(sender: AnyObject) {
                print("nope")
        if inGame && platformOne.enabled {
            userArray.append(1)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    userLostClearScreen()
                    setup()

                    
                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()

                    
                    
                }
            }
        }
    }
    
    
    @IBAction func platformTwoPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformTwo.enabled {
            userArray.append(2)
            print(userArray)
            
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                    
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    userLostClearScreen()
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    
                    
                    setup()

                    
                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                }
            }
            
        }

    }
    



    
    @IBAction func platformThreePressed(sender: AnyObject) {
                print("nope")
        if inGame && platformThree.enabled {
            userArray.append(3)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    
                    userLostClearScreen()
                    setup()
                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                }
            }
        
        
        
        
        
        }

    }
    
    
    @IBAction func platformFourPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformFour.enabled {
            userArray.append(4)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    userLostClearScreen()
                    setup()
                    
                }
            }
            

        }

        
        
        
    }
    
    @IBAction func platformFivePressed(sender: AnyObject) {
                print("nope")
        if inGame && platformFive.enabled {
            userArray.append(5)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    userLostClearScreen()
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    
                    setup()
                    
                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    setup()
                    
                }
            }
            
            
            
        }

    }

    
    
    @IBAction func platformSixPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformSix.enabled {
            userArray.append(6)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                        userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    userLostClearScreen()
                    setup()
                    
                }
            }

        }
        

    }
 
    
    @IBAction func platformSevenPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformSeven.enabled {
            userArray.append(7)
            print(userArray)

            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    
                    setup()
                    
                }
            }
        }
        
        
    }

    @IBAction func platformEightPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformEight.enabled {
            
            userArray.append(8)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    
                    
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    
                    
                    
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    // need to instantiate other stuff to nil, maybe need a newGame function
                userLostClearScreen()
                    setup()
                    
                    
                }
            }
          
        }

    }
    
    
    @IBAction func platformNinePressed(sender: AnyObject) {
                print("nope")

        if inGame && platformNine.enabled {
            userArray.append(9)
            print(userArray)
            
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    counter = 0
                    
                    
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    counter = 0
                    inGame = false
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    level = 1
                    userLostClearScreen()
                    setup()
                }
            }

        }

    }
    
    
    @IBAction func platformTenPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformTen.enabled {
            userArray.append(10)
            print(userArray)
            
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    level = 1
                    userLostClearScreen()
                    setup()
                    
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()
                    
                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    level = 1
                    userLostClearScreen()
                    setup()
                }
            }
            
        }
    }
    
    @IBAction func platformElevenPressed(sender: AnyObject) {
                print("nope")
        if inGame && platformEleven.enabled {
            userArray.append(11)
            print(userArray)
            
            if userArray.count < checkArray.count {
                if userArray[counter] != checkArray[counter] {
                    print("Sorry you have lost! Wrong button pressed.")
                    
                    
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    userLostClearScreen()
                    setup()
                    //need to instantiate other stuff to nil, maybe need a newGame function
                } else {
                    counter += 1
                }
                
            } else if userArray.count == checkArray.count {
                if userArray[counter] == checkArray[counter] {
                    print("Congratulations! Move on to the next level.")
                    level += 1
                    levelUpImage.image = UIImage(named: "levelUp.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    userLostClearScreen()
                    setup()

                } else {
                    print("Sorry you have lost! Wrong button pressed.")
                    levelUpImage.image = UIImage(named: "tryAgain.png")
                    self.delay(1) {
                        self.levelUpImage.image = UIImage(named: "none.png")
                    }
                    counter = 0
                    inGame = false
                    // need to instantiate other stuff to nil, maybe need a newGame function
                    userLostClearScreen()
                    setup()
                    
                    
                }
            }

        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func viewDidAppear(animated: Bool) {
        levelLabel.text = "Level is: " + String(level)
        super.viewDidAppear(animated)
        setup()
        
    
        
    }
    
    
    
    

}
