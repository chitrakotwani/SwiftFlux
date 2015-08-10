//
//  Action.swift
//  SwiftFlux
//
//  Created by Kenichi Yonekawa on 7/31/15.
//  Copyright (c) 2015 mog2dev. All rights reserved.
//

import Foundation
import Result

public protocol Action {
    typealias Payload
    func invoke(dispatcher: Dispatcher)
}

public class ActionCreator {
    private static let internalDefaultDispatcher = Dispatcher()
    public class var dispatcher: Dispatcher {
        return internalDefaultDispatcher;
    }

    public class func invoke<T: Action>(action: T) {
        action.invoke(self.dispatcher)
    }
}
