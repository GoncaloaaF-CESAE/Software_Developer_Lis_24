//
//  main.swift
//  PokemonModel
//
//  Created by Gonçalo Feliciano on 20/01/2025.
//

import Foundation

struct Cries:Codable{
    var latest:String
    var legacy: String
}

struct Species:Codable{
    var name:String
    var url:String
    
}

struct Sprites:Codable{
    var back_default:String
    var back_female:String

    var back_shiny:String
    var back_shiny_female:String

    var front_default:String
    var front_female:String

    var front_shiny:String
    var front_shiny_female:String
    
    
}
struct Details:Codable{
    
    var name: String
    var url: String
    
}

struct Ability:Codable{
    
    
    /*
     {
          "ability": {
            "name": "limber",
            "url": "https://pokeapi.co/api/v2/ability/7/"
          },
          "is_hidden": false,
          "slot": 1
        }
     
     */
    
    var is_hidden: Bool
    var slot: Int
    var ability: Details
    
}
struct Form:Codable{
    
    var name: String
    var url: String
}

struct Game_indice:Codable{
    
    /*
     
     {
           "game_index": 76,
           "version": {
             "name": "red",
             "url": "https://pokeapi.co/api/v2/version/1/"
           }
          }
     */

    var game_index: Int
    var version: Details
    
}

struct VersionGroupDetail:Codable{
    
    var level_learned_at: Int
    var move_learn_method: Details
    var version_group: Details
}
struct Move:Codable{
    
    /*
     
     {
       "move": {
         "name": "transform",
         "url": "https://pokeapi.co/api/v2/move/144/"
       },
       "version_group_details": [
         {
           "level_learned_at": 1,
           "move_learn_method": {
             "name": "level-up",
             "url": "https://pokeapi.co/api/v2/move-learn-method/1/"
           },
           "version_group": {
             "name": "red-blue",
             "url": "https://pokeapi.co/api/v2/version-group/1/"
           }
         }

       ]
     }
     
     */
    
    var move: Details
    var version_group_details:[VersionGroupDetail]
    
}
struct Stat:Codable{
    
    /*
     {
        "base_stat": 48,
        "effort": 1,
        "stat": {
          "name": "hp",
          "url": "https://pokeapi.co/api/v2/stat/1/"
        }
      }
     */
    
    var base_stat: Int
    var effort: Int
    var stat:[Details]
    
}
struct PokeType:Codable{
    /*
     
     {
          "slot": 1,
          "type": {
            "name": "normal",
            "url": "https://pokeapi.co/api/v2/type/1/"
          }
        }
     
     */
    
    var slot:Int
    var type:[Details]
    
    
}


struct Pokemon:Codable, Identifiable{
    
    var id: Int
    var name:String
    var order: Int
    var height: Int
 
    var is_default:Bool
    var location_area_encounters:String
    var base_experience: Int
    var weight: Int
    
    var cries:Cries
    var species:Species
    var sprites:Sprites
    
    
    var abilities:[Ability]
    var forms:[Form]
    var game_indices:[Game_indice]
    var moves:[Move]
    var stats:[Stat]
    var types:[PokeType]
    
    
}

