//
//  Session.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation

struct Session: Identifiable, Codable {
    let id: Int?
    var module: String
    var date: String          // YYYY-MM-DD from Supabase
    var debut: String         // HH:MM:SS
    var fin: String           // HH:MM:SS
    var modalite: String      // "P" ou "D"
    var lieu: String
    var tarif_client: Double?
    var tarif_sous_traitant: Double?
    var frais_rembourser: Double?
    var ref_contrat: String?
    var ecole_id: Int?
    var client_id: Int?
    var formateur_id: Int?
}

