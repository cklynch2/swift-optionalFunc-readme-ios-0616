//: Playground - noun: a place where people can play


// This will raise an error if the argument items array is empty!
func lastItem(items: [String]) -> String {
    return items[items.count - 1]
}

var fruits = ["Pineapple", "Papaya", "Passionfruit"]
lastItem(fruits)

fruits = []
// lastItem(fruits) You get an error because lastItem is trying to access an element at index -1. There are no elements and indices cannot be negative!

// Solve this by returning an optional string rather than a string:
func lastItemOptional(items : [String]) -> String? {
    if items.isEmpty  {
        return nil
    }
    return items[items.count - 1]
}

lastItemOptional(fruits)

if let lastItem = lastItemOptional(fruits) {
    print("The last fruit is \(lastItem).")
} else {
    print("Sad, fruitless day.")
}

func produceFullName(firstName: String, middleName: String?, lastName: String) -> String {
    var fullName = firstName
    if let middleName = middleName {
        fullName += " \(middleName)"
    }
    fullName += " \(lastName)"
    return fullName
}

produceFullName("Claire", middleName: "Katherine", lastName: "Lynch")
produceFullName("Calvin", middleName: nil, lastName: "Stalvig")