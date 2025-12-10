//
//  User.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation

struct AppUser: Identifiable, Codable {
    let id: Int?                      // internal ID
    var username: String?
    var email: String
    var role: String?                // "admin" ou "user"
    var supabase_user_id: String?    // UUID
    var is_active: Bool?             // Compte actif ou désactivé
}
