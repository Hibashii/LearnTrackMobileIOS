//
//  AuthService.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation
import Supabase

final class AuthService {

    private let client = SupabaseClientManager.shared.client
    private let tokenKey = "supabase_access_token"

    // MARK: - Login
    func login(email: String, password: String) async throws {
        let response = try await client.auth.signIn(
            email: email,
            password: password
        )

        // Save access token
        let token = response.accessToken
        
        if let data = token.data(using: String.Encoding.utf8) {
            KeychainManager.save(key: tokenKey, data: data)
        }
    }

    // MARK: - Logout
    func logout() async throws {
        try await client.auth.signOut()
        KeychainManager.delete(key: tokenKey)
    }

    // MARK: - Current user
    func getCurrentUser() async throws -> User? {
        if let session = try? await client.auth.session {
            return session.user
        }
        return nil
    }
}
