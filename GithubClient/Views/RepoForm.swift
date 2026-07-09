//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repoDescription: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                TextField(
                    "",
                    text: $repoName,
                    prompt: Text("Nombre del Repositorio")
                        .foregroundStyle(.black.opacity(0.6))
                )
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                
                TextField(
                    "",
                    text: $repoDescription,
                    prompt: Text("Descripción del Repositorio")
                        .foregroundStyle(.black.opacity(0.6))        
                
                )
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(4...10)
                    .padding(.vertical)
                Spacer()
                
                Button(action: {
                    print("Botón aplastado")
                }){
                    Label("Guardar Repo", systemImage: "square.and.arrow.down")
                        .padding(.all, 7)
                        .frame(maxWidth:.infinity)
                }
                .buttonStyle(.borderedProminent)
                //.buttonBorderShape(.roundedRectangle(radius: 16))
            }
            .padding()
            .navigationTitle("Formulario de Repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
