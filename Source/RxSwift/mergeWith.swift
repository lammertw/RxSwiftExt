//
//  mergeWith.swift
//  RxSwiftExt
//
//  Created by Joan Disho on 12.05.18.
//  Copyright © 2018 RxSwiftCommunity. All rights reserved.
//

import Foundation
import RxSwift

extension Observable {
    /**
     Merges elements from the observable sequence with those of a different observable sequences into a single observable sequence.

     - parameter with: Other observables.
     - returns: The observable sequence that merges the elements of the observable sequences.
     */
    public func merge(with others: Observable<E>...) -> Observable<E> {
        return Observable.merge([self] + others)
    }
}
