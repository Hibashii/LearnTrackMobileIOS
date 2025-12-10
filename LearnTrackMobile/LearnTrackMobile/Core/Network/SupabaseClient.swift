//
//  SupabaseClient.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation
import Supabase

final class SupabaseClientManager {
    static let shared = SupabaseClientManager()

    private let supabaseUrl = URL(string: "https://nbcrkbjhywyxrgjwxwus.supabase.co")!
    private let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5iY3JrYmpoeXd5eHJnand4d3VzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUxNDI2NTEsImV4cCI6MjA4MDcxODY1MX0.oJUa92URf62UlUP0EHl83WmUEDDA8HWAgpOmfQ1-JAQ"

    let client: SupabaseClient

    private init() {
        client = SupabaseClient(
            supabaseURL: supabaseUrl,
            supabaseKey: supabaseKey
        )
    }
}

