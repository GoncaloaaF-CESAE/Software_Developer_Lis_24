// cmt

/*
 cmt linha 1
 cmt linha 2
 ....
*/


var greeting = "Hello, playground 223"

let corFundo = "Blue"

// nome = 10
var nome = "Valor 2"
var nome2:String = "Valor 2"

let nome_Const = "Gonçalo"

nome = "Novo Nome"
// nome_Const = "Nome nome 2"

print("Ola Mundo 2")

let ano = 2024
print("Ola Mundo, " + nome_Const + " em " + String(ano))
print("Ola Mundo, \(nome_Const) em \(ano)")

//op


let val1 = 10.12
let val2:Double = 15

let soma = val1 + val2

let soma2 = val1+val2


// nomes var

var foo = 10
var foo2 = 10

// var 2foo = 10

var _foo = 10

var 🐶 = "Boby -> 🐶"
print(🐶)

//var π = 3.14

var π = 3234


let 正体字 = "bla bla bla"





// int Max

Int.max
Int.min

UInt.max
UInt.min

Float.pi
Double.pi


// range

10...100 // 10 a 100 <-> n...m -> n a m
10..<100 // 10 a 99 <-> n...m -> n a m-1

// condições

    // if
var idade = 19

if idade > 18 {
    print("Adulto")
}else if idade > 16 {
    print("Teen")
}else{
    print("menor")
}

    // swith case

idade = 10
switch idade{
    
case 10:
    print("10 anos")
    fallthrough
case 15:
    print("15 anos")
case 20:
    print("20 anos")
case _:
    print("outra idade")
}


print("-----V2-------")
idade = 10
switch idade{
    
case 0..<15:
    print("menor")
    fallthrough
case 15..<18:
    print("teen")
case _:
    print("Adulto")
}


// loops
    
    // for
    // for (int i = 0; i < 10; i++)
    
var i = 10
//i++
i += 1

print("----- For ------")
for elm in 0...100 where elm % 2 == 0{
    print("Inicio")
    if elm > 50 {
        print("Sair")
        break
    }
    if elm % 5 == 0{
        print("pasa para a itr seguinte")
        continue
    }
    print(elm)
    
}
    // while
var val = 0

while val < 10{
    
    print(val)
    
    val += 1
}


var cond:Bool = false // data == 12/12/2024:00:00

while cond{
    
    print(val)
    

}
    // do while
i = 10
var cond2 = i > 0
var contador = 0

repeat{
    contador += 1

    print("\(contador) -> it Works!! -> \(cond2)")
    
    i -= 1
    
}while(cond2)
    


/*
 && - and
 
 idade == 10 && (ano > 2000 || nome == "Ana")
 
 
 || - or
 
 idade == 10 || ano > 2000
 
 */


// {}
// []
// ()





/*
 
 
 Java
 C
 
 int foo = 10;
 # foo = "10";
 
 Php
 JS
 
 $foo = 10;
 
 $foo = "10"
 
 
 */
