//
//  Binding-OnChange.swift
//  UltimatePortfolio
//
//  Created by James Watling on 31/12/2020.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
