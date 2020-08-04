//
//  ViewController.swift
//  MyFatara_M_TableView_Exercise
//
//  Created by Fatara Muhammad on 8/4/20.
//  Copyright © 2020 Fatara Muhammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let favoriteCompositions = [ "Toccata and Fugue in D minor", "Concerto for 2 Violins", "Strings and Continuo in D minor","Moonlight Sonata", "Symphony No.5 in C Minor", "Dance of the Sugar Plum", "Waltz of the Flowers"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return favoriteCompositions.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ElectronicCell")
        cell?.textLabel?.text = favoriteCompositions[indexPath.row]
        return cell!
        
    }
}

