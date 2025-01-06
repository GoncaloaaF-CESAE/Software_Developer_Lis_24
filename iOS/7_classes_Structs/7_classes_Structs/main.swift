//
//  main.swift
//  7_classes_Structs
//
//  Created by Gonçalo Feliciano on 17/12/2024.
//

import Foundation

print("Hello, World!")


var p = Pessoa(nome: "Gonçalo", idade: 21)
var s = Pessoa_s(nome: "Gonçalo", idade: 21)


print(p.infos())
print(s.infos())

print("-------------")

var p2 = p
print(p.infos())
print(p2.infos())

print("--")

p2.nome = "João"
print(p.infos())
print(p2.infos())

print("-------------")

var s2 = s

print(s.infos())
print(s2.infos())


print("--")

s2.nome = "João"
print(s.infos())
print(s2.infos())

print("-------------")



func foo(p:Pessoa){
    
    p.idade = 123
}


print(p.idade)
foo(p: p)

print(p.idade)

print(p === p2)

// === -> compara ref


var p3 = Pessoa(nome: "Gonçalo", idade: 21)
var p4 = Pessoa(nome: "Gonçalo", idade: 21)

print(p3 === p4)



print(Pessoa.num)

print("---------------------------------------")

var q = Quadrado(lado: 4)

print(q.area)

q.area = 1024

print(q.infos)


//q.infos = "adsd"


print("---------------------------------------")

var al = Aluno(nome: "Gonçalo", idade: 22, turma: "PY")


print(al.infos())


var lista = [al, p, p2]
print("------------")
for elm in lista{
    print(elm.infos())
    print("-------")
}
print("---------------------------------------")



print(lista[0] is Aluno)
print(lista[0] is Pessoa)
print(al is Pessoa)
print(lista[1] is Aluno)

print("---------------------------------------")



if let myAl = lista[1] as? Aluno{
    
    print(myAl.infos())
}


func registarAluno(p:Pessoa){
    
    guard let myAl = p as? Aluno else{
        return
    }
    
    print("Aluno \(myAl.nome) registado na turma \(myAl.turma)")
    
    
}

print("---------------------------------------")

for elm in lista{
   
    registarAluno(p: elm)
}

print("---------------------------------------")


var myArr = [5,5,1,2]

print(myArr.avg())
