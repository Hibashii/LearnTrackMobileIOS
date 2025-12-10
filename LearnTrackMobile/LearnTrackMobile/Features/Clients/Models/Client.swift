//
//  Client.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation

struct Client: Identifiable, Codable {
    let id: Int?
    var raison_sociale: String
    var rue: String?
    var code_postal: String?
    var ville: String?
    var nom_contact: String?
    var email: String?
    var telephone: String?
    var siret: String?
    var numero_tva: String?
}
