//
//  Profile.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Perfiles de Usuarios")
            }
            .navigationTitle("Perfiles")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Profile()
}
