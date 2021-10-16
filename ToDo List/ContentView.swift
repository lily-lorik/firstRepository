//
//  ContentView.swift
//  ToDo List
//
//  Created by Лагода Лілія on 06.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      print("viewDidLoad- екран створюється")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear- представлення буде показано")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear- представлення вже показано")
    }
}
