//optional type

var maybeInt : Int?

let myInt : Int = 5

if(myInt == 4){
    maybeInt = 10
}

print(maybeInt)

//optional chaining, comparing optionals

class Colors{
    var green: Green?
}

class Green{
    var isDark = "yes"
}

let myColor = Colors()

if let result = myColor.green?.isDark
{
    print("It's dark.")
}
else
{
    print("It's not dark.")
}

//enum, switch, struct, and class

enum Food{
    case Burger
    case Chicken
    case Salad
}

let myMeal = Food.Burger

switch myMeal {
case .Burger:
    print("Today I'm going to eat a burger.")
case .Chicken:
    print("Just chicken today.")
case .Salad:
    print("Maybe I should have a salad instead.")
    
}

class Vehicle{
    
    var wheels: Int
    var color: String
    
    init(wheels:Int,color:String){
        self.wheels = wheels
        self.color = color
    }
    
    func gloat(){
        print("My vehicle has \(wheels) wheels and is \(color).")
    }
}

let myCar : Vehicle = Vehicle(wheels: 4,color: "black")
myCar.gloat()


struct myGreetings{
    static let Mage = "Hello"
    static let Druid = "My Greetings"
    static let Paladin = "WELL MET"
}

print ("The Paladin says \(myGreetings.Paladin)!")

//protocols and extensions

protocol NewGame{
    var fun:String{get set}
    var isComplete:String{get}
    
    func isGood()
}

struct MyGame : NewGame{
    var fun = "yes"
    var isComplete = "yes"
    
    
    func isGood(){
        if (fun=="yes" && isComplete=="yes"){
            print("Hi [POTENTIONAL_CUSTOMER], you have to play this game. I've never seen anything like it before")
        }
        else
        {
            print("It's not worth the money.")
        }
    }
    
}

var superhot = MyGame()
superhot.isGood()

extension MyGame {
    func review(){
        print("It's fun with friends.")
    }
}

let rocketLeauge = MyGame()
rocketLeauge.review()

//error handling

enum MyError : ErrorType {
    
    case ErrorOne
    case ErrorTwo
}

func goingToThrow(someString:String) throws {
    
    if someString=="oops"{
        throw MyError.ErrorOne
    }
    else if someString=="not again"{
        throw MyError.ErrorTwo
    }
}

func testErrors(){
    do
    {
        try goingToThrow("oops")
    }
    catch MyError.ErrorOne{
        print("Of course that would happen.")
    }
    catch MyError.ErrorTwo{
        print("Not again...")
    }
    catch{
        print("What did you do")
    }
}

testErrors()

//arrays, dictionaries, flow control

var evenNums:[Int] = [2,4,6,8]

var myColors: [String:Int] = [
    "black":1,
    "white":2
]

for index in evenNums{
    print(index)
}

if evenNums.contains(2){
    print("There's a two")
}

var inf = 1
while inf == 1
{
    print("not infinite")
    break
}