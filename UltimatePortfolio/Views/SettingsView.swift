//
//  SettingsView.swift
//  UltimatePortfolio
//
//  Created by James Watling on 02/01/2021.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var dataController: DataController
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            Section(header: Text("Manage Storage")) {
                Button("Delete All") {
                    dataController.deleteAll()
                    dataController.save()
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
