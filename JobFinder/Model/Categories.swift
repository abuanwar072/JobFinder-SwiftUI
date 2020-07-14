//
//  Categories.swift
//  JobFinder
//
//  Created by Abu Anwar MD Abdullah on 12/7/20.
//  Copyright © 2020 Abu Anwar MD Abdullah. All rights reserved.
//
import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    let name: String
}

let categories = [
    Category(name: "All"),
    Category(name: "IT"),
    Category(name: "Real Estate"),
    Category(name: "Design"),
    Category(name: "Business"),
]



