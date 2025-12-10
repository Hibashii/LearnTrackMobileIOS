//
//  APIError.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import Foundation

enum APIError: Error, LocalizedError {
    case invalidResponse
    case decodingError
    case serverError(String)
    case unauthorized
    case unknown

    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "Réponse invalide du serveur."
        case .decodingError:
            return "Erreur de décodage des données."
        case .serverError(let message):
            return message
        case .unauthorized:
            return "Non autorisé."
        case .unknown:
            return "Erreur inconnue."
        }
    }
}
