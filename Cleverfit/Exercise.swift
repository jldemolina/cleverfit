//
//  Exercise.swift
//  Clevefit
//
//  Created by Jose Luis Molina on 3/2/17.
//  Copyright © 2017 Jose Luis Molina. All rights reserved.
//

import RealmSwift
import Foundation

final class Exercise: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var information = ""
    let affectedMuscles = List<Muscle>()
    private dynamic var difficulty = ExerciseDifficulty.medium.rawValue
    var exerciseDifficulty: ExerciseDifficulty {
        get {
            return ExerciseDifficulty(rawValue: difficulty)!
        }
        set {
            difficulty = newValue.rawValue
        }
    }
}

enum ExerciseDifficulty: String {
    case low
    case medium
    case hard
}
