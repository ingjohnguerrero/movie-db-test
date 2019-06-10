//
//  NonPersistantApiContext.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

class NonPersistentApiContext: ApiContext {

    init(environment: ApiEnvironment) {
        self.environment = environment
    }

    var environment: ApiEnvironment
}
