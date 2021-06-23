//
//  HomeViewModel.swift
//  DisneyPlus
//
//  Created by Christopher Hicks on 6/23/21.
//

import SwiftUI

enum ListGroup {
    case recommendation
    case new
    
    var list: [Image] {
        switch self {
        case .recommendation:
            return HomeViewModel().recommendation
        case .new:
            return HomeViewModel().newPosters
        }
    }
    
    var title: String {
        switch self {
        case .recommendation:
            return "Recommeded for you"
        case .new:
            return "New to Disney Plus"
        }
    }
}


enum MovieGroup: String {
    case disney
    case pixar
    case marvel
    case starWars
    case natgeo
}


class HomeViewModel: ObservableObject, Identifiable {
    @Published var pageViews = [Image]()
    @Published var newPosters = [Image]()
    @Published var recommendation = [Image]()
    
    init() {
        setupPageViews()
        setupRecommendation()
        setupNewMovies()
    }
    
    private func setupPageViews() {
        pageViews = [
            Image("pg-animalKingdom"),
            Image("pg-mandalorian"),
            Image("pg-mulan"),
            Image("pg-sorcererApprentice")
        ]
    }
    
    private func setupRecommendation() {
        recommendation = [
            Image("poster-avengers"),
            Image("poster-sorcerer"),
            Image("poster-moana"),
            Image("poster-solo"),
            Image("poster-hocusPocus")
        ]
    }
    
    private func setupNewMovies() {
        newPosters = [
            Image("poster-mandalorian"),
            Image("poster-snowman"),
            Image("poster-sorcerer"),
            Image("poster-animalKingdom"),
            Image("poster-toyStory")
        ]
    }

    
}
