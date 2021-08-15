//
//  Shop.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
