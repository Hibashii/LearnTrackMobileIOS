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

    private let supabaseUrl = URL(string: "https://qijvrqzdznsposonqlvr.supabase.co")!
    private let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFpanZycXpkem5zcG9zb25xbHZyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUzNTkwMjUsImV4cCI6MjA4MDkzNTAyNX0.tYL0Wi9pX7ieaKFn9_s94JHLf1HwX0c6Sii8BzDWFEU"

    let client: SupabaseClient

    private init() {
        client = SupabaseClient(
            supabaseURL: supabaseUrl,
            supabaseKey: supabaseKey
        )
    }
}

