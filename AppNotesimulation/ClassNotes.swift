//
//  ClassNotes.swift
//  AppNotesimulation
//
//  Created by Crescenzo Monaco on 21/11/23.
//

import Foundation
import SwiftData

@Model
  class Nota: Identifiable
{
    var id : String
    var name : String
    
    init ( name: String )
    {
        self.name=name
        self.id = UUID().uuidString
    }
}
