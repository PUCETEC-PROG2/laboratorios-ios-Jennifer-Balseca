//
//  RepoItem.swift
//  GithubClient
//
//  Created by Jennifer Balseca on 9/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack{
            Image (uiImage: .githublogo)
                .resizable()
                .frame(width: 80, height: 80)
            VStack (alignment: .leading){
                Text("Nombre del Repositorio")
                    .font(.title2)
                    .foregroundStyle(.pink)
                Text("La raza Schnauzer es una raza de perro de tamaño mediano, originaria de Alemania.")
                    .font(.caption)
                    .padding(.top, 0.1)
                HStack{
                    Text("Lenguaje")
                        .fontWeight(.bold)
                        .foregroundStyle(.purple)
                    Spacer()
                    Text("Swift")
                }
                .font(.caption2)
                .padding(.top, 0.1)
            }
        }
        .padding(.leading)
    }
}

#Preview{
    RepoItem()
}
