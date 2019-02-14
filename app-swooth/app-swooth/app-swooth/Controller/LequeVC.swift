//
//  LequeVC.swift
//  app-swooth
//
//  Created by bobahasseb on 2/11/19.
//  Copyright © 2019 bobahasseb. All rights reserved.
//

import UIKit

class LequeVC: UIViewController
{
    var player:Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func onNextTaped(_ sender: Any)
    {
        
    performSegue(withIdentifier: "skillVCSeque", sender:self)
    }
    
    @IBAction func onMensTapped(_ sender: Any)
    {
        selectLeque(lequeType: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any)
    {
        selectLeque(lequeType: "womens")
    }
    
    @IBAction func onCoadTapped(_ sender: Any)
    {
        selectLeque(lequeType: "coad")
    }
    
    
    
    func selectLeque(lequeType:String)
    {
        player.desiredLeque=lequeType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVc = segue.destination as? SkillVC
        {
            skillVc.player = player
        }
    }
    
    
    
    
}
