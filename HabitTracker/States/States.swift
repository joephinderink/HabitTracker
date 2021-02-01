//
//  States.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import Foundation
import SwiftUI

class States: ObservableObject {
    @Published var showDetailView = false
    @Published var offset = CGSize.zero
    @Published var showNewHabbit = false
}
