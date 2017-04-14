//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Raghav Vashisht on 12/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoLabel: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLabel.text = "\(pokemon.pokedexId)"
        pokemon.downloadPokemonDetail { 
            //whatever we write here will only be called when the network call is complete
            
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        attackLabel.text = pokemon.attack
        weightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        if pokemon.nextEvolutionID == "" {
            evoLabel.text = "No Evolution available."
            nextEvoLabel.isHidden = true
        }else {
            evoLabel.text = "Evolution: \(pokemon.nextEvolutionName) \(pokemon.nextEvolutionLevel)"
            nextEvoLabel.image = UIImage(named: "\(pokemon.nextEvolutionID)")
        }
        
        descriptionLabel.text = pokemon.description
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
