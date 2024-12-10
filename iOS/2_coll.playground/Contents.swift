import Cocoa



/*
 
 tuplo = ()
 array = []
 
 
 */

// arrays

var lista = [12,23,41,31]

var lista2:[Int]
lista2 = []

lista[0]
lista[0] = 34
lista[0]

lista
lista.append(123)
lista

lista.insert(321, at: 1)

lista
let val = lista.remove(at: 0)
lista
val


lista.removeLast()
lista.removeFirst()



lista = [12,23,41,31]

lista.count
lista.capacity


lista.removeLast()

lista.count
lista.capacity

lista.append(123)

lista.count
lista.capacity

lista.append(123)

lista.count
lista.capacity

lista.append(123)
lista.append(123)
lista.append(123)

lista.count
lista.capacity

lista.append(123)

lista.count
lista.capacity




lista = [12,23, 8]

lista.count
lista.capacity


lista.append(123)

lista.count
lista.capacity



lista.append(123)

lista.count
lista.capacity


lista.append(123)

lista.count
lista.capacity


lista.append(123)

lista.count
lista.capacity


lista.removeAll()

lista
lista.count
lista.capacity


lista = [12,23,41,31]


lista.isEmpty

for elm in lista {
    print(elm)
}



// Tuplos

print("----------")

var tp1 = (10, 21)
tp1.0
tp1.1


var tp2 = ("Gonçalo", "CESAE", 2024)
tp2.0
tp2.1
tp2.2

var tp3 = (nome:"Gonçalo", escola:"CESAE", ano:2024)
tp3.0
tp3.1
tp3.2

print("----------")

tp3.nome
tp3.escola
tp3.ano


tp3.ano = 1231

tp3

var tp4:(String, String, Int)

tp4 =  (nome:"Gonçalo", escola:"CESAE", ano:2024)


var tp5:(nome:String, escola:String, ano:Int)

tp5 = ("Gonçalo", "CESAE", 2024)



//arrays V2


for elm in lista.enumerated() {
    print("pos: \(elm.offset) - Val: \(elm.element)")
}

// var lista3:[Any] = [10, "Gonçalo", false] <- Evitar


//Dicts (hash Map)


var dict1 = ["nome": "Gonçalo",
             "Escola":"CESAE",
             "Ano": "2024"]


var dict2 = ["ano1": 2000,
             "ano2": 2004,
             "ano3": 2024]

dict2["ano1"]

dict2["ano4"] = 2030

dict2

/*
 
 ["ano4": 2030, "ano3": 2024, "ano2": 2004, "ano1": 2000]
 ["ano1": 2000, "ano3": 2024, "ano2": 2004, "ano4": 2030]
 ["ano1": 2000, "ano3": 2024, "ano4": 2030, "ano2": 2004]
 
 
 */


/*
print("----- Teste Random -----\n\n")


var par = 0
var impar = 0
for _ in 0...100_000{
    
    let num = Int.random(in: 1...10000)
    
    if num % 2 == 0{
        par += 1
    }else{
        impar += 1
    }
        
}

print("par: \(par)")
print("impar: \(impar)")


print("\n\n----- Teste Random -----\n\n")
*/

// nil = null

dict2
//dict2.removeValue(forKey: "ano3")
dict2

//dict2.removeValue(forKey: "ano3")
dict2

//dict2["ano1"] = nil
dict2


dict2["ano1"]

print("----------")
print("----------")

for elm in dict2.values{
    print(elm)
}

print("----------")

for elm in dict2.keys{
    print(elm)
}

print("----------")

for elm in dict2{
    print("key: \(elm.key), Val: \(elm.value)")
}


// Sets


var set1:Set = ["Ovos", "Polvilho", "Leite", "Oleo", "Queijo"]

set1

set1.contains("Oleo")
set1.contains("Sal")

set1.remove("Sal")
set1.remove("Oleo")


set1.contains("Oleo")



set1.count
set1.capacity

set1.insert("Oleo")

set1.count
set1.capacity

var resp = set1.insert("Sal")
set1.count
set1.capacity

resp.inserted


resp = set1.insert("Oleo")
set1.count
set1.capacity

resp.inserted


set1 = ["Ovos", "Polvilho", "Leite", "Oleo", "Queijo", "sal"]
var set2:Set = ["Farinha", "Ovos", "Açucar", "iogurte", "Oleo"]


var novoSet1 = set1.union(set2)
print(novoSet1)

var novoSet2 = set1.intersection(set2)
print(novoSet2)

var novoSet3 = set1.symmetricDifference(set2)
print(novoSet3)

var novoSet4 = set1.subtracting(set2)
print(novoSet4)

var novoSet5 = set2.subtracting(set1)
print(novoSet5)


print("---------------")
print(set1)
set1.formUnion(set2)
print(set1)
print("---------------")
print("---------------")
for elm in set1{
    
    print(elm)
    
}
