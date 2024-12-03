import UIKit

/*
 Create base class Computer with common properties and methods.

 Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
 A function to display detailed specifications of each computer type.
 Create the Base Class (Computer)

 Add the following properties:
 brand: String
 processor: String
 ram: Int (amount of RAM in GB)
 Create an initializer for these properties.
 Add a method displaySpecs() that prints the values of these properties.
 
  Write some test code:

 Create one object for each subclass (Laptop, Desktop, and Server).
 Assign appropriate values to their properties.
 Call the displaySpecs() method for each object to print their specifications.
*/


class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    // getters
    func displaySpecs() {
        print(" \(self.brand) \(self.processor) \(self.ram)GB")
    }
    // setters
    func setBrand(_ brand: String) {
        self.brand = brand
    }
    func setProcessor(_ processor: String) {
        self.processor = processor
    }
    func setRam(_ ram: Int) {
        if ram > 0 {
            self.ram = ram
        } else {
            print("Not valid.")
        }
    }
}

/*
 Laptop:
    Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
    Override the displaySpecs() method to include this property.
 */
// ============================>>
// ====== class Laptop ========>>
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(isTouchscreen)")
    }
}

/*
 Desktop:
    Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).
    Override the displaySpecs() method to include this property.
*/
// ============================>>
// ====== class Desktop ========>>
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(hasDedicatedGPU)")
    }
}

/*
 Server:
    Add an additional property rackUnits (an Int to specify the server's size in rack units).
    Override the displaySpecs() method to include this property.
*/
// ============================>>
// ====== class Desktop ========>>
class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
        
    }
    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Units: \(rackUnits)")
    }
}


//==================================>>
//===== TEST CODE BELOW ============>>

/*Laptop Specs:
 Brand: Apple, Processor: M1, RAM: 16GB
 Touchscreen: No
 */
var laptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
laptop.displaySpecs()

/*
 Desktop Specs:
 Brand: Dell, Processor: Intel i7, RAM: 32GB
 Dedicated GPU: Yes
 */
var desktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
desktop.displaySpecs()

/*
 Server Specs:
 Brand: HP, Processor: Xeon, RAM: 64GB
 Rack Units: 4
 */
var server = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)
server.displaySpecs()
