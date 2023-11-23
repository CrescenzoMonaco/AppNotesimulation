//
//  ContentView.swift
//  AppNotesimulation
//
//  Created by Crescenzo Monaco on 21/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext ) private var context
    @Query private var items :  [Nota]
    @State private var searchText : String = ""
    @State private var searchTextCustom : String = ""
    var body: some View {
       NavigationView
        {
            NavigationStack {
                
                /*Text("Notes")
                 .font(.largeTitle)
                 .fontWeight(.bold)
                 .position(x: 67, y: 70) */
              /* VStack
                { HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                    TextField("Search", text: $searchText)
                    Image(systemName: "mic.fill")
                        .padding(.trailing, 8)
                        .foregroundColor(.gray)
                        .imageScale(.large
                        )
                    
                }
                
                
                .background(Color(.systemGray6))
                .cornerRadius(8)
              */
                    List {
                        
                        
                       
                            
                            /*HStack {
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 8)
                            TextField("Search", text: $searchText)
                            Image(systemName: "mic.fill")
                                .padding(.trailing, 8)
                                .foregroundColor(.gray)
                                .imageScale(.large
                                )
                            
                        }
                        
                          
                          
                          .background(Color(.systemGray6))
                          .cornerRadius(8) */
                        
                        ForEach(items) {item in
                            HStack {
                                Text(item.name)
                                Spacer()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                        .onDelete(perform: { indexes in
                            for index in indexes {
                                deleteNotes(items[index])
                            }
                        })
                        .listStyle(PlainListStyle())
                        .navigationTitle("Notes")
                    
                }
                
                    
                    
                    
                    
                    /*HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                        TextField("Search", text: $searchText)
                        Image(systemName: "mic.fill")
                            .padding(.trailing, 10)
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        
                    }
                    
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .listRowSeparator(.hidden)
                    */
             
                /*
                List {
                    Section {
                        ForEach(items) { item in
                            HStack {
                                
                                Text(item.name)
                                 Spacer()
                                
                            }
                            
                            .padding ()
                            
                            .background(Color.white)
                            .cornerRadius(10)
                           
                        }
                        
                        .onDelete(perform: { indexes in
                            for index in indexes {
                                deleteNotes(items[index])
                            }
                        })
                    }.listStyle(PlainListStyle())
    
                        .searchable (text: $searchText)
                        .navigationTitle("Notes")
                    
                } */
               

                    .searchable(text: $searchText)
                
                NavigationLink(destination: Second_Interface_Of_Notes())
                   {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                        .foregroundColor(.yellow)
                       
                   }.offset(x:150, y:0 )
                      
            }
            
        }.accentColor(.yellow)
            
           
    }
    func deleteNotes(_ item: Nota) {
        context.delete(item)
        try? context.save()}
}
   //
   
            
            
    
#Preview {
    ContentView()
}
