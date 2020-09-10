//
//  ViewController.swift
//  ArrayProblems
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var account1 = Account(balance: 30)
        var account2 = Account(balance: 50)
        account1.transfer(amount: 10, from: &account2)
        print(account1.balance)
        print(account2.balance)
    }


}


struct Account {
    var balance: Int
    
    mutating func transfer(amount: Int, from: inout Account) {
        self.balance += amount
        from.balance -= amount
    }

    
}
