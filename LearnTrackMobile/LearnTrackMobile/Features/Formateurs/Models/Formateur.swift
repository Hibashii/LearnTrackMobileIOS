//
//  Formateur.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation

struct Formateur: Identifiable, Codable {
    let id: Int?
    var prenom: String
    var nom: String
    var email: String
    var telephone: String
    var specialite: String?
    var taux_horaire: Double?
    var exterieur: Int?            // 0 = interne, 1 = externe
    var societe: String?
    var siret: String?
    var nda: String?
    var rue: String?
    var code_postal: String?
    var ville: String?
}
