//
//  Second Interface Of Notes.swift
//  AppNotesimulation
//
//  Created by Crescenzo Monaco on 21/11/23.
//

import SwiftUI
import SwiftData


struct Second_Interface_Of_Notes: View {
    
    @Environment(\.modelContext) private var context
    @Query private var items : [Nota]
    @State private var newNoteName: String = ""
    @State private var navigateBackToNotes: Bool = false
    
    var body: some View {
        
       // NavigationView { // Avvolgi il contenuto in NavigationView
                    VStack {
                        TextField("Type here", text: $newNoteName)
                            .padding(.horizontal)
                            .frame(maxHeight: .infinity)
                            .position(x: 200, y: 0)

                        
                    /*
                        Button("Done") {
                            addNotes(noteName: newNoteName)
                            newNoteName = "" // Pulisce il campo di testo dopo l'aggiunta della nota
                            navigateBackToNotes = true // Imposta la variabile di stato per tornare alla vista precedente
                        }
                        .font(Font.headline.weight(.semibold))
                        .foregroundColor(.yellow)
                        .position(x: 350, y:90) */

                       // Spacer()
                    }.toolbar() {
                        ToolbarItemGroup(placement: .topBarTrailing) {Button("Done") {
                            addNotes(noteName: newNoteName)
                            newNoteName = "" // Pulisce il campo di testo dopo l'aggiunta della nota
                            navigateBackToNotes = true // Imposta la variabile di stato per tornare alla vista precedente
                        }.tint(.yellow)

                            
                        }
                    }
            }

         

            func addNotes(noteName: String) {
                let tizio = Nota(name: noteName)
                context.insert(tizio)
                try? context.save()
            }

            func deleteNotes(_ item: Nota) {
                context.delete(item)
                try? context.save()
            }

        
        
       /* NavigationView
        {
            /* TextField("Write here", text: $newNoteName)
             .padding(.horizontal)
             .frame(maxHeight: .infinity)
             .position(x:200, y:300)
             
             
             Spacer() */
            
            
            
            .navigationBarItems(trailing: Button("Done")
                 {
                    addNotes(noteName: newNoteName)
                    newNoteName = "" // Pulisce il campo di testo dopo l'aggiunta della nota
                })
            
              /*  .font(Font.headline.weight(.semibold))
                .foregroundColor(.yellow)
                .padding(.trailing, 21)
                 .position(x: 150, y:-30)
                Spacer() */
            
        }
        
        
    }
    
    func addNotes(noteName: String) {
        let item = Nota(name: noteName)
        context.insert(item)
       try? context.save()
    }
    
    func deleteNotes(_ item: Nota) {
        context.delete(item)
        try? context.save()
    }
    
        */
        
    }


#Preview {
    NavigationStack{
        Second_Interface_Of_Notes()
    }
}
