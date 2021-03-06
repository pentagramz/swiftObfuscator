import Darwin
import Foundation

/// Concatenates two collections of `Trivia` into one collection.
public func + (lhs: SwiftSyntax.Trivia, rhs: SwiftSyntax.Trivia) -> SwiftSyntax.Trivia

/// Determines if two nodes are equal to each other.
public func == (lhs: Syntax, rhs: Syntax) -> Bool

public struct AccessLevelModifierSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessLevelModifierSyntax

    public var leftParen: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessLevelModifierSyntax

    public var modifier: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `modifier` replaced.
    /// - param newChild: The new `modifier` to replace the node's
    ///                   current `modifier`, if present.
    public func withModifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessLevelModifierSyntax

    public var rightParen: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessLevelModifierSyntax

    /// Determines if two `AccessLevelModifierSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AccessLevelModifierSyntax, rhs: SwiftSyntax.AccessLevelModifierSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AccessLevelModifierSyntax {

    /// Creates a `AccessLevelModifierSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AccessLevelModifierSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AccessLevelModifierSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AccessLevelModifierSyntaxBuilder) -> Swift.Void)
}

public struct AccessLevelModifierSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useModifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct AccessPathComponentSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessPathComponentSyntax

    public var trailingDot: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingDot` replaced.
    /// - param newChild: The new `trailingDot` to replace the node's
    ///                   current `trailingDot`, if present.
    public func withTrailingDot(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessPathComponentSyntax

    /// Determines if two `AccessPathComponentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AccessPathComponentSyntax, rhs: SwiftSyntax.AccessPathComponentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AccessPathComponentSyntax {

    /// Creates a `AccessPathComponentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AccessPathComponentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AccessPathComponentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AccessPathComponentSyntaxBuilder) -> Swift.Void)
}

public struct AccessPathComponentSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTrailingDot(_ node: SwiftSyntax.TokenSyntax)
}

/// `AccessPathSyntax` represents a collection of one or more
/// `AccessPathComponentSyntax` nodes. AccessPathSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct AccessPathSyntax {

    /// Creates a new `AccessPathSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `AccessPathSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.AccessPathComponentSyntax) -> SwiftSyntax.AccessPathSyntax

    /// Creates a new `AccessPathSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `AccessPathSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.AccessPathComponentSyntax) -> SwiftSyntax.AccessPathSyntax

    /// Creates a new `AccessPathSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `AccessPathSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.AccessPathComponentSyntax, at index: Int) -> SwiftSyntax.AccessPathSyntax

    /// Creates a new `AccessPathSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `AccessPathSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.AccessPathSyntax

    /// Creates a new `AccessPathSyntax` by removing the first element.
    ///
    /// - Returns: A new `AccessPathSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.AccessPathSyntax

    /// Creates a new `AccessPathSyntax` by removing the last element.
    ///
    /// - Returns: A new `AccessPathSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.AccessPathSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.AccessPathSyntaxIterator
}

/// Conformance for `AccessPathSyntax`` to the Collection protocol.
extension AccessPathSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.AccessPathComponentSyntax { get }
}

/// A type that iterates over a `AccessPathSyntax` using its indices.
public struct AccessPathSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.AccessPathComponentSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.AccessPathSyntaxIterator.Element?
}

public struct AccessorBlockSyntax : Syntax, Hashable {

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBrace` replaced.
    /// - param newChild: The new `leftBrace` to replace the node's
    ///                   current `leftBrace`, if present.
    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorBlockSyntax

    public var accessorListOrStmtList: Syntax { get }

    /// Returns a copy of the receiver with its `accessorListOrStmtList` replaced.
    /// - param newChild: The new `accessorListOrStmtList` to replace the node's
    ///                   current `accessorListOrStmtList`, if present.
    public func withAccessorListOrStmtList(_ newChild: Syntax?) -> SwiftSyntax.AccessorBlockSyntax

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBrace` replaced.
    /// - param newChild: The new `rightBrace` to replace the node's
    ///                   current `rightBrace`, if present.
    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorBlockSyntax

    /// Determines if two `AccessorBlockSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AccessorBlockSyntax, rhs: SwiftSyntax.AccessorBlockSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AccessorBlockSyntax {

    /// Creates a `AccessorBlockSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AccessorBlockSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AccessorBlockSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AccessorBlockSyntaxBuilder) -> Swift.Void)
}

extension AccessorBlockSyntax : BracedSyntax {
}

public struct AccessorBlockSyntaxBuilder {

    public mutating func useLeftBrace(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useAccessorListOrStmtList(_ node: Syntax)

    public mutating func useRightBrace(_ node: SwiftSyntax.TokenSyntax)
}

public struct AccessorDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.AccessorDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    public var modifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `modifier` replaced.
    /// - param newChild: The new `modifier` to replace the node's
    ///                   current `modifier`, if present.
    public func withModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    public var accessorKind: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `accessorKind` replaced.
    /// - param newChild: The new `accessorKind` to replace the node's
    ///                   current `accessorKind`, if present.
    public func withAccessorKind(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    public var parameter: SwiftSyntax.AccessorParameterSyntax? { get }

    /// Returns a copy of the receiver with its `parameter` replaced.
    /// - param newChild: The new `parameter` to replace the node's
    ///                   current `parameter`, if present.
    public func withParameter(_ newChild: SwiftSyntax.AccessorParameterSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    public var body: SwiftSyntax.CodeBlockSyntax? { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    /// Determines if two `AccessorDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AccessorDeclSyntax, rhs: SwiftSyntax.AccessorDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AccessorDeclSyntax {

    /// Creates a `AccessorDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AccessorDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AccessorDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AccessorDeclSyntaxBuilder) -> Swift.Void)
}

public struct AccessorDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useAccessorKind(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useParameter(_ node: SwiftSyntax.AccessorParameterSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

/// `AccessorListSyntax` represents a collection of one or more
/// `AccessorDeclSyntax` nodes. AccessorListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct AccessorListSyntax {

    /// Creates a new `AccessorListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `AccessorListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.AccessorDeclSyntax) -> SwiftSyntax.AccessorListSyntax

    /// Creates a new `AccessorListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `AccessorListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.AccessorDeclSyntax) -> SwiftSyntax.AccessorListSyntax

    /// Creates a new `AccessorListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `AccessorListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.AccessorDeclSyntax, at index: Int) -> SwiftSyntax.AccessorListSyntax

    /// Creates a new `AccessorListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `AccessorListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.AccessorListSyntax

    /// Creates a new `AccessorListSyntax` by removing the first element.
    ///
    /// - Returns: A new `AccessorListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.AccessorListSyntax

    /// Creates a new `AccessorListSyntax` by removing the last element.
    ///
    /// - Returns: A new `AccessorListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.AccessorListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.AccessorListSyntaxIterator
}

/// Conformance for `AccessorListSyntax`` to the Collection protocol.
extension AccessorListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.AccessorDeclSyntax { get }
}

/// A type that iterates over a `AccessorListSyntax` using its indices.
public struct AccessorListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.AccessorDeclSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.AccessorListSyntaxIterator.Element?
}

public struct AccessorParameterSyntax : Syntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorParameterSyntax

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorParameterSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessorParameterSyntax

    /// Determines if two `AccessorParameterSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AccessorParameterSyntax, rhs: SwiftSyntax.AccessorParameterSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AccessorParameterSyntax {

    /// Creates a `AccessorParameterSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AccessorParameterSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AccessorParameterSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AccessorParameterSyntaxBuilder) -> Swift.Void)
}

extension AccessorParameterSyntax : ParenthesizedSyntax {
}

public struct AccessorParameterSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

/// `ArrayElementListSyntax` represents a collection of one or more
/// `ArrayElementSyntax` nodes. ArrayElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ArrayElementListSyntax {

    /// Creates a new `ArrayElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ArrayElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ArrayElementSyntax) -> SwiftSyntax.ArrayElementListSyntax

    /// Creates a new `ArrayElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ArrayElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ArrayElementSyntax) -> SwiftSyntax.ArrayElementListSyntax

    /// Creates a new `ArrayElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ArrayElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ArrayElementSyntax, at index: Int) -> SwiftSyntax.ArrayElementListSyntax

    /// Creates a new `ArrayElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ArrayElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ArrayElementListSyntax

    /// Creates a new `ArrayElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ArrayElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ArrayElementListSyntax

    /// Creates a new `ArrayElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ArrayElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ArrayElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ArrayElementListSyntaxIterator
}

/// Conformance for `ArrayElementListSyntax`` to the Collection protocol.
extension ArrayElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ArrayElementSyntax { get }
}

/// A type that iterates over a `ArrayElementListSyntax` using its indices.
public struct ArrayElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ArrayElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ArrayElementListSyntaxIterator.Element?
}

public struct ArrayElementSyntax : Syntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ArrayElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayElementSyntax

    /// Determines if two `ArrayElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ArrayElementSyntax, rhs: SwiftSyntax.ArrayElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ArrayElementSyntax {

    /// Creates a `ArrayElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ArrayElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ArrayElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ArrayElementSyntaxBuilder) -> Swift.Void)
}

extension ArrayElementSyntax : WithTrailingCommaSyntax {
}

public struct ArrayElementSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct ArrayExprSyntax : ExprSyntax, Hashable {

    public var leftSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftSquare` replaced.
    /// - param newChild: The new `leftSquare` to replace the node's
    ///                   current `leftSquare`, if present.
    public func withLeftSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayExprSyntax

    public var elements: SwiftSyntax.ArrayElementListSyntax { get }

    /// Adds the provided `ArrayElement` to the node's `elements`
    /// collection.
    /// - param element: The new `ArrayElement` to add to the node's
    ///                  `elements` collection.
    /// - returns: A copy of the receiver with the provided `ArrayElement`
    ///            appended to its `elements` collection.
    public func addArrayElement(_ element: SwiftSyntax.ArrayElementSyntax) -> SwiftSyntax.ArrayExprSyntax

    /// Returns a copy of the receiver with its `elements` replaced.
    /// - param newChild: The new `elements` to replace the node's
    ///                   current `elements`, if present.
    public func withElements(_ newChild: SwiftSyntax.ArrayElementListSyntax?) -> SwiftSyntax.ArrayExprSyntax

    public var rightSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightSquare` replaced.
    /// - param newChild: The new `rightSquare` to replace the node's
    ///                   current `rightSquare`, if present.
    public func withRightSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayExprSyntax

    /// Determines if two `ArrayExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ArrayExprSyntax, rhs: SwiftSyntax.ArrayExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ArrayExprSyntax {

    /// Creates a `ArrayExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ArrayExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ArrayExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ArrayExprSyntaxBuilder) -> Swift.Void)
}

public struct ArrayExprSyntaxBuilder {

    public mutating func useLeftSquare(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addArrayElement(_ elt: SwiftSyntax.ArrayElementSyntax)

    public mutating func useRightSquare(_ node: SwiftSyntax.TokenSyntax)
}

public struct ArrayTypeSyntax : TypeSyntax, Hashable {

    public var leftSquareBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftSquareBracket` replaced.
    /// - param newChild: The new `leftSquareBracket` to replace the node's
    ///                   current `leftSquareBracket`, if present.
    public func withLeftSquareBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayTypeSyntax

    public var elementType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `elementType` replaced.
    /// - param newChild: The new `elementType` to replace the node's
    ///                   current `elementType`, if present.
    public func withElementType(_ newChild: TypeSyntax?) -> SwiftSyntax.ArrayTypeSyntax

    public var rightSquareBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightSquareBracket` replaced.
    /// - param newChild: The new `rightSquareBracket` to replace the node's
    ///                   current `rightSquareBracket`, if present.
    public func withRightSquareBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayTypeSyntax

    /// Determines if two `ArrayTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ArrayTypeSyntax, rhs: SwiftSyntax.ArrayTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ArrayTypeSyntax {

    /// Creates a `ArrayTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ArrayTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ArrayTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ArrayTypeSyntaxBuilder) -> Swift.Void)
}

public struct ArrayTypeSyntaxBuilder {

    public mutating func useLeftSquareBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useElementType(_ node: TypeSyntax)

    public mutating func useRightSquareBracket(_ node: SwiftSyntax.TokenSyntax)
}

public struct ArrowExprSyntax : ExprSyntax, Hashable {

    public var throwsToken: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `throwsToken` replaced.
    /// - param newChild: The new `throwsToken` to replace the node's
    ///                   current `throwsToken`, if present.
    public func withThrowsToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrowExprSyntax

    public var arrowToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `arrowToken` replaced.
    /// - param newChild: The new `arrowToken` to replace the node's
    ///                   current `arrowToken`, if present.
    public func withArrowToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrowExprSyntax

    /// Determines if two `ArrowExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ArrowExprSyntax, rhs: SwiftSyntax.ArrowExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ArrowExprSyntax {

    /// Creates a `ArrowExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ArrowExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ArrowExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ArrowExprSyntaxBuilder) -> Swift.Void)
}

public struct ArrowExprSyntaxBuilder {

    public mutating func useThrowsToken(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useArrowToken(_ node: SwiftSyntax.TokenSyntax)
}

public struct AsExprSyntax : ExprSyntax, Hashable {

    public var asTok: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `asTok` replaced.
    /// - param newChild: The new `asTok` to replace the node's
    ///                   current `asTok`, if present.
    public func withAsTok(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AsExprSyntax

    public var questionOrExclamationMark: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `questionOrExclamationMark` replaced.
    /// - param newChild: The new `questionOrExclamationMark` to replace the node's
    ///                   current `questionOrExclamationMark`, if present.
    public func withQuestionOrExclamationMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AsExprSyntax

    public var typeName: TypeSyntax { get }

    /// Returns a copy of the receiver with its `typeName` replaced.
    /// - param newChild: The new `typeName` to replace the node's
    ///                   current `typeName`, if present.
    public func withTypeName(_ newChild: TypeSyntax?) -> SwiftSyntax.AsExprSyntax

    /// Determines if two `AsExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AsExprSyntax, rhs: SwiftSyntax.AsExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AsExprSyntax {

    /// Creates a `AsExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AsExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AsExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AsExprSyntaxBuilder) -> Swift.Void)
}

public struct AsExprSyntaxBuilder {

    public mutating func useAsTok(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useQuestionOrExclamationMark(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTypeName(_ node: TypeSyntax)
}

public struct AsTypePatternSyntax : PatternSyntax, Hashable {

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.AsTypePatternSyntax

    public var asKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `asKeyword` replaced.
    /// - param newChild: The new `asKeyword` to replace the node's
    ///                   current `asKeyword`, if present.
    public func withAsKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AsTypePatternSyntax

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.AsTypePatternSyntax

    /// Determines if two `AsTypePatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AsTypePatternSyntax, rhs: SwiftSyntax.AsTypePatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AsTypePatternSyntax {

    /// Creates a `AsTypePatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AsTypePatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AsTypePatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AsTypePatternSyntaxBuilder) -> Swift.Void)
}

public struct AsTypePatternSyntaxBuilder {

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useAsKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useType(_ node: TypeSyntax)
}

public struct AssignmentExprSyntax : ExprSyntax, Hashable {

    public var assignToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `assignToken` replaced.
    /// - param newChild: The new `assignToken` to replace the node's
    ///                   current `assignToken`, if present.
    public func withAssignToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AssignmentExprSyntax

    /// Determines if two `AssignmentExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AssignmentExprSyntax, rhs: SwiftSyntax.AssignmentExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AssignmentExprSyntax {

    /// Creates a `AssignmentExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AssignmentExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AssignmentExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AssignmentExprSyntaxBuilder) -> Swift.Void)
}

public struct AssignmentExprSyntaxBuilder {

    public mutating func useAssignToken(_ node: SwiftSyntax.TokenSyntax)
}

public struct AssociatedtypeDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.AssociatedtypeDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var associatedtypeKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `associatedtypeKeyword` replaced.
    /// - param newChild: The new `associatedtypeKeyword` to replace the node's
    ///                   current `associatedtypeKeyword`, if present.
    public func withAssociatedtypeKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax? { get }

    /// Returns a copy of the receiver with its `inheritanceClause` replaced.
    /// - param newChild: The new `inheritanceClause` to replace the node's
    ///                   current `inheritanceClause`, if present.
    public func withInheritanceClause(_ newChild: SwiftSyntax.TypeInheritanceClauseSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var initializer: SwiftSyntax.TypeInitializerClauseSyntax? { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.TypeInitializerClauseSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    /// Determines if two `AssociatedtypeDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AssociatedtypeDeclSyntax, rhs: SwiftSyntax.AssociatedtypeDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AssociatedtypeDeclSyntax {

    /// Creates a `AssociatedtypeDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AssociatedtypeDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AssociatedtypeDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AssociatedtypeDeclSyntaxBuilder) -> Swift.Void)
}

extension AssociatedtypeDeclSyntax : IdentifiedDeclSyntax {
}

public struct AssociatedtypeDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useAssociatedtypeKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useInheritanceClause(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.TypeInitializerClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)
}

/// `AttributeListSyntax` represents a collection of one or more
/// `AttributeSyntax` nodes. AttributeListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct AttributeListSyntax {

    /// Creates a new `AttributeListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `AttributeListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.AttributeListSyntax

    /// Creates a new `AttributeListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `AttributeListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.AttributeListSyntax

    /// Creates a new `AttributeListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `AttributeListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.AttributeSyntax, at index: Int) -> SwiftSyntax.AttributeListSyntax

    /// Creates a new `AttributeListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `AttributeListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.AttributeListSyntax

    /// Creates a new `AttributeListSyntax` by removing the first element.
    ///
    /// - Returns: A new `AttributeListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.AttributeListSyntax

    /// Creates a new `AttributeListSyntax` by removing the last element.
    ///
    /// - Returns: A new `AttributeListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.AttributeListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.AttributeListSyntaxIterator
}

/// Conformance for `AttributeListSyntax`` to the Collection protocol.
extension AttributeListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.AttributeSyntax { get }
}

/// A type that iterates over a `AttributeListSyntax` using its indices.
public struct AttributeListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.AttributeSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.AttributeListSyntaxIterator.Element?
}

public struct AttributeSyntax : Syntax, Hashable {

    public var atSignToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `atSignToken` replaced.
    /// - param newChild: The new `atSignToken` to replace the node's
    ///                   current `atSignToken`, if present.
    public func withAtSignToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AttributeSyntax

    public var attributeName: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `attributeName` replaced.
    /// - param newChild: The new `attributeName` to replace the node's
    ///                   current `attributeName`, if present.
    public func withAttributeName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AttributeSyntax

    public var balancedTokens: SwiftSyntax.TokenListSyntax { get }

    /// Adds the provided `Token` to the node's `balancedTokens`
    /// collection.
    /// - param element: The new `Token` to add to the node's
    ///                  `balancedTokens` collection.
    /// - returns: A copy of the receiver with the provided `Token`
    ///            appended to its `balancedTokens` collection.
    public func addToken(_ element: SwiftSyntax.TokenSyntax) -> SwiftSyntax.AttributeSyntax

    /// Returns a copy of the receiver with its `balancedTokens` replaced.
    /// - param newChild: The new `balancedTokens` to replace the node's
    ///                   current `balancedTokens`, if present.
    public func withBalancedTokens(_ newChild: SwiftSyntax.TokenListSyntax?) -> SwiftSyntax.AttributeSyntax

    /// Determines if two `AttributeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AttributeSyntax, rhs: SwiftSyntax.AttributeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AttributeSyntax {

    /// Creates a `AttributeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AttributeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AttributeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AttributeSyntaxBuilder) -> Swift.Void)
}

public struct AttributeSyntaxBuilder {

    public mutating func useAtSignToken(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useAttributeName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addToken(_ elt: SwiftSyntax.TokenSyntax)
}

public struct AttributedTypeSyntax : TypeSyntax, Hashable {

    public var specifier: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `specifier` replaced.
    /// - param newChild: The new `specifier` to replace the node's
    ///                   current `specifier`, if present.
    public func withSpecifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AttributedTypeSyntax

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.AttributedTypeSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.AttributedTypeSyntax

    public var baseType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `baseType` replaced.
    /// - param newChild: The new `baseType` to replace the node's
    ///                   current `baseType`, if present.
    public func withBaseType(_ newChild: TypeSyntax?) -> SwiftSyntax.AttributedTypeSyntax

    /// Determines if two `AttributedTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AttributedTypeSyntax, rhs: SwiftSyntax.AttributedTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AttributedTypeSyntax {

    /// Creates a `AttributedTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AttributedTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AttributedTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AttributedTypeSyntaxBuilder) -> Swift.Void)
}

public struct AttributedTypeSyntaxBuilder {

    public mutating func useSpecifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useBaseType(_ node: TypeSyntax)
}

public struct AvailabilityConditionSyntax : Syntax, Hashable {

    public var poundAvailableKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundAvailableKeyword` replaced.
    /// - param newChild: The new `poundAvailableKeyword` to replace the node's
    ///                   current `poundAvailableKeyword`, if present.
    public func withPoundAvailableKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AvailabilityConditionSyntax

    public var arguments: SwiftSyntax.TokenListSyntax { get }

    /// Adds the provided `Token` to the node's `arguments`
    /// collection.
    /// - param element: The new `Token` to add to the node's
    ///                  `arguments` collection.
    /// - returns: A copy of the receiver with the provided `Token`
    ///            appended to its `arguments` collection.
    public func addToken(_ element: SwiftSyntax.TokenSyntax) -> SwiftSyntax.AvailabilityConditionSyntax

    /// Returns a copy of the receiver with its `arguments` replaced.
    /// - param newChild: The new `arguments` to replace the node's
    ///                   current `arguments`, if present.
    public func withArguments(_ newChild: SwiftSyntax.TokenListSyntax?) -> SwiftSyntax.AvailabilityConditionSyntax

    /// Determines if two `AvailabilityConditionSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.AvailabilityConditionSyntax, rhs: SwiftSyntax.AvailabilityConditionSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension AvailabilityConditionSyntax {

    /// Creates a `AvailabilityConditionSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `AvailabilityConditionSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `AvailabilityConditionSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.AvailabilityConditionSyntaxBuilder) -> Swift.Void)
}

public struct AvailabilityConditionSyntaxBuilder {

    public mutating func usePoundAvailableKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addToken(_ elt: SwiftSyntax.TokenSyntax)
}

public struct BinaryOperatorExprSyntax : ExprSyntax, Hashable {

    public var operatorToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `operatorToken` replaced.
    /// - param newChild: The new `operatorToken` to replace the node's
    ///                   current `operatorToken`, if present.
    public func withOperatorToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.BinaryOperatorExprSyntax

    /// Determines if two `BinaryOperatorExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.BinaryOperatorExprSyntax, rhs: SwiftSyntax.BinaryOperatorExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension BinaryOperatorExprSyntax {

    /// Creates a `BinaryOperatorExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `BinaryOperatorExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `BinaryOperatorExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.BinaryOperatorExprSyntaxBuilder) -> Swift.Void)
}

public struct BinaryOperatorExprSyntaxBuilder {

    public mutating func useOperatorToken(_ node: SwiftSyntax.TokenSyntax)
}

public struct BooleanLiteralExprSyntax : ExprSyntax, Hashable {

    public var booleanLiteral: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `booleanLiteral` replaced.
    /// - param newChild: The new `booleanLiteral` to replace the node's
    ///                   current `booleanLiteral`, if present.
    public func withBooleanLiteral(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.BooleanLiteralExprSyntax

    /// Determines if two `BooleanLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.BooleanLiteralExprSyntax, rhs: SwiftSyntax.BooleanLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension BooleanLiteralExprSyntax {

    /// Creates a `BooleanLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `BooleanLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `BooleanLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.BooleanLiteralExprSyntaxBuilder) -> Swift.Void)
}

public struct BooleanLiteralExprSyntaxBuilder {

    public mutating func useBooleanLiteral(_ node: SwiftSyntax.TokenSyntax)
}

public protocol BracedSyntax {

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> Self

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> Self
}

public struct BreakStmtSyntax : StmtSyntax, Hashable {

    public var breakKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `breakKeyword` replaced.
    /// - param newChild: The new `breakKeyword` to replace the node's
    ///                   current `breakKeyword`, if present.
    public func withBreakKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.BreakStmtSyntax

    public var label: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `label` replaced.
    /// - param newChild: The new `label` to replace the node's
    ///                   current `label`, if present.
    public func withLabel(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.BreakStmtSyntax

    /// Determines if two `BreakStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.BreakStmtSyntax, rhs: SwiftSyntax.BreakStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension BreakStmtSyntax {

    /// Creates a `BreakStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `BreakStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `BreakStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.BreakStmtSyntaxBuilder) -> Swift.Void)
}

public struct BreakStmtSyntaxBuilder {

    public mutating func useBreakKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabel(_ node: SwiftSyntax.TokenSyntax)
}

/// `CaseItemListSyntax` represents a collection of one or more
/// `CaseItemSyntax` nodes. CaseItemListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct CaseItemListSyntax {

    /// Creates a new `CaseItemListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `CaseItemListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.CaseItemSyntax) -> SwiftSyntax.CaseItemListSyntax

    /// Creates a new `CaseItemListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `CaseItemListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.CaseItemSyntax) -> SwiftSyntax.CaseItemListSyntax

    /// Creates a new `CaseItemListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `CaseItemListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.CaseItemSyntax, at index: Int) -> SwiftSyntax.CaseItemListSyntax

    /// Creates a new `CaseItemListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `CaseItemListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.CaseItemListSyntax

    /// Creates a new `CaseItemListSyntax` by removing the first element.
    ///
    /// - Returns: A new `CaseItemListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.CaseItemListSyntax

    /// Creates a new `CaseItemListSyntax` by removing the last element.
    ///
    /// - Returns: A new `CaseItemListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.CaseItemListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.CaseItemListSyntaxIterator
}

/// Conformance for `CaseItemListSyntax`` to the Collection protocol.
extension CaseItemListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.CaseItemSyntax { get }
}

/// A type that iterates over a `CaseItemListSyntax` using its indices.
public struct CaseItemListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.CaseItemSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.CaseItemListSyntaxIterator.Element?
}

public struct CaseItemSyntax : Syntax, Hashable {

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.CaseItemSyntax

    public var whereClause: SwiftSyntax.WhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `whereClause` replaced.
    /// - param newChild: The new `whereClause` to replace the node's
    ///                   current `whereClause`, if present.
    public func withWhereClause(_ newChild: SwiftSyntax.WhereClauseSyntax?) -> SwiftSyntax.CaseItemSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CaseItemSyntax

    /// Determines if two `CaseItemSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CaseItemSyntax, rhs: SwiftSyntax.CaseItemSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CaseItemSyntax {

    /// Creates a `CaseItemSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CaseItemSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CaseItemSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CaseItemSyntaxBuilder) -> Swift.Void)
}

extension CaseItemSyntax : WithTrailingCommaSyntax {
}

public struct CaseItemSyntaxBuilder {

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useWhereClause(_ node: SwiftSyntax.WhereClauseSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

/// `CatchClauseListSyntax` represents a collection of one or more
/// `CatchClauseSyntax` nodes. CatchClauseListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct CatchClauseListSyntax {

    /// Creates a new `CatchClauseListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `CatchClauseListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.CatchClauseSyntax) -> SwiftSyntax.CatchClauseListSyntax

    /// Creates a new `CatchClauseListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `CatchClauseListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.CatchClauseSyntax) -> SwiftSyntax.CatchClauseListSyntax

    /// Creates a new `CatchClauseListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `CatchClauseListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.CatchClauseSyntax, at index: Int) -> SwiftSyntax.CatchClauseListSyntax

    /// Creates a new `CatchClauseListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `CatchClauseListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.CatchClauseListSyntax

    /// Creates a new `CatchClauseListSyntax` by removing the first element.
    ///
    /// - Returns: A new `CatchClauseListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.CatchClauseListSyntax

    /// Creates a new `CatchClauseListSyntax` by removing the last element.
    ///
    /// - Returns: A new `CatchClauseListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.CatchClauseListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.CatchClauseListSyntaxIterator
}

/// Conformance for `CatchClauseListSyntax`` to the Collection protocol.
extension CatchClauseListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.CatchClauseSyntax { get }
}

/// A type that iterates over a `CatchClauseListSyntax` using its indices.
public struct CatchClauseListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.CatchClauseSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.CatchClauseListSyntaxIterator.Element?
}

public struct CatchClauseSyntax : Syntax, Hashable {

    public var catchKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `catchKeyword` replaced.
    /// - param newChild: The new `catchKeyword` to replace the node's
    ///                   current `catchKeyword`, if present.
    public func withCatchKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CatchClauseSyntax

    public var pattern: PatternSyntax? { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.CatchClauseSyntax

    public var whereClause: SwiftSyntax.WhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `whereClause` replaced.
    /// - param newChild: The new `whereClause` to replace the node's
    ///                   current `whereClause`, if present.
    public func withWhereClause(_ newChild: SwiftSyntax.WhereClauseSyntax?) -> SwiftSyntax.CatchClauseSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.CatchClauseSyntax

    /// Determines if two `CatchClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CatchClauseSyntax, rhs: SwiftSyntax.CatchClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CatchClauseSyntax {

    /// Creates a `CatchClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CatchClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CatchClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CatchClauseSyntaxBuilder) -> Swift.Void)
}

public struct CatchClauseSyntaxBuilder {

    public mutating func useCatchKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useWhereClause(_ node: SwiftSyntax.WhereClauseSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct ClassDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.ClassDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var classKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `classKeyword` replaced.
    /// - param newChild: The new `classKeyword` to replace the node's
    ///                   current `classKeyword`, if present.
    public func withClassKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax? { get }

    /// Returns a copy of the receiver with its `inheritanceClause` replaced.
    /// - param newChild: The new `inheritanceClause` to replace the node's
    ///                   current `inheritanceClause`, if present.
    public func withInheritanceClause(_ newChild: SwiftSyntax.TypeInheritanceClauseSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.ClassDeclSyntax

    public var members: SwiftSyntax.MemberDeclBlockSyntax { get }

    /// Returns a copy of the receiver with its `members` replaced.
    /// - param newChild: The new `members` to replace the node's
    ///                   current `members`, if present.
    public func withMembers(_ newChild: SwiftSyntax.MemberDeclBlockSyntax?) -> SwiftSyntax.ClassDeclSyntax

    /// Determines if two `ClassDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClassDeclSyntax, rhs: SwiftSyntax.ClassDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClassDeclSyntax {

    /// Creates a `ClassDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClassDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClassDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClassDeclSyntaxBuilder) -> Swift.Void)
}

extension ClassDeclSyntax : DeclGroupSyntax, IdentifiedDeclSyntax {
}

public struct ClassDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useClassKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useInheritanceClause(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useMembers(_ node: SwiftSyntax.MemberDeclBlockSyntax)
}

/// `ClosureCaptureItemListSyntax` represents a collection of one or more
/// `ClosureCaptureItemSyntax` nodes. ClosureCaptureItemListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ClosureCaptureItemListSyntax {

    /// Creates a new `ClosureCaptureItemListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ClosureCaptureItemListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ClosureCaptureItemSyntax) -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Creates a new `ClosureCaptureItemListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ClosureCaptureItemListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ClosureCaptureItemSyntax) -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Creates a new `ClosureCaptureItemListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ClosureCaptureItemListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ClosureCaptureItemSyntax, at index: Int) -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Creates a new `ClosureCaptureItemListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ClosureCaptureItemListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Creates a new `ClosureCaptureItemListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ClosureCaptureItemListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Creates a new `ClosureCaptureItemListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ClosureCaptureItemListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ClosureCaptureItemListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ClosureCaptureItemListSyntaxIterator
}

/// Conformance for `ClosureCaptureItemListSyntax`` to the Collection protocol.
extension ClosureCaptureItemListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ClosureCaptureItemSyntax { get }
}

/// A type that iterates over a `ClosureCaptureItemListSyntax` using its indices.
public struct ClosureCaptureItemListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ClosureCaptureItemSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ClosureCaptureItemListSyntaxIterator.Element?
}

public struct ClosureCaptureItemSyntax : Syntax, Hashable {

    public var specifier: SwiftSyntax.TokenListSyntax? { get }

    /// Adds the provided `Token` to the node's `specifier`
    /// collection.
    /// - param element: The new `Token` to add to the node's
    ///                  `specifier` collection.
    /// - returns: A copy of the receiver with the provided `Token`
    ///            appended to its `specifier` collection.
    public func addToken(_ element: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ClosureCaptureItemSyntax

    /// Returns a copy of the receiver with its `specifier` replaced.
    /// - param newChild: The new `specifier` to replace the node's
    ///                   current `specifier`, if present.
    public func withSpecifier(_ newChild: SwiftSyntax.TokenListSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    public var name: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    public var assignToken: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `assignToken` replaced.
    /// - param newChild: The new `assignToken` to replace the node's
    ///                   current `assignToken`, if present.
    public func withAssignToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    /// Determines if two `ClosureCaptureItemSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClosureCaptureItemSyntax, rhs: SwiftSyntax.ClosureCaptureItemSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClosureCaptureItemSyntax {

    /// Creates a `ClosureCaptureItemSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClosureCaptureItemSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClosureCaptureItemSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClosureCaptureItemSyntaxBuilder) -> Swift.Void)
}

extension ClosureCaptureItemSyntax : WithTrailingCommaSyntax {
}

public struct ClosureCaptureItemSyntaxBuilder {

    public mutating func addToken(_ elt: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useAssignToken(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct ClosureCaptureSignatureSyntax : Syntax, Hashable {

    public var leftSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftSquare` replaced.
    /// - param newChild: The new `leftSquare` to replace the node's
    ///                   current `leftSquare`, if present.
    public func withLeftSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureSignatureSyntax

    public var items: SwiftSyntax.ClosureCaptureItemListSyntax? { get }

    /// Adds the provided `ClosureCaptureItem` to the node's `items`
    /// collection.
    /// - param element: The new `ClosureCaptureItem` to add to the node's
    ///                  `items` collection.
    /// - returns: A copy of the receiver with the provided `ClosureCaptureItem`
    ///            appended to its `items` collection.
    public func addClosureCaptureItem(_ element: SwiftSyntax.ClosureCaptureItemSyntax) -> SwiftSyntax.ClosureCaptureSignatureSyntax

    /// Returns a copy of the receiver with its `items` replaced.
    /// - param newChild: The new `items` to replace the node's
    ///                   current `items`, if present.
    public func withItems(_ newChild: SwiftSyntax.ClosureCaptureItemListSyntax?) -> SwiftSyntax.ClosureCaptureSignatureSyntax

    public var rightSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightSquare` replaced.
    /// - param newChild: The new `rightSquare` to replace the node's
    ///                   current `rightSquare`, if present.
    public func withRightSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureSignatureSyntax

    /// Determines if two `ClosureCaptureSignatureSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClosureCaptureSignatureSyntax, rhs: SwiftSyntax.ClosureCaptureSignatureSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClosureCaptureSignatureSyntax {

    /// Creates a `ClosureCaptureSignatureSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClosureCaptureSignatureSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClosureCaptureSignatureSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClosureCaptureSignatureSyntaxBuilder) -> Swift.Void)
}

public struct ClosureCaptureSignatureSyntaxBuilder {

    public mutating func useLeftSquare(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addClosureCaptureItem(_ elt: SwiftSyntax.ClosureCaptureItemSyntax)

    public mutating func useRightSquare(_ node: SwiftSyntax.TokenSyntax)
}

public struct ClosureExprSyntax : ExprSyntax, Hashable {

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBrace` replaced.
    /// - param newChild: The new `leftBrace` to replace the node's
    ///                   current `leftBrace`, if present.
    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureExprSyntax

    public var signature: SwiftSyntax.ClosureSignatureSyntax? { get }

    /// Returns a copy of the receiver with its `signature` replaced.
    /// - param newChild: The new `signature` to replace the node's
    ///                   current `signature`, if present.
    public func withSignature(_ newChild: SwiftSyntax.ClosureSignatureSyntax?) -> SwiftSyntax.ClosureExprSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.ClosureExprSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.ClosureExprSyntax

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBrace` replaced.
    /// - param newChild: The new `rightBrace` to replace the node's
    ///                   current `rightBrace`, if present.
    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureExprSyntax

    /// Determines if two `ClosureExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClosureExprSyntax, rhs: SwiftSyntax.ClosureExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClosureExprSyntax {

    /// Creates a `ClosureExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClosureExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClosureExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClosureExprSyntaxBuilder) -> Swift.Void)
}

extension ClosureExprSyntax : BracedSyntax, WithStatementsSyntax {
}

public struct ClosureExprSyntaxBuilder {

    public mutating func useLeftBrace(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSignature(_ node: SwiftSyntax.ClosureSignatureSyntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)

    public mutating func useRightBrace(_ node: SwiftSyntax.TokenSyntax)
}

/// `ClosureParamListSyntax` represents a collection of one or more
/// `ClosureParamSyntax` nodes. ClosureParamListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ClosureParamListSyntax {

    /// Creates a new `ClosureParamListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ClosureParamListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ClosureParamSyntax) -> SwiftSyntax.ClosureParamListSyntax

    /// Creates a new `ClosureParamListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ClosureParamListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ClosureParamSyntax) -> SwiftSyntax.ClosureParamListSyntax

    /// Creates a new `ClosureParamListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ClosureParamListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ClosureParamSyntax, at index: Int) -> SwiftSyntax.ClosureParamListSyntax

    /// Creates a new `ClosureParamListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ClosureParamListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ClosureParamListSyntax

    /// Creates a new `ClosureParamListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ClosureParamListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ClosureParamListSyntax

    /// Creates a new `ClosureParamListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ClosureParamListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ClosureParamListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ClosureParamListSyntaxIterator
}

/// Conformance for `ClosureParamListSyntax`` to the Collection protocol.
extension ClosureParamListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ClosureParamSyntax { get }
}

/// A type that iterates over a `ClosureParamListSyntax` using its indices.
public struct ClosureParamListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ClosureParamSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ClosureParamListSyntaxIterator.Element?
}

public struct ClosureParamSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureParamSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureParamSyntax

    /// Determines if two `ClosureParamSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClosureParamSyntax, rhs: SwiftSyntax.ClosureParamSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClosureParamSyntax {

    /// Creates a `ClosureParamSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClosureParamSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClosureParamSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClosureParamSyntaxBuilder) -> Swift.Void)
}

extension ClosureParamSyntax : WithTrailingCommaSyntax {
}

public struct ClosureParamSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct ClosureSignatureSyntax : Syntax, Hashable {

    public var capture: SwiftSyntax.ClosureCaptureSignatureSyntax? { get }

    /// Returns a copy of the receiver with its `capture` replaced.
    /// - param newChild: The new `capture` to replace the node's
    ///                   current `capture`, if present.
    public func withCapture(_ newChild: SwiftSyntax.ClosureCaptureSignatureSyntax?) -> SwiftSyntax.ClosureSignatureSyntax

    public var input: Syntax? { get }

    /// Returns a copy of the receiver with its `input` replaced.
    /// - param newChild: The new `input` to replace the node's
    ///                   current `input`, if present.
    public func withInput(_ newChild: Syntax?) -> SwiftSyntax.ClosureSignatureSyntax

    public var throwsTok: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `throwsTok` replaced.
    /// - param newChild: The new `throwsTok` to replace the node's
    ///                   current `throwsTok`, if present.
    public func withThrowsTok(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureSignatureSyntax

    public var output: SwiftSyntax.ReturnClauseSyntax? { get }

    /// Returns a copy of the receiver with its `output` replaced.
    /// - param newChild: The new `output` to replace the node's
    ///                   current `output`, if present.
    public func withOutput(_ newChild: SwiftSyntax.ReturnClauseSyntax?) -> SwiftSyntax.ClosureSignatureSyntax

    public var inTok: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `inTok` replaced.
    /// - param newChild: The new `inTok` to replace the node's
    ///                   current `inTok`, if present.
    public func withInTok(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureSignatureSyntax

    /// Determines if two `ClosureSignatureSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ClosureSignatureSyntax, rhs: SwiftSyntax.ClosureSignatureSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ClosureSignatureSyntax {

    /// Creates a `ClosureSignatureSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ClosureSignatureSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ClosureSignatureSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ClosureSignatureSyntaxBuilder) -> Swift.Void)
}

public struct ClosureSignatureSyntaxBuilder {

    public mutating func useCapture(_ node: SwiftSyntax.ClosureCaptureSignatureSyntax)

    public mutating func useInput(_ node: Syntax)

    public mutating func useThrowsTok(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useOutput(_ node: SwiftSyntax.ReturnClauseSyntax)

    public mutating func useInTok(_ node: SwiftSyntax.TokenSyntax)
}

/// `CodeBlockItemListSyntax` represents a collection of one or more
/// `CodeBlockItemSyntax` nodes. CodeBlockItemListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct CodeBlockItemListSyntax {

    /// Creates a new `CodeBlockItemListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `CodeBlockItemListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.CodeBlockItemListSyntax

    /// Creates a new `CodeBlockItemListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `CodeBlockItemListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.CodeBlockItemListSyntax

    /// Creates a new `CodeBlockItemListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `CodeBlockItemListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.CodeBlockItemSyntax, at index: Int) -> SwiftSyntax.CodeBlockItemListSyntax

    /// Creates a new `CodeBlockItemListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `CodeBlockItemListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.CodeBlockItemListSyntax

    /// Creates a new `CodeBlockItemListSyntax` by removing the first element.
    ///
    /// - Returns: A new `CodeBlockItemListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.CodeBlockItemListSyntax

    /// Creates a new `CodeBlockItemListSyntax` by removing the last element.
    ///
    /// - Returns: A new `CodeBlockItemListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.CodeBlockItemListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.CodeBlockItemListSyntaxIterator
}

/// Conformance for `CodeBlockItemListSyntax`` to the Collection protocol.
extension CodeBlockItemListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.CodeBlockItemSyntax { get }
}

/// A type that iterates over a `CodeBlockItemListSyntax` using its indices.
public struct CodeBlockItemListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.CodeBlockItemSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.CodeBlockItemListSyntaxIterator.Element?
}

/// 
/// A CodeBlockItem is any Syntax node that appears on its own line inside
/// a CodeBlock.
/// 
public struct CodeBlockItemSyntax : Syntax, Hashable {

    /// The underlying node inside the code block.
    public var item: Syntax { get }

    /// Returns a copy of the receiver with its `item` replaced.
    /// - param newChild: The new `item` to replace the node's
    ///                   current `item`, if present.
    public func withItem(_ newChild: Syntax?) -> SwiftSyntax.CodeBlockItemSyntax

    /// 
    /// If present, the trailing semicolon at the end of the item.
    /// 
    public var semicolon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `semicolon` replaced.
    /// - param newChild: The new `semicolon` to replace the node's
    ///                   current `semicolon`, if present.
    public func withSemicolon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CodeBlockItemSyntax

    /// Determines if two `CodeBlockItemSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CodeBlockItemSyntax, rhs: SwiftSyntax.CodeBlockItemSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CodeBlockItemSyntax {

    /// Creates a `CodeBlockItemSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CodeBlockItemSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CodeBlockItemSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CodeBlockItemSyntaxBuilder) -> Swift.Void)
}

public struct CodeBlockItemSyntaxBuilder {

    public mutating func useItem(_ node: Syntax)

    public mutating func useSemicolon(_ node: SwiftSyntax.TokenSyntax)
}

public struct CodeBlockSyntax : Syntax, Hashable {

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBrace` replaced.
    /// - param newChild: The new `leftBrace` to replace the node's
    ///                   current `leftBrace`, if present.
    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CodeBlockSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.CodeBlockSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.CodeBlockSyntax

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBrace` replaced.
    /// - param newChild: The new `rightBrace` to replace the node's
    ///                   current `rightBrace`, if present.
    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CodeBlockSyntax

    /// Determines if two `CodeBlockSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CodeBlockSyntax, rhs: SwiftSyntax.CodeBlockSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CodeBlockSyntax {

    /// Creates a `CodeBlockSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CodeBlockSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CodeBlockSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CodeBlockSyntaxBuilder) -> Swift.Void)
}

extension CodeBlockSyntax : BracedSyntax, WithStatementsSyntax {
}

public struct CodeBlockSyntaxBuilder {

    public mutating func useLeftBrace(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)

    public mutating func useRightBrace(_ node: SwiftSyntax.TokenSyntax)
}

/// `CompositionTypeElementListSyntax` represents a collection of one or more
/// `CompositionTypeElementSyntax` nodes. CompositionTypeElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct CompositionTypeElementListSyntax {

    /// Creates a new `CompositionTypeElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `CompositionTypeElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.CompositionTypeElementSyntax) -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Creates a new `CompositionTypeElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `CompositionTypeElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.CompositionTypeElementSyntax) -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Creates a new `CompositionTypeElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `CompositionTypeElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.CompositionTypeElementSyntax, at index: Int) -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Creates a new `CompositionTypeElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `CompositionTypeElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Creates a new `CompositionTypeElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `CompositionTypeElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Creates a new `CompositionTypeElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `CompositionTypeElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.CompositionTypeElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.CompositionTypeElementListSyntaxIterator
}

/// Conformance for `CompositionTypeElementListSyntax`` to the Collection protocol.
extension CompositionTypeElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.CompositionTypeElementSyntax { get }
}

/// A type that iterates over a `CompositionTypeElementListSyntax` using its indices.
public struct CompositionTypeElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.CompositionTypeElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.CompositionTypeElementListSyntaxIterator.Element?
}

public struct CompositionTypeElementSyntax : Syntax, Hashable {

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.CompositionTypeElementSyntax

    public var ampersand: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `ampersand` replaced.
    /// - param newChild: The new `ampersand` to replace the node's
    ///                   current `ampersand`, if present.
    public func withAmpersand(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CompositionTypeElementSyntax

    /// Determines if two `CompositionTypeElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CompositionTypeElementSyntax, rhs: SwiftSyntax.CompositionTypeElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CompositionTypeElementSyntax {

    /// Creates a `CompositionTypeElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CompositionTypeElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CompositionTypeElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CompositionTypeElementSyntaxBuilder) -> Swift.Void)
}

public struct CompositionTypeElementSyntaxBuilder {

    public mutating func useType(_ node: TypeSyntax)

    public mutating func useAmpersand(_ node: SwiftSyntax.TokenSyntax)
}

public struct CompositionTypeSyntax : TypeSyntax, Hashable {

    public var elements: SwiftSyntax.CompositionTypeElementListSyntax { get }

    /// Adds the provided `CompositionTypeElement` to the node's `elements`
    /// collection.
    /// - param element: The new `CompositionTypeElement` to add to the node's
    ///                  `elements` collection.
    /// - returns: A copy of the receiver with the provided `CompositionTypeElement`
    ///            appended to its `elements` collection.
    public func addCompositionTypeElement(_ element: SwiftSyntax.CompositionTypeElementSyntax) -> SwiftSyntax.CompositionTypeSyntax

    /// Returns a copy of the receiver with its `elements` replaced.
    /// - param newChild: The new `elements` to replace the node's
    ///                   current `elements`, if present.
    public func withElements(_ newChild: SwiftSyntax.CompositionTypeElementListSyntax?) -> SwiftSyntax.CompositionTypeSyntax

    /// Determines if two `CompositionTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.CompositionTypeSyntax, rhs: SwiftSyntax.CompositionTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension CompositionTypeSyntax {

    /// Creates a `CompositionTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `CompositionTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `CompositionTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.CompositionTypeSyntaxBuilder) -> Swift.Void)
}

public struct CompositionTypeSyntaxBuilder {

    public mutating func addCompositionTypeElement(_ elt: SwiftSyntax.CompositionTypeElementSyntax)
}

/// `ConditionElementListSyntax` represents a collection of one or more
/// `ConditionElementSyntax` nodes. ConditionElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ConditionElementListSyntax {

    /// Creates a new `ConditionElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ConditionElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ConditionElementSyntax) -> SwiftSyntax.ConditionElementListSyntax

    /// Creates a new `ConditionElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ConditionElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ConditionElementSyntax) -> SwiftSyntax.ConditionElementListSyntax

    /// Creates a new `ConditionElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ConditionElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ConditionElementSyntax, at index: Int) -> SwiftSyntax.ConditionElementListSyntax

    /// Creates a new `ConditionElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ConditionElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ConditionElementListSyntax

    /// Creates a new `ConditionElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ConditionElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ConditionElementListSyntax

    /// Creates a new `ConditionElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ConditionElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ConditionElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ConditionElementListSyntaxIterator
}

/// Conformance for `ConditionElementListSyntax`` to the Collection protocol.
extension ConditionElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ConditionElementSyntax { get }
}

/// A type that iterates over a `ConditionElementListSyntax` using its indices.
public struct ConditionElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ConditionElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ConditionElementListSyntaxIterator.Element?
}

public struct ConditionElementSyntax : Syntax, Hashable {

    public var condition: Syntax { get }

    /// Returns a copy of the receiver with its `condition` replaced.
    /// - param newChild: The new `condition` to replace the node's
    ///                   current `condition`, if present.
    public func withCondition(_ newChild: Syntax?) -> SwiftSyntax.ConditionElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ConditionElementSyntax

    /// Determines if two `ConditionElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ConditionElementSyntax, rhs: SwiftSyntax.ConditionElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ConditionElementSyntax {

    /// Creates a `ConditionElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ConditionElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ConditionElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ConditionElementSyntaxBuilder) -> Swift.Void)
}

extension ConditionElementSyntax : WithTrailingCommaSyntax {
}

public struct ConditionElementSyntaxBuilder {

    public mutating func useCondition(_ node: Syntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct ConformanceRequirementSyntax : Syntax, Hashable {

    public var leftTypeIdentifier: TypeSyntax { get }

    /// Returns a copy of the receiver with its `leftTypeIdentifier` replaced.
    /// - param newChild: The new `leftTypeIdentifier` to replace the node's
    ///                   current `leftTypeIdentifier`, if present.
    public func withLeftTypeIdentifier(_ newChild: TypeSyntax?) -> SwiftSyntax.ConformanceRequirementSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ConformanceRequirementSyntax

    public var rightTypeIdentifier: TypeSyntax { get }

    /// Returns a copy of the receiver with its `rightTypeIdentifier` replaced.
    /// - param newChild: The new `rightTypeIdentifier` to replace the node's
    ///                   current `rightTypeIdentifier`, if present.
    public func withRightTypeIdentifier(_ newChild: TypeSyntax?) -> SwiftSyntax.ConformanceRequirementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ConformanceRequirementSyntax

    /// Determines if two `ConformanceRequirementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ConformanceRequirementSyntax, rhs: SwiftSyntax.ConformanceRequirementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ConformanceRequirementSyntax {

    /// Creates a `ConformanceRequirementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ConformanceRequirementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ConformanceRequirementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ConformanceRequirementSyntaxBuilder) -> Swift.Void)
}

extension ConformanceRequirementSyntax : WithTrailingCommaSyntax {
}

public struct ConformanceRequirementSyntaxBuilder {

    public mutating func useLeftTypeIdentifier(_ node: TypeSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useRightTypeIdentifier(_ node: TypeSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct ContinueStmtSyntax : StmtSyntax, Hashable {

    public var continueKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `continueKeyword` replaced.
    /// - param newChild: The new `continueKeyword` to replace the node's
    ///                   current `continueKeyword`, if present.
    public func withContinueKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ContinueStmtSyntax

    public var label: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `label` replaced.
    /// - param newChild: The new `label` to replace the node's
    ///                   current `label`, if present.
    public func withLabel(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ContinueStmtSyntax

    /// Determines if two `ContinueStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ContinueStmtSyntax, rhs: SwiftSyntax.ContinueStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ContinueStmtSyntax {

    /// Creates a `ContinueStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ContinueStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ContinueStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ContinueStmtSyntaxBuilder) -> Swift.Void)
}

public struct ContinueStmtSyntaxBuilder {

    public mutating func useContinueKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabel(_ node: SwiftSyntax.TokenSyntax)
}

public protocol DeclGroupSyntax {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> Self

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> Self

    public var members: SwiftSyntax.MemberDeclBlockSyntax { get }

    public func withMembers(_ newChild: SwiftSyntax.MemberDeclBlockSyntax?) -> Self
}

/// `DeclListSyntax` represents a collection of one or more
/// `DeclSyntax` nodes. DeclListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct DeclListSyntax {

    /// Creates a new `DeclListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `DeclListSyntax` with that element appended to the end.
    public func appending(_ syntax: DeclSyntax) -> SwiftSyntax.DeclListSyntax

    /// Creates a new `DeclListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `DeclListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: DeclSyntax) -> SwiftSyntax.DeclListSyntax

    /// Creates a new `DeclListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `DeclListSyntax` with that element appended to the end.
    public func inserting(_ syntax: DeclSyntax, at index: Int) -> SwiftSyntax.DeclListSyntax

    /// Creates a new `DeclListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `DeclListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.DeclListSyntax

    /// Creates a new `DeclListSyntax` by removing the first element.
    ///
    /// - Returns: A new `DeclListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.DeclListSyntax

    /// Creates a new `DeclListSyntax` by removing the last element.
    ///
    /// - Returns: A new `DeclListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.DeclListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.DeclListSyntaxIterator
}

/// Conformance for `DeclListSyntax`` to the Collection protocol.
extension DeclListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> DeclSyntax { get }
}

/// A type that iterates over a `DeclListSyntax` using its indices.
public struct DeclListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = DeclSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.DeclListSyntaxIterator.Element?
}

public struct DeclModifierSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeclModifierSyntax

    public var detail: SwiftSyntax.TokenListSyntax? { get }

    /// Adds the provided `Token` to the node's `detail`
    /// collection.
    /// - param element: The new `Token` to add to the node's
    ///                  `detail` collection.
    /// - returns: A copy of the receiver with the provided `Token`
    ///            appended to its `detail` collection.
    public func addToken(_ element: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DeclModifierSyntax

    /// Returns a copy of the receiver with its `detail` replaced.
    /// - param newChild: The new `detail` to replace the node's
    ///                   current `detail`, if present.
    public func withDetail(_ newChild: SwiftSyntax.TokenListSyntax?) -> SwiftSyntax.DeclModifierSyntax

    /// Determines if two `DeclModifierSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeclModifierSyntax, rhs: SwiftSyntax.DeclModifierSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeclModifierSyntax {

    /// Creates a `DeclModifierSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeclModifierSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeclModifierSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeclModifierSyntaxBuilder) -> Swift.Void)
}

public struct DeclModifierSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addToken(_ elt: SwiftSyntax.TokenSyntax)
}

/// `DeclNameArgumentListSyntax` represents a collection of one or more
/// `DeclNameArgumentSyntax` nodes. DeclNameArgumentListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct DeclNameArgumentListSyntax {

    /// Creates a new `DeclNameArgumentListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `DeclNameArgumentListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.DeclNameArgumentSyntax) -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Creates a new `DeclNameArgumentListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `DeclNameArgumentListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.DeclNameArgumentSyntax) -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Creates a new `DeclNameArgumentListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `DeclNameArgumentListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.DeclNameArgumentSyntax, at index: Int) -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Creates a new `DeclNameArgumentListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `DeclNameArgumentListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Creates a new `DeclNameArgumentListSyntax` by removing the first element.
    ///
    /// - Returns: A new `DeclNameArgumentListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Creates a new `DeclNameArgumentListSyntax` by removing the last element.
    ///
    /// - Returns: A new `DeclNameArgumentListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.DeclNameArgumentListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.DeclNameArgumentListSyntaxIterator
}

/// Conformance for `DeclNameArgumentListSyntax`` to the Collection protocol.
extension DeclNameArgumentListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.DeclNameArgumentSyntax { get }
}

/// A type that iterates over a `DeclNameArgumentListSyntax` using its indices.
public struct DeclNameArgumentListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.DeclNameArgumentSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.DeclNameArgumentListSyntaxIterator.Element?
}

public struct DeclNameArgumentSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeclNameArgumentSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeclNameArgumentSyntax

    /// Determines if two `DeclNameArgumentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeclNameArgumentSyntax, rhs: SwiftSyntax.DeclNameArgumentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeclNameArgumentSyntax {

    /// Creates a `DeclNameArgumentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeclNameArgumentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeclNameArgumentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeclNameArgumentSyntaxBuilder) -> Swift.Void)
}

public struct DeclNameArgumentSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)
}

public struct DeclNameArgumentsSyntax : Syntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeclNameArgumentsSyntax

    public var arguments: SwiftSyntax.DeclNameArgumentListSyntax { get }

    /// Adds the provided `DeclNameArgument` to the node's `arguments`
    /// collection.
    /// - param element: The new `DeclNameArgument` to add to the node's
    ///                  `arguments` collection.
    /// - returns: A copy of the receiver with the provided `DeclNameArgument`
    ///            appended to its `arguments` collection.
    public func addDeclNameArgument(_ element: SwiftSyntax.DeclNameArgumentSyntax) -> SwiftSyntax.DeclNameArgumentsSyntax

    /// Returns a copy of the receiver with its `arguments` replaced.
    /// - param newChild: The new `arguments` to replace the node's
    ///                   current `arguments`, if present.
    public func withArguments(_ newChild: SwiftSyntax.DeclNameArgumentListSyntax?) -> SwiftSyntax.DeclNameArgumentsSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeclNameArgumentsSyntax

    /// Determines if two `DeclNameArgumentsSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeclNameArgumentsSyntax, rhs: SwiftSyntax.DeclNameArgumentsSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeclNameArgumentsSyntax {

    /// Creates a `DeclNameArgumentsSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeclNameArgumentsSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeclNameArgumentsSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeclNameArgumentsSyntaxBuilder) -> Swift.Void)
}

extension DeclNameArgumentsSyntax : ParenthesizedSyntax {
}

public struct DeclNameArgumentsSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addDeclNameArgument(_ elt: SwiftSyntax.DeclNameArgumentSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public protocol DeclSyntax : Syntax {
}

public struct DeclarationStmtSyntax : StmtSyntax, Hashable {

    public var declaration: DeclSyntax { get }

    /// Returns a copy of the receiver with its `declaration` replaced.
    /// - param newChild: The new `declaration` to replace the node's
    ///                   current `declaration`, if present.
    public func withDeclaration(_ newChild: DeclSyntax?) -> SwiftSyntax.DeclarationStmtSyntax

    /// Determines if two `DeclarationStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeclarationStmtSyntax, rhs: SwiftSyntax.DeclarationStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeclarationStmtSyntax {

    /// Creates a `DeclarationStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeclarationStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeclarationStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeclarationStmtSyntaxBuilder) -> Swift.Void)
}

public struct DeclarationStmtSyntaxBuilder {

    public mutating func useDeclaration(_ node: DeclSyntax)
}

public struct DeferStmtSyntax : StmtSyntax, Hashable {

    public var deferKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `deferKeyword` replaced.
    /// - param newChild: The new `deferKeyword` to replace the node's
    ///                   current `deferKeyword`, if present.
    public func withDeferKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeferStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.DeferStmtSyntax

    /// Determines if two `DeferStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeferStmtSyntax, rhs: SwiftSyntax.DeferStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeferStmtSyntax {

    /// Creates a `DeferStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeferStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeferStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeferStmtSyntaxBuilder) -> Swift.Void)
}

extension DeferStmtSyntax : WithCodeBlockSyntax {
}

public struct DeferStmtSyntaxBuilder {

    public mutating func useDeferKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct DeinitializerDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.DeinitializerDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.DeinitializerDeclSyntax

    public var modifiers: SwiftSyntax.ModifierListSyntax? { get }

    /// Adds the provided `Modifier` to the node's `modifiers`
    /// collection.
    /// - param element: The new `Modifier` to add to the node's
    ///                  `modifiers` collection.
    /// - returns: A copy of the receiver with the provided `Modifier`
    ///            appended to its `modifiers` collection.
    public func addModifier(_ element: Syntax) -> SwiftSyntax.DeinitializerDeclSyntax

    /// Returns a copy of the receiver with its `modifiers` replaced.
    /// - param newChild: The new `modifiers` to replace the node's
    ///                   current `modifiers`, if present.
    public func withModifiers(_ newChild: SwiftSyntax.ModifierListSyntax?) -> SwiftSyntax.DeinitializerDeclSyntax

    public var deinitKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `deinitKeyword` replaced.
    /// - param newChild: The new `deinitKeyword` to replace the node's
    ///                   current `deinitKeyword`, if present.
    public func withDeinitKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DeinitializerDeclSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.DeinitializerDeclSyntax

    /// Determines if two `DeinitializerDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DeinitializerDeclSyntax, rhs: SwiftSyntax.DeinitializerDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DeinitializerDeclSyntax {

    /// Creates a `DeinitializerDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DeinitializerDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DeinitializerDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DeinitializerDeclSyntaxBuilder) -> Swift.Void)
}

public struct DeinitializerDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func addModifier(_ elt: Syntax)

    public mutating func useDeinitKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

/// A Diagnostic message that can be emitted regarding some piece of code.
public struct Diagnostic : Swift.Codable {

    public struct Message : Swift.Codable {

        /// The severity of diagnostic. This can be note, error, or warning.
        public let severity: SwiftSyntax.Diagnostic.Severity

        /// A string containing the contents of the diagnostic.
        public let text: String

        /// Creates a diagnostic message with the provided severity and text.
        public init(_ severity: SwiftSyntax.Diagnostic.Severity, _ text: String)
    }

    /// The severity of the diagnostic.
    public enum Severity : UInt8, Swift.Codable {

        case note

        case warning

        case error
    }

    /// The diagnostic's message.
    public let message: SwiftSyntax.Diagnostic.Message

    /// The location the diagnostic should point.
    public let location: SwiftSyntax.SourceLocation?

    /// An array of notes providing more context for this diagnostic.
    public let notes: [SwiftSyntax.Note]

    /// An array of source ranges to highlight.
    public let highlights: [SwiftSyntax.SourceRange]

    /// An array of possible FixIts to apply to this diagnostic.
    public let fixIts: [SwiftSyntax.FixIt]

    /// A diagnostic builder that 
    public struct Builder {

        /// Adds a Note to the diagnostic builder.
        /// - parameters:
        ///   - message: The message associated with the note. This must have the
        ///              `.note` severity.
        ///   - location: The source location to which this note is attached.
        ///   - highlights: Any source ranges that should be highlighted by this
        ///                 note.
        ///   - fixIts: Any FixIts that should be attached to this note.
        public mutating func note(_ message: SwiftSyntax.Diagnostic.Message, location: SwiftSyntax.SourceLocation? = default, highlights: [SwiftSyntax.SourceRange] = default, fixIts: [SwiftSyntax.FixIt] = default)

        /// Adds the provided source ranges as highlights of this diagnostic.
        public mutating func highlight(_ ranges: SwiftSyntax.SourceRange...)

        /// Adds a FixIt to remove the contents of the provided SourceRange.
        /// When applied, this FixIt will delete the characters corresponding to
        /// this range in the original source file.
        public mutating func fixItRemove(_ sourceRange: SwiftSyntax.SourceRange)

        /// Adds a FixIt to insert the provided text at the provided SourceLocation
        /// in the file where the location resides.
        public mutating func fixItInsert(_ text: String, at sourceLocation: SwiftSyntax.SourceLocation)

        /// Adds a FixIt to replace the contents of the source file corresponding
        /// to the provided SourceRange with the provided text.
        public mutating func fixItReplace(_ sourceRange: SwiftSyntax.SourceRange, with text: String)
    }
}

/// An object that intends to receive notifications when diagnostics are
/// emitted.
public protocol DiagnosticConsumer {

    /// Handle the provided diagnostic which has just been registered with the
    /// DiagnosticEngine.
    public func handle(_ diagnostic: SwiftSyntax.Diagnostic)

    /// Finalize the consumption of diagnostics, flushing to disk if necessary.
    public func finalize()
}

/// The DiagnosticEngine allows Swift tools to emit diagnostics.
public class DiagnosticEngine {

    /// Creates a new DiagnosticEngine with no diagnostics.
    public init()

    public private(set) var diagnostics: [SwiftSyntax.Diagnostic]

    /// Registers a diagnostic with the diagnostic engine.
    /// - parameters:
    ///   - message: The message for the diagnostic. This message includes
    ///              a severity and text that will be conveyed when the diagnostic
    ///              is serialized.
    public func diagnose(_ message: SwiftSyntax.Diagnostic.Message, location: SwiftSyntax.SourceLocation? = default, actions: ((inout SwiftSyntax.Diagnostic.Builder) -> Swift.Void)? = default)
}

/// `DictionaryElementListSyntax` represents a collection of one or more
/// `DictionaryElementSyntax` nodes. DictionaryElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct DictionaryElementListSyntax {

    /// Creates a new `DictionaryElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `DictionaryElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.DictionaryElementSyntax) -> SwiftSyntax.DictionaryElementListSyntax

    /// Creates a new `DictionaryElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `DictionaryElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.DictionaryElementSyntax) -> SwiftSyntax.DictionaryElementListSyntax

    /// Creates a new `DictionaryElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `DictionaryElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.DictionaryElementSyntax, at index: Int) -> SwiftSyntax.DictionaryElementListSyntax

    /// Creates a new `DictionaryElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `DictionaryElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.DictionaryElementListSyntax

    /// Creates a new `DictionaryElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `DictionaryElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.DictionaryElementListSyntax

    /// Creates a new `DictionaryElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `DictionaryElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.DictionaryElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.DictionaryElementListSyntaxIterator
}

/// Conformance for `DictionaryElementListSyntax`` to the Collection protocol.
extension DictionaryElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.DictionaryElementSyntax { get }
}

/// A type that iterates over a `DictionaryElementListSyntax` using its indices.
public struct DictionaryElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.DictionaryElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.DictionaryElementListSyntaxIterator.Element?
}

public struct DictionaryElementSyntax : Syntax, Hashable {

    public var keyExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `keyExpression` replaced.
    /// - param newChild: The new `keyExpression` to replace the node's
    ///                   current `keyExpression`, if present.
    public func withKeyExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.DictionaryElementSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryElementSyntax

    public var valueExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `valueExpression` replaced.
    /// - param newChild: The new `valueExpression` to replace the node's
    ///                   current `valueExpression`, if present.
    public func withValueExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.DictionaryElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryElementSyntax

    /// Determines if two `DictionaryElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DictionaryElementSyntax, rhs: SwiftSyntax.DictionaryElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DictionaryElementSyntax {

    /// Creates a `DictionaryElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DictionaryElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DictionaryElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DictionaryElementSyntaxBuilder) -> Swift.Void)
}

extension DictionaryElementSyntax : WithTrailingCommaSyntax {
}

public struct DictionaryElementSyntaxBuilder {

    public mutating func useKeyExpression(_ node: ExprSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useValueExpression(_ node: ExprSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct DictionaryExprSyntax : ExprSyntax, Hashable {

    public var leftSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftSquare` replaced.
    /// - param newChild: The new `leftSquare` to replace the node's
    ///                   current `leftSquare`, if present.
    public func withLeftSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryExprSyntax

    public var content: Syntax { get }

    /// Returns a copy of the receiver with its `content` replaced.
    /// - param newChild: The new `content` to replace the node's
    ///                   current `content`, if present.
    public func withContent(_ newChild: Syntax?) -> SwiftSyntax.DictionaryExprSyntax

    public var rightSquare: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightSquare` replaced.
    /// - param newChild: The new `rightSquare` to replace the node's
    ///                   current `rightSquare`, if present.
    public func withRightSquare(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryExprSyntax

    /// Determines if two `DictionaryExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DictionaryExprSyntax, rhs: SwiftSyntax.DictionaryExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DictionaryExprSyntax {

    /// Creates a `DictionaryExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DictionaryExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DictionaryExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DictionaryExprSyntaxBuilder) -> Swift.Void)
}

public struct DictionaryExprSyntaxBuilder {

    public mutating func useLeftSquare(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useContent(_ node: Syntax)

    public mutating func useRightSquare(_ node: SwiftSyntax.TokenSyntax)
}

public struct DictionaryTypeSyntax : TypeSyntax, Hashable {

    public var leftSquareBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftSquareBracket` replaced.
    /// - param newChild: The new `leftSquareBracket` to replace the node's
    ///                   current `leftSquareBracket`, if present.
    public func withLeftSquareBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryTypeSyntax

    public var keyType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `keyType` replaced.
    /// - param newChild: The new `keyType` to replace the node's
    ///                   current `keyType`, if present.
    public func withKeyType(_ newChild: TypeSyntax?) -> SwiftSyntax.DictionaryTypeSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryTypeSyntax

    public var valueType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `valueType` replaced.
    /// - param newChild: The new `valueType` to replace the node's
    ///                   current `valueType`, if present.
    public func withValueType(_ newChild: TypeSyntax?) -> SwiftSyntax.DictionaryTypeSyntax

    public var rightSquareBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightSquareBracket` replaced.
    /// - param newChild: The new `rightSquareBracket` to replace the node's
    ///                   current `rightSquareBracket`, if present.
    public func withRightSquareBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryTypeSyntax

    /// Determines if two `DictionaryTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DictionaryTypeSyntax, rhs: SwiftSyntax.DictionaryTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DictionaryTypeSyntax {

    /// Creates a `DictionaryTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DictionaryTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DictionaryTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DictionaryTypeSyntaxBuilder) -> Swift.Void)
}

public struct DictionaryTypeSyntaxBuilder {

    public mutating func useLeftSquareBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useKeyType(_ node: TypeSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useValueType(_ node: TypeSyntax)

    public mutating func useRightSquareBracket(_ node: SwiftSyntax.TokenSyntax)
}

public struct DiscardAssignmentExprSyntax : ExprSyntax, Hashable {

    public var wildcard: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `wildcard` replaced.
    /// - param newChild: The new `wildcard` to replace the node's
    ///                   current `wildcard`, if present.
    public func withWildcard(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DiscardAssignmentExprSyntax

    /// Determines if two `DiscardAssignmentExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DiscardAssignmentExprSyntax, rhs: SwiftSyntax.DiscardAssignmentExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DiscardAssignmentExprSyntax {

    /// Creates a `DiscardAssignmentExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DiscardAssignmentExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DiscardAssignmentExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DiscardAssignmentExprSyntaxBuilder) -> Swift.Void)
}

public struct DiscardAssignmentExprSyntaxBuilder {

    public mutating func useWildcard(_ node: SwiftSyntax.TokenSyntax)
}

public struct DoStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DoStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DoStmtSyntax

    public var doKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `doKeyword` replaced.
    /// - param newChild: The new `doKeyword` to replace the node's
    ///                   current `doKeyword`, if present.
    public func withDoKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DoStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.DoStmtSyntax

    public var catchClauses: SwiftSyntax.CatchClauseListSyntax? { get }

    /// Adds the provided `CatchClause` to the node's `catchClauses`
    /// collection.
    /// - param element: The new `CatchClause` to add to the node's
    ///                  `catchClauses` collection.
    /// - returns: A copy of the receiver with the provided `CatchClause`
    ///            appended to its `catchClauses` collection.
    public func addCatchClause(_ element: SwiftSyntax.CatchClauseSyntax) -> SwiftSyntax.DoStmtSyntax

    /// Returns a copy of the receiver with its `catchClauses` replaced.
    /// - param newChild: The new `catchClauses` to replace the node's
    ///                   current `catchClauses`, if present.
    public func withCatchClauses(_ newChild: SwiftSyntax.CatchClauseListSyntax?) -> SwiftSyntax.DoStmtSyntax

    /// Determines if two `DoStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DoStmtSyntax, rhs: SwiftSyntax.DoStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DoStmtSyntax {

    /// Creates a `DoStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DoStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DoStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DoStmtSyntaxBuilder) -> Swift.Void)
}

extension DoStmtSyntax : WithCodeBlockSyntax, LabeledSyntax {
}

public struct DoStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDoKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)

    public mutating func addCatchClause(_ elt: SwiftSyntax.CatchClauseSyntax)
}

public struct DotSelfExprSyntax : ExprSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.DotSelfExprSyntax

    public var dot: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `dot` replaced.
    /// - param newChild: The new `dot` to replace the node's
    ///                   current `dot`, if present.
    public func withDot(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DotSelfExprSyntax

    public var selfKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `selfKeyword` replaced.
    /// - param newChild: The new `selfKeyword` to replace the node's
    ///                   current `selfKeyword`, if present.
    public func withSelfKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DotSelfExprSyntax

    /// Determines if two `DotSelfExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.DotSelfExprSyntax, rhs: SwiftSyntax.DotSelfExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension DotSelfExprSyntax {

    /// Creates a `DotSelfExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `DotSelfExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `DotSelfExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.DotSelfExprSyntaxBuilder) -> Swift.Void)
}

public struct DotSelfExprSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useDot(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSelfKeyword(_ node: SwiftSyntax.TokenSyntax)
}

public struct EditorPlaceholderExprSyntax : ExprSyntax, Hashable {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.EditorPlaceholderExprSyntax

    /// Determines if two `EditorPlaceholderExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.EditorPlaceholderExprSyntax, rhs: SwiftSyntax.EditorPlaceholderExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension EditorPlaceholderExprSyntax {

    /// Creates a `EditorPlaceholderExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `EditorPlaceholderExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `EditorPlaceholderExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.EditorPlaceholderExprSyntaxBuilder) -> Swift.Void)
}

public struct EditorPlaceholderExprSyntaxBuilder {

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)
}

public struct ElseBlockSyntax : Syntax, Hashable {

    public var elseKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `elseKeyword` replaced.
    /// - param newChild: The new `elseKeyword` to replace the node's
    ///                   current `elseKeyword`, if present.
    public func withElseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ElseBlockSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.ElseBlockSyntax

    /// Determines if two `ElseBlockSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ElseBlockSyntax, rhs: SwiftSyntax.ElseBlockSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ElseBlockSyntax {

    /// Creates a `ElseBlockSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ElseBlockSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ElseBlockSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ElseBlockSyntaxBuilder) -> Swift.Void)
}

extension ElseBlockSyntax : WithCodeBlockSyntax {
}

public struct ElseBlockSyntaxBuilder {

    public mutating func useElseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct ElseDirectiveClauseSyntax : Syntax, Hashable {

    public var poundElse: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundElse` replaced.
    /// - param newChild: The new `poundElse` to replace the node's
    ///                   current `poundElse`, if present.
    public func withPoundElse(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ElseDirectiveClauseSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.ElseDirectiveClauseSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.ElseDirectiveClauseSyntax

    /// Determines if two `ElseDirectiveClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ElseDirectiveClauseSyntax, rhs: SwiftSyntax.ElseDirectiveClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ElseDirectiveClauseSyntax {

    /// Creates a `ElseDirectiveClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ElseDirectiveClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ElseDirectiveClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ElseDirectiveClauseSyntaxBuilder) -> Swift.Void)
}

extension ElseDirectiveClauseSyntax : WithStatementsSyntax {
}

public struct ElseDirectiveClauseSyntaxBuilder {

    public mutating func usePoundElse(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)
}

public struct ElseIfContinuationSyntax : Syntax, Hashable {

    public var ifStatement: SwiftSyntax.IfStmtSyntax { get }

    /// Returns a copy of the receiver with its `ifStatement` replaced.
    /// - param newChild: The new `ifStatement` to replace the node's
    ///                   current `ifStatement`, if present.
    public func withIfStatement(_ newChild: SwiftSyntax.IfStmtSyntax?) -> SwiftSyntax.ElseIfContinuationSyntax

    /// Determines if two `ElseIfContinuationSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ElseIfContinuationSyntax, rhs: SwiftSyntax.ElseIfContinuationSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ElseIfContinuationSyntax {

    /// Creates a `ElseIfContinuationSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ElseIfContinuationSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ElseIfContinuationSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ElseIfContinuationSyntaxBuilder) -> Swift.Void)
}

public struct ElseIfContinuationSyntaxBuilder {

    public mutating func useIfStatement(_ node: SwiftSyntax.IfStmtSyntax)
}

/// `ElseifDirectiveClauseListSyntax` represents a collection of one or more
/// `ElseifDirectiveClauseSyntax` nodes. ElseifDirectiveClauseListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ElseifDirectiveClauseListSyntax {

    /// Creates a new `ElseifDirectiveClauseListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ElseifDirectiveClauseSyntax) -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Creates a new `ElseifDirectiveClauseListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ElseifDirectiveClauseSyntax) -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Creates a new `ElseifDirectiveClauseListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ElseifDirectiveClauseSyntax, at index: Int) -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Creates a new `ElseifDirectiveClauseListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Creates a new `ElseifDirectiveClauseListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Creates a new `ElseifDirectiveClauseListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ElseifDirectiveClauseListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ElseifDirectiveClauseListSyntaxIterator
}

/// Conformance for `ElseifDirectiveClauseListSyntax`` to the Collection protocol.
extension ElseifDirectiveClauseListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ElseifDirectiveClauseSyntax { get }
}

/// A type that iterates over a `ElseifDirectiveClauseListSyntax` using its indices.
public struct ElseifDirectiveClauseListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ElseifDirectiveClauseSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ElseifDirectiveClauseListSyntaxIterator.Element?
}

public struct ElseifDirectiveClauseSyntax : Syntax, Hashable {

    public var poundElseif: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundElseif` replaced.
    /// - param newChild: The new `poundElseif` to replace the node's
    ///                   current `poundElseif`, if present.
    public func withPoundElseif(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ElseifDirectiveClauseSyntax

    public var condition: ExprSyntax { get }

    /// Returns a copy of the receiver with its `condition` replaced.
    /// - param newChild: The new `condition` to replace the node's
    ///                   current `condition`, if present.
    public func withCondition(_ newChild: ExprSyntax?) -> SwiftSyntax.ElseifDirectiveClauseSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.ElseifDirectiveClauseSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.ElseifDirectiveClauseSyntax

    /// Determines if two `ElseifDirectiveClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ElseifDirectiveClauseSyntax, rhs: SwiftSyntax.ElseifDirectiveClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ElseifDirectiveClauseSyntax {

    /// Creates a `ElseifDirectiveClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ElseifDirectiveClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ElseifDirectiveClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ElseifDirectiveClauseSyntaxBuilder) -> Swift.Void)
}

extension ElseifDirectiveClauseSyntax : WithStatementsSyntax {
}

public struct ElseifDirectiveClauseSyntaxBuilder {

    public mutating func usePoundElseif(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useCondition(_ node: ExprSyntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)
}

public struct EnumCasePatternSyntax : PatternSyntax, Hashable {

    public var type: TypeSyntax? { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.EnumCasePatternSyntax

    public var period: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `period` replaced.
    /// - param newChild: The new `period` to replace the node's
    ///                   current `period`, if present.
    public func withPeriod(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.EnumCasePatternSyntax

    public var caseName: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `caseName` replaced.
    /// - param newChild: The new `caseName` to replace the node's
    ///                   current `caseName`, if present.
    public func withCaseName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.EnumCasePatternSyntax

    public var associatedTuple: SwiftSyntax.TuplePatternSyntax? { get }

    /// Returns a copy of the receiver with its `associatedTuple` replaced.
    /// - param newChild: The new `associatedTuple` to replace the node's
    ///                   current `associatedTuple`, if present.
    public func withAssociatedTuple(_ newChild: SwiftSyntax.TuplePatternSyntax?) -> SwiftSyntax.EnumCasePatternSyntax

    /// Determines if two `EnumCasePatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.EnumCasePatternSyntax, rhs: SwiftSyntax.EnumCasePatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension EnumCasePatternSyntax {

    /// Creates a `EnumCasePatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `EnumCasePatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `EnumCasePatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.EnumCasePatternSyntaxBuilder) -> Swift.Void)
}

public struct EnumCasePatternSyntaxBuilder {

    public mutating func useType(_ node: TypeSyntax)

    public mutating func usePeriod(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useCaseName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useAssociatedTuple(_ node: SwiftSyntax.TuplePatternSyntax)
}

/// `ExprListSyntax` represents a collection of one or more
/// `ExprSyntax` nodes. ExprListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ExprListSyntax {

    /// Creates a new `ExprListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ExprListSyntax` with that element appended to the end.
    public func appending(_ syntax: ExprSyntax) -> SwiftSyntax.ExprListSyntax

    /// Creates a new `ExprListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ExprListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: ExprSyntax) -> SwiftSyntax.ExprListSyntax

    /// Creates a new `ExprListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ExprListSyntax` with that element appended to the end.
    public func inserting(_ syntax: ExprSyntax, at index: Int) -> SwiftSyntax.ExprListSyntax

    /// Creates a new `ExprListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ExprListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ExprListSyntax

    /// Creates a new `ExprListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ExprListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ExprListSyntax

    /// Creates a new `ExprListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ExprListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ExprListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ExprListSyntaxIterator
}

/// Conformance for `ExprListSyntax`` to the Collection protocol.
extension ExprListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> ExprSyntax { get }
}

/// A type that iterates over a `ExprListSyntax` using its indices.
public struct ExprListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = ExprSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ExprListSyntaxIterator.Element?
}

public protocol ExprSyntax : Syntax {
}

public struct ExpressionPatternSyntax : PatternSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ExpressionPatternSyntax

    /// Determines if two `ExpressionPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ExpressionPatternSyntax, rhs: SwiftSyntax.ExpressionPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ExpressionPatternSyntax {

    /// Creates a `ExpressionPatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ExpressionPatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ExpressionPatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ExpressionPatternSyntaxBuilder) -> Swift.Void)
}

public struct ExpressionPatternSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)
}

public struct ExpressionSegmentSyntax : Syntax, Hashable {

    public var backslash: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `backslash` replaced.
    /// - param newChild: The new `backslash` to replace the node's
    ///                   current `backslash`, if present.
    public func withBackslash(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ExpressionSegmentSyntax

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ExpressionSegmentSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ExpressionSegmentSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ExpressionSegmentSyntax

    /// Determines if two `ExpressionSegmentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ExpressionSegmentSyntax, rhs: SwiftSyntax.ExpressionSegmentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ExpressionSegmentSyntax {

    /// Creates a `ExpressionSegmentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ExpressionSegmentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ExpressionSegmentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ExpressionSegmentSyntaxBuilder) -> Swift.Void)
}

extension ExpressionSegmentSyntax : ParenthesizedSyntax {
}

public struct ExpressionSegmentSyntaxBuilder {

    public mutating func useBackslash(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct ExpressionStmtSyntax : StmtSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ExpressionStmtSyntax

    /// Determines if two `ExpressionStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ExpressionStmtSyntax, rhs: SwiftSyntax.ExpressionStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ExpressionStmtSyntax {

    /// Creates a `ExpressionStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ExpressionStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ExpressionStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ExpressionStmtSyntaxBuilder) -> Swift.Void)
}

public struct ExpressionStmtSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)
}

public struct ExtensionDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.ExtensionDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var extensionKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `extensionKeyword` replaced.
    /// - param newChild: The new `extensionKeyword` to replace the node's
    ///                   current `extensionKeyword`, if present.
    public func withExtensionKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var extendedType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `extendedType` replaced.
    /// - param newChild: The new `extendedType` to replace the node's
    ///                   current `extendedType`, if present.
    public func withExtendedType(_ newChild: TypeSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax? { get }

    /// Returns a copy of the receiver with its `inheritanceClause` replaced.
    /// - param newChild: The new `inheritanceClause` to replace the node's
    ///                   current `inheritanceClause`, if present.
    public func withInheritanceClause(_ newChild: SwiftSyntax.TypeInheritanceClauseSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    public var members: SwiftSyntax.MemberDeclBlockSyntax { get }

    /// Returns a copy of the receiver with its `members` replaced.
    /// - param newChild: The new `members` to replace the node's
    ///                   current `members`, if present.
    public func withMembers(_ newChild: SwiftSyntax.MemberDeclBlockSyntax?) -> SwiftSyntax.ExtensionDeclSyntax

    /// Determines if two `ExtensionDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ExtensionDeclSyntax, rhs: SwiftSyntax.ExtensionDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ExtensionDeclSyntax {

    /// Creates a `ExtensionDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ExtensionDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ExtensionDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ExtensionDeclSyntaxBuilder) -> Swift.Void)
}

extension ExtensionDeclSyntax : DeclGroupSyntax {
}

public struct ExtensionDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useExtensionKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExtendedType(_ node: TypeSyntax)

    public mutating func useInheritanceClause(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useMembers(_ node: SwiftSyntax.MemberDeclBlockSyntax)
}

public struct FallthroughStmtSyntax : StmtSyntax, Hashable {

    public var fallthroughKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `fallthroughKeyword` replaced.
    /// - param newChild: The new `fallthroughKeyword` to replace the node's
    ///                   current `fallthroughKeyword`, if present.
    public func withFallthroughKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FallthroughStmtSyntax

    /// Determines if two `FallthroughStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FallthroughStmtSyntax, rhs: SwiftSyntax.FallthroughStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FallthroughStmtSyntax {

    /// Creates a `FallthroughStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FallthroughStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FallthroughStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FallthroughStmtSyntaxBuilder) -> Swift.Void)
}

public struct FallthroughStmtSyntaxBuilder {

    public mutating func useFallthroughKeyword(_ node: SwiftSyntax.TokenSyntax)
}

/// A FixIt represents a change to source code in order to "correct" a
/// diagnostic.
public enum FixIt : Swift.Codable {

    /// Remove the characters from the source file over the provided source range.
    case remove(SwiftSyntax.SourceRange)

    /// Insert, at the provided source location, the provided string.
    case insert(SwiftSyntax.SourceLocation, String)

    /// Replace the characters at the provided source range with the provided
    /// string.
    case replace(SwiftSyntax.SourceRange, String)

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws

    /// The source range associated with a FixIt. If this is an insertion,
    /// it is a range with the same start and end location.
    public var range: SwiftSyntax.SourceRange { get }

    /// The text associated with this FixIt. If this is a removal, the text is
    /// the empty string.
    public var text: String { get }
}

public struct FloatLiteralExprSyntax : ExprSyntax, Hashable {

    public var floatingDigits: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `floatingDigits` replaced.
    /// - param newChild: The new `floatingDigits` to replace the node's
    ///                   current `floatingDigits`, if present.
    public func withFloatingDigits(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FloatLiteralExprSyntax

    /// Determines if two `FloatLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FloatLiteralExprSyntax, rhs: SwiftSyntax.FloatLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FloatLiteralExprSyntax {

    /// Creates a `FloatLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FloatLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FloatLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FloatLiteralExprSyntaxBuilder) -> Swift.Void)
}

public struct FloatLiteralExprSyntaxBuilder {

    public mutating func useFloatingDigits(_ node: SwiftSyntax.TokenSyntax)
}

public struct ForInStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var forKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `forKeyword` replaced.
    /// - param newChild: The new `forKeyword` to replace the node's
    ///                   current `forKeyword`, if present.
    public func withForKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var caseKeyword: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `caseKeyword` replaced.
    /// - param newChild: The new `caseKeyword` to replace the node's
    ///                   current `caseKeyword`, if present.
    public func withCaseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var typeAnnotation: SwiftSyntax.TypeAnnotationSyntax? { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var inKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `inKeyword` replaced.
    /// - param newChild: The new `inKeyword` to replace the node's
    ///                   current `inKeyword`, if present.
    public func withInKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var sequenceExpr: ExprSyntax { get }

    /// Returns a copy of the receiver with its `sequenceExpr` replaced.
    /// - param newChild: The new `sequenceExpr` to replace the node's
    ///                   current `sequenceExpr`, if present.
    public func withSequenceExpr(_ newChild: ExprSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var whereClause: SwiftSyntax.WhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `whereClause` replaced.
    /// - param newChild: The new `whereClause` to replace the node's
    ///                   current `whereClause`, if present.
    public func withWhereClause(_ newChild: SwiftSyntax.WhereClauseSyntax?) -> SwiftSyntax.ForInStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.ForInStmtSyntax

    /// Determines if two `ForInStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ForInStmtSyntax, rhs: SwiftSyntax.ForInStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ForInStmtSyntax {

    /// Creates a `ForInStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ForInStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ForInStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ForInStmtSyntaxBuilder) -> Swift.Void)
}

extension ForInStmtSyntax : WithCodeBlockSyntax, LabeledSyntax {
}

public struct ForInStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useForKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useCaseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useTypeAnnotation(_ node: SwiftSyntax.TypeAnnotationSyntax)

    public mutating func useInKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSequenceExpr(_ node: ExprSyntax)

    public mutating func useWhereClause(_ node: SwiftSyntax.WhereClauseSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct ForcedValueExprSyntax : ExprSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ForcedValueExprSyntax

    public var exclamationMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `exclamationMark` replaced.
    /// - param newChild: The new `exclamationMark` to replace the node's
    ///                   current `exclamationMark`, if present.
    public func withExclamationMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ForcedValueExprSyntax

    /// Determines if two `ForcedValueExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ForcedValueExprSyntax, rhs: SwiftSyntax.ForcedValueExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ForcedValueExprSyntax {

    /// Creates a `ForcedValueExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ForcedValueExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ForcedValueExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ForcedValueExprSyntaxBuilder) -> Swift.Void)
}

public struct ForcedValueExprSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useExclamationMark(_ node: SwiftSyntax.TokenSyntax)
}

/// `FunctionCallArgumentListSyntax` represents a collection of one or more
/// `FunctionCallArgumentSyntax` nodes. FunctionCallArgumentListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct FunctionCallArgumentListSyntax {

    /// Creates a new `FunctionCallArgumentListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `FunctionCallArgumentListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.FunctionCallArgumentSyntax) -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Creates a new `FunctionCallArgumentListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `FunctionCallArgumentListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.FunctionCallArgumentSyntax) -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Creates a new `FunctionCallArgumentListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `FunctionCallArgumentListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.FunctionCallArgumentSyntax, at index: Int) -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Creates a new `FunctionCallArgumentListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `FunctionCallArgumentListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Creates a new `FunctionCallArgumentListSyntax` by removing the first element.
    ///
    /// - Returns: A new `FunctionCallArgumentListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Creates a new `FunctionCallArgumentListSyntax` by removing the last element.
    ///
    /// - Returns: A new `FunctionCallArgumentListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.FunctionCallArgumentListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.FunctionCallArgumentListSyntaxIterator
}

/// Conformance for `FunctionCallArgumentListSyntax`` to the Collection protocol.
extension FunctionCallArgumentListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.FunctionCallArgumentSyntax { get }
}

/// A type that iterates over a `FunctionCallArgumentListSyntax` using its indices.
public struct FunctionCallArgumentListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.FunctionCallArgumentSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.FunctionCallArgumentListSyntaxIterator.Element?
}

public struct FunctionCallArgumentSyntax : Syntax, Hashable {

    public var label: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `label` replaced.
    /// - param newChild: The new `label` to replace the node's
    ///                   current `label`, if present.
    public func withLabel(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallArgumentSyntax

    public var colon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallArgumentSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.FunctionCallArgumentSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallArgumentSyntax

    /// Determines if two `FunctionCallArgumentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionCallArgumentSyntax, rhs: SwiftSyntax.FunctionCallArgumentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionCallArgumentSyntax {

    /// Creates a `FunctionCallArgumentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionCallArgumentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionCallArgumentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionCallArgumentSyntaxBuilder) -> Swift.Void)
}

extension FunctionCallArgumentSyntax : WithTrailingCommaSyntax {
}

public struct FunctionCallArgumentSyntaxBuilder {

    public mutating func useLabel(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct FunctionCallExprSyntax : ExprSyntax, Hashable {

    public var calledExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `calledExpression` replaced.
    /// - param newChild: The new `calledExpression` to replace the node's
    ///                   current `calledExpression`, if present.
    public func withCalledExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    public var leftParen: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    public var argumentList: SwiftSyntax.FunctionCallArgumentListSyntax { get }

    /// Adds the provided `FunctionCallArgument` to the node's `argumentList`
    /// collection.
    /// - param element: The new `FunctionCallArgument` to add to the node's
    ///                  `argumentList` collection.
    /// - returns: A copy of the receiver with the provided `FunctionCallArgument`
    ///            appended to its `argumentList` collection.
    public func addFunctionCallArgument(_ element: SwiftSyntax.FunctionCallArgumentSyntax) -> SwiftSyntax.FunctionCallExprSyntax

    /// Returns a copy of the receiver with its `argumentList` replaced.
    /// - param newChild: The new `argumentList` to replace the node's
    ///                   current `argumentList`, if present.
    public func withArgumentList(_ newChild: SwiftSyntax.FunctionCallArgumentListSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    public var rightParen: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    public var trailingClosure: SwiftSyntax.ClosureExprSyntax? { get }

    /// Returns a copy of the receiver with its `trailingClosure` replaced.
    /// - param newChild: The new `trailingClosure` to replace the node's
    ///                   current `trailingClosure`, if present.
    public func withTrailingClosure(_ newChild: SwiftSyntax.ClosureExprSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    /// Determines if two `FunctionCallExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionCallExprSyntax, rhs: SwiftSyntax.FunctionCallExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionCallExprSyntax {

    /// Creates a `FunctionCallExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionCallExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionCallExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionCallExprSyntaxBuilder) -> Swift.Void)
}

public struct FunctionCallExprSyntaxBuilder {

    public mutating func useCalledExpression(_ node: ExprSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addFunctionCallArgument(_ elt: SwiftSyntax.FunctionCallArgumentSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTrailingClosure(_ node: SwiftSyntax.ClosureExprSyntax)
}

public struct FunctionDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.FunctionDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var modifiers: SwiftSyntax.ModifierListSyntax? { get }

    /// Adds the provided `Modifier` to the node's `modifiers`
    /// collection.
    /// - param element: The new `Modifier` to add to the node's
    ///                  `modifiers` collection.
    /// - returns: A copy of the receiver with the provided `Modifier`
    ///            appended to its `modifiers` collection.
    public func addModifier(_ element: Syntax) -> SwiftSyntax.FunctionDeclSyntax

    /// Returns a copy of the receiver with its `modifiers` replaced.
    /// - param newChild: The new `modifiers` to replace the node's
    ///                   current `modifiers`, if present.
    public func withModifiers(_ newChild: SwiftSyntax.ModifierListSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var funcKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `funcKeyword` replaced.
    /// - param newChild: The new `funcKeyword` to replace the node's
    ///                   current `funcKeyword`, if present.
    public func withFuncKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var signature: SwiftSyntax.FunctionSignatureSyntax { get }

    /// Returns a copy of the receiver with its `signature` replaced.
    /// - param newChild: The new `signature` to replace the node's
    ///                   current `signature`, if present.
    public func withSignature(_ newChild: SwiftSyntax.FunctionSignatureSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public var body: SwiftSyntax.CodeBlockSyntax? { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    /// Determines if two `FunctionDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionDeclSyntax, rhs: SwiftSyntax.FunctionDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionDeclSyntax {

    /// Creates a `FunctionDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionDeclSyntaxBuilder) -> Swift.Void)
}

extension FunctionDeclSyntax : IdentifiedDeclSyntax {
}

public struct FunctionDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func addModifier(_ elt: Syntax)

    public mutating func useFuncKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useSignature(_ node: SwiftSyntax.FunctionSignatureSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

/// `FunctionParameterListSyntax` represents a collection of one or more
/// `FunctionParameterSyntax` nodes. FunctionParameterListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct FunctionParameterListSyntax {

    /// Creates a new `FunctionParameterListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `FunctionParameterListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.FunctionParameterSyntax) -> SwiftSyntax.FunctionParameterListSyntax

    /// Creates a new `FunctionParameterListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `FunctionParameterListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.FunctionParameterSyntax) -> SwiftSyntax.FunctionParameterListSyntax

    /// Creates a new `FunctionParameterListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `FunctionParameterListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.FunctionParameterSyntax, at index: Int) -> SwiftSyntax.FunctionParameterListSyntax

    /// Creates a new `FunctionParameterListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `FunctionParameterListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.FunctionParameterListSyntax

    /// Creates a new `FunctionParameterListSyntax` by removing the first element.
    ///
    /// - Returns: A new `FunctionParameterListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.FunctionParameterListSyntax

    /// Creates a new `FunctionParameterListSyntax` by removing the last element.
    ///
    /// - Returns: A new `FunctionParameterListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.FunctionParameterListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.FunctionParameterListSyntaxIterator
}

/// Conformance for `FunctionParameterListSyntax`` to the Collection protocol.
extension FunctionParameterListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.FunctionParameterSyntax { get }
}

/// A type that iterates over a `FunctionParameterListSyntax` using its indices.
public struct FunctionParameterListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.FunctionParameterSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.FunctionParameterListSyntaxIterator.Element?
}

public struct FunctionParameterSyntax : Syntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.FunctionParameterSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var firstName: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `firstName` replaced.
    /// - param newChild: The new `firstName` to replace the node's
    ///                   current `firstName`, if present.
    public func withFirstName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var secondName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `secondName` replaced.
    /// - param newChild: The new `secondName` to replace the node's
    ///                   current `secondName`, if present.
    public func withSecondName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var typeAnnotation: TypeSyntax { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: TypeSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var ellipsis: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `ellipsis` replaced.
    /// - param newChild: The new `ellipsis` to replace the node's
    ///                   current `ellipsis`, if present.
    public func withEllipsis(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var defaultArgument: SwiftSyntax.InitializerClauseSyntax? { get }

    /// Returns a copy of the receiver with its `defaultArgument` replaced.
    /// - param newChild: The new `defaultArgument` to replace the node's
    ///                   current `defaultArgument`, if present.
    public func withDefaultArgument(_ newChild: SwiftSyntax.InitializerClauseSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    /// Determines if two `FunctionParameterSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionParameterSyntax, rhs: SwiftSyntax.FunctionParameterSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionParameterSyntax {

    /// Creates a `FunctionParameterSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionParameterSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionParameterSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionParameterSyntaxBuilder) -> Swift.Void)
}

extension FunctionParameterSyntax : WithTrailingCommaSyntax {
}

public struct FunctionParameterSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useFirstName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSecondName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTypeAnnotation(_ node: TypeSyntax)

    public mutating func useEllipsis(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDefaultArgument(_ node: SwiftSyntax.InitializerClauseSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct FunctionSignatureSyntax : Syntax, Hashable {

    public var input: SwiftSyntax.ParameterClauseSyntax { get }

    /// Returns a copy of the receiver with its `input` replaced.
    /// - param newChild: The new `input` to replace the node's
    ///                   current `input`, if present.
    public func withInput(_ newChild: SwiftSyntax.ParameterClauseSyntax?) -> SwiftSyntax.FunctionSignatureSyntax

    public var throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `throwsOrRethrowsKeyword` replaced.
    /// - param newChild: The new `throwsOrRethrowsKeyword` to replace the node's
    ///                   current `throwsOrRethrowsKeyword`, if present.
    public func withThrowsOrRethrowsKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionSignatureSyntax

    public var output: SwiftSyntax.ReturnClauseSyntax? { get }

    /// Returns a copy of the receiver with its `output` replaced.
    /// - param newChild: The new `output` to replace the node's
    ///                   current `output`, if present.
    public func withOutput(_ newChild: SwiftSyntax.ReturnClauseSyntax?) -> SwiftSyntax.FunctionSignatureSyntax

    /// Determines if two `FunctionSignatureSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionSignatureSyntax, rhs: SwiftSyntax.FunctionSignatureSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionSignatureSyntax {

    /// Creates a `FunctionSignatureSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionSignatureSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionSignatureSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionSignatureSyntaxBuilder) -> Swift.Void)
}

public struct FunctionSignatureSyntaxBuilder {

    public mutating func useInput(_ node: SwiftSyntax.ParameterClauseSyntax)

    public mutating func useThrowsOrRethrowsKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useOutput(_ node: SwiftSyntax.ReturnClauseSyntax)
}

public struct FunctionTypeSyntax : TypeSyntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    public var arguments: SwiftSyntax.TupleTypeElementListSyntax { get }

    /// Adds the provided `TupleTypeElement` to the node's `arguments`
    /// collection.
    /// - param element: The new `TupleTypeElement` to add to the node's
    ///                  `arguments` collection.
    /// - returns: A copy of the receiver with the provided `TupleTypeElement`
    ///            appended to its `arguments` collection.
    public func addTupleTypeElement(_ element: SwiftSyntax.TupleTypeElementSyntax) -> SwiftSyntax.FunctionTypeSyntax

    /// Returns a copy of the receiver with its `arguments` replaced.
    /// - param newChild: The new `arguments` to replace the node's
    ///                   current `arguments`, if present.
    public func withArguments(_ newChild: SwiftSyntax.TupleTypeElementListSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    public var throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `throwsOrRethrowsKeyword` replaced.
    /// - param newChild: The new `throwsOrRethrowsKeyword` to replace the node's
    ///                   current `throwsOrRethrowsKeyword`, if present.
    public func withThrowsOrRethrowsKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    public var arrow: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `arrow` replaced.
    /// - param newChild: The new `arrow` to replace the node's
    ///                   current `arrow`, if present.
    public func withArrow(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    public var returnType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `returnType` replaced.
    /// - param newChild: The new `returnType` to replace the node's
    ///                   current `returnType`, if present.
    public func withReturnType(_ newChild: TypeSyntax?) -> SwiftSyntax.FunctionTypeSyntax

    /// Determines if two `FunctionTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.FunctionTypeSyntax, rhs: SwiftSyntax.FunctionTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension FunctionTypeSyntax {

    /// Creates a `FunctionTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `FunctionTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `FunctionTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.FunctionTypeSyntaxBuilder) -> Swift.Void)
}

extension FunctionTypeSyntax : ParenthesizedSyntax {
}

public struct FunctionTypeSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addTupleTypeElement(_ elt: SwiftSyntax.TupleTypeElementSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useThrowsOrRethrowsKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useArrow(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useReturnType(_ node: TypeSyntax)
}

public struct GenericArgumentClauseSyntax : Syntax, Hashable {

    public var leftAngleBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftAngleBracket` replaced.
    /// - param newChild: The new `leftAngleBracket` to replace the node's
    ///                   current `leftAngleBracket`, if present.
    public func withLeftAngleBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericArgumentClauseSyntax

    public var arguments: SwiftSyntax.GenericArgumentListSyntax { get }

    /// Adds the provided `GenericArgument` to the node's `arguments`
    /// collection.
    /// - param element: The new `GenericArgument` to add to the node's
    ///                  `arguments` collection.
    /// - returns: A copy of the receiver with the provided `GenericArgument`
    ///            appended to its `arguments` collection.
    public func addGenericArgument(_ element: SwiftSyntax.GenericArgumentSyntax) -> SwiftSyntax.GenericArgumentClauseSyntax

    /// Returns a copy of the receiver with its `arguments` replaced.
    /// - param newChild: The new `arguments` to replace the node's
    ///                   current `arguments`, if present.
    public func withArguments(_ newChild: SwiftSyntax.GenericArgumentListSyntax?) -> SwiftSyntax.GenericArgumentClauseSyntax

    public var rightAngleBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightAngleBracket` replaced.
    /// - param newChild: The new `rightAngleBracket` to replace the node's
    ///                   current `rightAngleBracket`, if present.
    public func withRightAngleBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericArgumentClauseSyntax

    /// Determines if two `GenericArgumentClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GenericArgumentClauseSyntax, rhs: SwiftSyntax.GenericArgumentClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GenericArgumentClauseSyntax {

    /// Creates a `GenericArgumentClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GenericArgumentClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GenericArgumentClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GenericArgumentClauseSyntaxBuilder) -> Swift.Void)
}

public struct GenericArgumentClauseSyntaxBuilder {

    public mutating func useLeftAngleBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addGenericArgument(_ elt: SwiftSyntax.GenericArgumentSyntax)

    public mutating func useRightAngleBracket(_ node: SwiftSyntax.TokenSyntax)
}

/// `GenericArgumentListSyntax` represents a collection of one or more
/// `GenericArgumentSyntax` nodes. GenericArgumentListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct GenericArgumentListSyntax {

    /// Creates a new `GenericArgumentListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `GenericArgumentListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.GenericArgumentSyntax) -> SwiftSyntax.GenericArgumentListSyntax

    /// Creates a new `GenericArgumentListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `GenericArgumentListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.GenericArgumentSyntax) -> SwiftSyntax.GenericArgumentListSyntax

    /// Creates a new `GenericArgumentListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `GenericArgumentListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.GenericArgumentSyntax, at index: Int) -> SwiftSyntax.GenericArgumentListSyntax

    /// Creates a new `GenericArgumentListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `GenericArgumentListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.GenericArgumentListSyntax

    /// Creates a new `GenericArgumentListSyntax` by removing the first element.
    ///
    /// - Returns: A new `GenericArgumentListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.GenericArgumentListSyntax

    /// Creates a new `GenericArgumentListSyntax` by removing the last element.
    ///
    /// - Returns: A new `GenericArgumentListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.GenericArgumentListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.GenericArgumentListSyntaxIterator
}

/// Conformance for `GenericArgumentListSyntax`` to the Collection protocol.
extension GenericArgumentListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.GenericArgumentSyntax { get }
}

/// A type that iterates over a `GenericArgumentListSyntax` using its indices.
public struct GenericArgumentListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.GenericArgumentSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.GenericArgumentListSyntaxIterator.Element?
}

public struct GenericArgumentSyntax : Syntax, Hashable {

    public var argumentType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `argumentType` replaced.
    /// - param newChild: The new `argumentType` to replace the node's
    ///                   current `argumentType`, if present.
    public func withArgumentType(_ newChild: TypeSyntax?) -> SwiftSyntax.GenericArgumentSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericArgumentSyntax

    /// Determines if two `GenericArgumentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GenericArgumentSyntax, rhs: SwiftSyntax.GenericArgumentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GenericArgumentSyntax {

    /// Creates a `GenericArgumentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GenericArgumentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GenericArgumentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GenericArgumentSyntaxBuilder) -> Swift.Void)
}

extension GenericArgumentSyntax : WithTrailingCommaSyntax {
}

public struct GenericArgumentSyntaxBuilder {

    public mutating func useArgumentType(_ node: TypeSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct GenericParameterClauseSyntax : Syntax, Hashable {

    public var leftAngleBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftAngleBracket` replaced.
    /// - param newChild: The new `leftAngleBracket` to replace the node's
    ///                   current `leftAngleBracket`, if present.
    public func withLeftAngleBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterClauseSyntax

    public var genericParameterList: SwiftSyntax.GenericParameterListSyntax { get }

    /// Adds the provided `GenericParameter` to the node's `genericParameterList`
    /// collection.
    /// - param element: The new `GenericParameter` to add to the node's
    ///                  `genericParameterList` collection.
    /// - returns: A copy of the receiver with the provided `GenericParameter`
    ///            appended to its `genericParameterList` collection.
    public func addGenericParameter(_ element: SwiftSyntax.GenericParameterSyntax) -> SwiftSyntax.GenericParameterClauseSyntax

    /// Returns a copy of the receiver with its `genericParameterList` replaced.
    /// - param newChild: The new `genericParameterList` to replace the node's
    ///                   current `genericParameterList`, if present.
    public func withGenericParameterList(_ newChild: SwiftSyntax.GenericParameterListSyntax?) -> SwiftSyntax.GenericParameterClauseSyntax

    public var rightAngleBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightAngleBracket` replaced.
    /// - param newChild: The new `rightAngleBracket` to replace the node's
    ///                   current `rightAngleBracket`, if present.
    public func withRightAngleBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterClauseSyntax

    /// Determines if two `GenericParameterClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GenericParameterClauseSyntax, rhs: SwiftSyntax.GenericParameterClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GenericParameterClauseSyntax {

    /// Creates a `GenericParameterClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GenericParameterClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GenericParameterClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GenericParameterClauseSyntaxBuilder) -> Swift.Void)
}

public struct GenericParameterClauseSyntaxBuilder {

    public mutating func useLeftAngleBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addGenericParameter(_ elt: SwiftSyntax.GenericParameterSyntax)

    public mutating func useRightAngleBracket(_ node: SwiftSyntax.TokenSyntax)
}

/// `GenericParameterListSyntax` represents a collection of one or more
/// `GenericParameterSyntax` nodes. GenericParameterListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct GenericParameterListSyntax {

    /// Creates a new `GenericParameterListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `GenericParameterListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.GenericParameterSyntax) -> SwiftSyntax.GenericParameterListSyntax

    /// Creates a new `GenericParameterListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `GenericParameterListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.GenericParameterSyntax) -> SwiftSyntax.GenericParameterListSyntax

    /// Creates a new `GenericParameterListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `GenericParameterListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.GenericParameterSyntax, at index: Int) -> SwiftSyntax.GenericParameterListSyntax

    /// Creates a new `GenericParameterListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `GenericParameterListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.GenericParameterListSyntax

    /// Creates a new `GenericParameterListSyntax` by removing the first element.
    ///
    /// - Returns: A new `GenericParameterListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.GenericParameterListSyntax

    /// Creates a new `GenericParameterListSyntax` by removing the last element.
    ///
    /// - Returns: A new `GenericParameterListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.GenericParameterListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.GenericParameterListSyntaxIterator
}

/// Conformance for `GenericParameterListSyntax`` to the Collection protocol.
extension GenericParameterListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.GenericParameterSyntax { get }
}

/// A type that iterates over a `GenericParameterListSyntax` using its indices.
public struct GenericParameterListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.GenericParameterSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.GenericParameterListSyntaxIterator.Element?
}

public struct GenericParameterSyntax : Syntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.GenericParameterSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.GenericParameterSyntax

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterSyntax

    public var colon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterSyntax

    public var inheritedType: TypeSyntax? { get }

    /// Returns a copy of the receiver with its `inheritedType` replaced.
    /// - param newChild: The new `inheritedType` to replace the node's
    ///                   current `inheritedType`, if present.
    public func withInheritedType(_ newChild: TypeSyntax?) -> SwiftSyntax.GenericParameterSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterSyntax

    /// Determines if two `GenericParameterSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GenericParameterSyntax, rhs: SwiftSyntax.GenericParameterSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GenericParameterSyntax {

    /// Creates a `GenericParameterSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GenericParameterSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GenericParameterSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GenericParameterSyntaxBuilder) -> Swift.Void)
}

extension GenericParameterSyntax : WithTrailingCommaSyntax {
}

public struct GenericParameterSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useInheritedType(_ node: TypeSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

/// `GenericRequirementListSyntax` represents a collection of one or more
/// `Syntax` nodes. GenericRequirementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct GenericRequirementListSyntax {

    /// Creates a new `GenericRequirementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `GenericRequirementListSyntax` with that element appended to the end.
    public func appending(_ syntax: Syntax) -> SwiftSyntax.GenericRequirementListSyntax

    /// Creates a new `GenericRequirementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `GenericRequirementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: Syntax) -> SwiftSyntax.GenericRequirementListSyntax

    /// Creates a new `GenericRequirementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `GenericRequirementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: Syntax, at index: Int) -> SwiftSyntax.GenericRequirementListSyntax

    /// Creates a new `GenericRequirementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `GenericRequirementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.GenericRequirementListSyntax

    /// Creates a new `GenericRequirementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `GenericRequirementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.GenericRequirementListSyntax

    /// Creates a new `GenericRequirementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `GenericRequirementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.GenericRequirementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.GenericRequirementListSyntaxIterator
}

/// Conformance for `GenericRequirementListSyntax`` to the Collection protocol.
extension GenericRequirementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> Syntax { get }
}

/// A type that iterates over a `GenericRequirementListSyntax` using its indices.
public struct GenericRequirementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = Syntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.GenericRequirementListSyntaxIterator.Element?
}

public struct GenericWhereClauseSyntax : Syntax, Hashable {

    public var whereKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `whereKeyword` replaced.
    /// - param newChild: The new `whereKeyword` to replace the node's
    ///                   current `whereKeyword`, if present.
    public func withWhereKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericWhereClauseSyntax

    public var requirementList: SwiftSyntax.GenericRequirementListSyntax { get }

    /// Adds the provided `GenericRequirement` to the node's `requirementList`
    /// collection.
    /// - param element: The new `GenericRequirement` to add to the node's
    ///                  `requirementList` collection.
    /// - returns: A copy of the receiver with the provided `GenericRequirement`
    ///            appended to its `requirementList` collection.
    public func addGenericRequirement(_ element: Syntax) -> SwiftSyntax.GenericWhereClauseSyntax

    /// Returns a copy of the receiver with its `requirementList` replaced.
    /// - param newChild: The new `requirementList` to replace the node's
    ///                   current `requirementList`, if present.
    public func withRequirementList(_ newChild: SwiftSyntax.GenericRequirementListSyntax?) -> SwiftSyntax.GenericWhereClauseSyntax

    /// Determines if two `GenericWhereClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GenericWhereClauseSyntax, rhs: SwiftSyntax.GenericWhereClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GenericWhereClauseSyntax {

    /// Creates a `GenericWhereClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GenericWhereClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GenericWhereClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GenericWhereClauseSyntaxBuilder) -> Swift.Void)
}

public struct GenericWhereClauseSyntaxBuilder {

    public mutating func useWhereKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addGenericRequirement(_ elt: Syntax)
}

public struct GuardStmtSyntax : StmtSyntax, Hashable {

    public var guardKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `guardKeyword` replaced.
    /// - param newChild: The new `guardKeyword` to replace the node's
    ///                   current `guardKeyword`, if present.
    public func withGuardKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GuardStmtSyntax

    public var conditions: SwiftSyntax.ConditionElementListSyntax { get }

    /// Adds the provided `ConditionElement` to the node's `conditions`
    /// collection.
    /// - param element: The new `ConditionElement` to add to the node's
    ///                  `conditions` collection.
    /// - returns: A copy of the receiver with the provided `ConditionElement`
    ///            appended to its `conditions` collection.
    public func addConditionElement(_ element: SwiftSyntax.ConditionElementSyntax) -> SwiftSyntax.GuardStmtSyntax

    /// Returns a copy of the receiver with its `conditions` replaced.
    /// - param newChild: The new `conditions` to replace the node's
    ///                   current `conditions`, if present.
    public func withConditions(_ newChild: SwiftSyntax.ConditionElementListSyntax?) -> SwiftSyntax.GuardStmtSyntax

    public var elseKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `elseKeyword` replaced.
    /// - param newChild: The new `elseKeyword` to replace the node's
    ///                   current `elseKeyword`, if present.
    public func withElseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GuardStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.GuardStmtSyntax

    /// Determines if two `GuardStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.GuardStmtSyntax, rhs: SwiftSyntax.GuardStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension GuardStmtSyntax {

    /// Creates a `GuardStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `GuardStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `GuardStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.GuardStmtSyntaxBuilder) -> Swift.Void)
}

extension GuardStmtSyntax : WithCodeBlockSyntax {
}

public struct GuardStmtSyntaxBuilder {

    public mutating func useGuardKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addConditionElement(_ elt: SwiftSyntax.ConditionElementSyntax)

    public mutating func useElseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public protocol IdentifiedDeclSyntax {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> Self
}

public struct IdentifierExprSyntax : ExprSyntax, Hashable {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IdentifierExprSyntax

    public var declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax? { get }

    /// Returns a copy of the receiver with its `declNameArguments` replaced.
    /// - param newChild: The new `declNameArguments` to replace the node's
    ///                   current `declNameArguments`, if present.
    public func withDeclNameArguments(_ newChild: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.IdentifierExprSyntax

    /// Determines if two `IdentifierExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IdentifierExprSyntax, rhs: SwiftSyntax.IdentifierExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IdentifierExprSyntax {

    /// Creates a `IdentifierExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IdentifierExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IdentifierExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IdentifierExprSyntaxBuilder) -> Swift.Void)
}

public struct IdentifierExprSyntaxBuilder {

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDeclNameArguments(_ node: SwiftSyntax.DeclNameArgumentsSyntax)
}

public struct IdentifierPatternSyntax : PatternSyntax, Hashable {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IdentifierPatternSyntax

    /// Determines if two `IdentifierPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IdentifierPatternSyntax, rhs: SwiftSyntax.IdentifierPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IdentifierPatternSyntax {

    /// Creates a `IdentifierPatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IdentifierPatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IdentifierPatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IdentifierPatternSyntaxBuilder) -> Swift.Void)
}

public struct IdentifierPatternSyntaxBuilder {

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)
}

public struct IfConfigDeclSyntax : DeclSyntax, Hashable {

    public var poundIf: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundIf` replaced.
    /// - param newChild: The new `poundIf` to replace the node's
    ///                   current `poundIf`, if present.
    public func withPoundIf(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    public var condition: ExprSyntax { get }

    /// Returns a copy of the receiver with its `condition` replaced.
    /// - param newChild: The new `condition` to replace the node's
    ///                   current `condition`, if present.
    public func withCondition(_ newChild: ExprSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.IfConfigDeclSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    public var elseifDirectiveClauses: SwiftSyntax.ElseifDirectiveClauseListSyntax? { get }

    /// Adds the provided `ElseifDirectiveClause` to the node's `elseifDirectiveClauses`
    /// collection.
    /// - param element: The new `ElseifDirectiveClause` to add to the node's
    ///                  `elseifDirectiveClauses` collection.
    /// - returns: A copy of the receiver with the provided `ElseifDirectiveClause`
    ///            appended to its `elseifDirectiveClauses` collection.
    public func addElseifDirectiveClause(_ element: SwiftSyntax.ElseifDirectiveClauseSyntax) -> SwiftSyntax.IfConfigDeclSyntax

    /// Returns a copy of the receiver with its `elseifDirectiveClauses` replaced.
    /// - param newChild: The new `elseifDirectiveClauses` to replace the node's
    ///                   current `elseifDirectiveClauses`, if present.
    public func withElseifDirectiveClauses(_ newChild: SwiftSyntax.ElseifDirectiveClauseListSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    public var elseClause: SwiftSyntax.ElseDirectiveClauseSyntax? { get }

    /// Returns a copy of the receiver with its `elseClause` replaced.
    /// - param newChild: The new `elseClause` to replace the node's
    ///                   current `elseClause`, if present.
    public func withElseClause(_ newChild: SwiftSyntax.ElseDirectiveClauseSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    public var poundEndif: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundEndif` replaced.
    /// - param newChild: The new `poundEndif` to replace the node's
    ///                   current `poundEndif`, if present.
    public func withPoundEndif(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfConfigDeclSyntax

    /// Determines if two `IfConfigDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IfConfigDeclSyntax, rhs: SwiftSyntax.IfConfigDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IfConfigDeclSyntax {

    /// Creates a `IfConfigDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IfConfigDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IfConfigDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IfConfigDeclSyntaxBuilder) -> Swift.Void)
}

extension IfConfigDeclSyntax : WithStatementsSyntax {
}

public struct IfConfigDeclSyntaxBuilder {

    public mutating func usePoundIf(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useCondition(_ node: ExprSyntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)

    public mutating func addElseifDirectiveClause(_ elt: SwiftSyntax.ElseifDirectiveClauseSyntax)

    public mutating func useElseClause(_ node: SwiftSyntax.ElseDirectiveClauseSyntax)

    public mutating func usePoundEndif(_ node: SwiftSyntax.TokenSyntax)
}

public struct IfStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var ifKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `ifKeyword` replaced.
    /// - param newChild: The new `ifKeyword` to replace the node's
    ///                   current `ifKeyword`, if present.
    public func withIfKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var conditions: SwiftSyntax.ConditionElementListSyntax { get }

    /// Adds the provided `ConditionElement` to the node's `conditions`
    /// collection.
    /// - param element: The new `ConditionElement` to add to the node's
    ///                  `conditions` collection.
    /// - returns: A copy of the receiver with the provided `ConditionElement`
    ///            appended to its `conditions` collection.
    public func addConditionElement(_ element: SwiftSyntax.ConditionElementSyntax) -> SwiftSyntax.IfStmtSyntax

    /// Returns a copy of the receiver with its `conditions` replaced.
    /// - param newChild: The new `conditions` to replace the node's
    ///                   current `conditions`, if present.
    public func withConditions(_ newChild: SwiftSyntax.ConditionElementListSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var elseKeyword: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `elseKeyword` replaced.
    /// - param newChild: The new `elseKeyword` to replace the node's
    ///                   current `elseKeyword`, if present.
    public func withElseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IfStmtSyntax

    public var elseBody: Syntax? { get }

    /// Returns a copy of the receiver with its `elseBody` replaced.
    /// - param newChild: The new `elseBody` to replace the node's
    ///                   current `elseBody`, if present.
    public func withElseBody(_ newChild: Syntax?) -> SwiftSyntax.IfStmtSyntax

    /// Determines if two `IfStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IfStmtSyntax, rhs: SwiftSyntax.IfStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IfStmtSyntax {

    /// Creates a `IfStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IfStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IfStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IfStmtSyntaxBuilder) -> Swift.Void)
}

extension IfStmtSyntax : WithCodeBlockSyntax, LabeledSyntax {
}

public struct IfStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIfKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addConditionElement(_ elt: SwiftSyntax.ConditionElementSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)

    public mutating func useElseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useElseBody(_ node: Syntax)
}

public struct ImplicitMemberExprSyntax : ExprSyntax, Hashable {

    public var dot: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `dot` replaced.
    /// - param newChild: The new `dot` to replace the node's
    ///                   current `dot`, if present.
    public func withDot(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ImplicitMemberExprSyntax

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ImplicitMemberExprSyntax

    public var declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax? { get }

    /// Returns a copy of the receiver with its `declNameArguments` replaced.
    /// - param newChild: The new `declNameArguments` to replace the node's
    ///                   current `declNameArguments`, if present.
    public func withDeclNameArguments(_ newChild: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.ImplicitMemberExprSyntax

    /// Determines if two `ImplicitMemberExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ImplicitMemberExprSyntax, rhs: SwiftSyntax.ImplicitMemberExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ImplicitMemberExprSyntax {

    /// Creates a `ImplicitMemberExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ImplicitMemberExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ImplicitMemberExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ImplicitMemberExprSyntaxBuilder) -> Swift.Void)
}

public struct ImplicitMemberExprSyntaxBuilder {

    public mutating func useDot(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDeclNameArguments(_ node: SwiftSyntax.DeclNameArgumentsSyntax)
}

public struct ImplicitlyUnwrappedOptionalTypeSyntax : TypeSyntax, Hashable {

    public var wrappedType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `wrappedType` replaced.
    /// - param newChild: The new `wrappedType` to replace the node's
    ///                   current `wrappedType`, if present.
    public func withWrappedType(_ newChild: TypeSyntax?) -> SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax

    public var exclamationMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `exclamationMark` replaced.
    /// - param newChild: The new `exclamationMark` to replace the node's
    ///                   current `exclamationMark`, if present.
    public func withExclamationMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax

    /// Determines if two `ImplicitlyUnwrappedOptionalTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax, rhs: SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ImplicitlyUnwrappedOptionalTypeSyntax {

    /// Creates a `ImplicitlyUnwrappedOptionalTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ImplicitlyUnwrappedOptionalTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ImplicitlyUnwrappedOptionalTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntaxBuilder) -> Swift.Void)
}

public struct ImplicitlyUnwrappedOptionalTypeSyntaxBuilder {

    public mutating func useWrappedType(_ node: TypeSyntax)

    public mutating func useExclamationMark(_ node: SwiftSyntax.TokenSyntax)
}

public struct ImportDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.ImportDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.ImportDeclSyntax

    public var importTok: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `importTok` replaced.
    /// - param newChild: The new `importTok` to replace the node's
    ///                   current `importTok`, if present.
    public func withImportTok(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ImportDeclSyntax

    public var importKind: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `importKind` replaced.
    /// - param newChild: The new `importKind` to replace the node's
    ///                   current `importKind`, if present.
    public func withImportKind(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ImportDeclSyntax

    public var path: SwiftSyntax.AccessPathSyntax { get }

    /// Adds the provided `AccessPathComponent` to the node's `path`
    /// collection.
    /// - param element: The new `AccessPathComponent` to add to the node's
    ///                  `path` collection.
    /// - returns: A copy of the receiver with the provided `AccessPathComponent`
    ///            appended to its `path` collection.
    public func addAccessPathComponent(_ element: SwiftSyntax.AccessPathComponentSyntax) -> SwiftSyntax.ImportDeclSyntax

    /// Returns a copy of the receiver with its `path` replaced.
    /// - param newChild: The new `path` to replace the node's
    ///                   current `path`, if present.
    public func withPath(_ newChild: SwiftSyntax.AccessPathSyntax?) -> SwiftSyntax.ImportDeclSyntax

    /// Determines if two `ImportDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ImportDeclSyntax, rhs: SwiftSyntax.ImportDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ImportDeclSyntax {

    /// Creates a `ImportDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ImportDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ImportDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ImportDeclSyntaxBuilder) -> Swift.Void)
}

public struct ImportDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useImportTok(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useImportKind(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addAccessPathComponent(_ elt: SwiftSyntax.AccessPathComponentSyntax)
}

public struct InOutExprSyntax : ExprSyntax, Hashable {

    public var ampersand: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `ampersand` replaced.
    /// - param newChild: The new `ampersand` to replace the node's
    ///                   current `ampersand`, if present.
    public func withAmpersand(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InOutExprSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.InOutExprSyntax

    /// Determines if two `InOutExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.InOutExprSyntax, rhs: SwiftSyntax.InOutExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension InOutExprSyntax {

    /// Creates a `InOutExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `InOutExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `InOutExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.InOutExprSyntaxBuilder) -> Swift.Void)
}

public struct InOutExprSyntaxBuilder {

    public mutating func useAmpersand(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)
}

/// `InheritedTypeListSyntax` represents a collection of one or more
/// `InheritedTypeSyntax` nodes. InheritedTypeListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct InheritedTypeListSyntax {

    /// Creates a new `InheritedTypeListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `InheritedTypeListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.InheritedTypeSyntax) -> SwiftSyntax.InheritedTypeListSyntax

    /// Creates a new `InheritedTypeListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `InheritedTypeListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.InheritedTypeSyntax) -> SwiftSyntax.InheritedTypeListSyntax

    /// Creates a new `InheritedTypeListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `InheritedTypeListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.InheritedTypeSyntax, at index: Int) -> SwiftSyntax.InheritedTypeListSyntax

    /// Creates a new `InheritedTypeListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `InheritedTypeListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.InheritedTypeListSyntax

    /// Creates a new `InheritedTypeListSyntax` by removing the first element.
    ///
    /// - Returns: A new `InheritedTypeListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.InheritedTypeListSyntax

    /// Creates a new `InheritedTypeListSyntax` by removing the last element.
    ///
    /// - Returns: A new `InheritedTypeListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.InheritedTypeListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.InheritedTypeListSyntaxIterator
}

/// Conformance for `InheritedTypeListSyntax`` to the Collection protocol.
extension InheritedTypeListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.InheritedTypeSyntax { get }
}

/// A type that iterates over a `InheritedTypeListSyntax` using its indices.
public struct InheritedTypeListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.InheritedTypeSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.InheritedTypeListSyntaxIterator.Element?
}

public struct InheritedTypeSyntax : Syntax, Hashable {

    public var typeName: TypeSyntax { get }

    /// Returns a copy of the receiver with its `typeName` replaced.
    /// - param newChild: The new `typeName` to replace the node's
    ///                   current `typeName`, if present.
    public func withTypeName(_ newChild: TypeSyntax?) -> SwiftSyntax.InheritedTypeSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InheritedTypeSyntax

    /// Determines if two `InheritedTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.InheritedTypeSyntax, rhs: SwiftSyntax.InheritedTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension InheritedTypeSyntax {

    /// Creates a `InheritedTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `InheritedTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `InheritedTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.InheritedTypeSyntaxBuilder) -> Swift.Void)
}

extension InheritedTypeSyntax : WithTrailingCommaSyntax {
}

public struct InheritedTypeSyntaxBuilder {

    public mutating func useTypeName(_ node: TypeSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct InitializerClauseSyntax : Syntax, Hashable {

    public var equal: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `equal` replaced.
    /// - param newChild: The new `equal` to replace the node's
    ///                   current `equal`, if present.
    public func withEqual(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InitializerClauseSyntax

    public var value: ExprSyntax { get }

    /// Returns a copy of the receiver with its `value` replaced.
    /// - param newChild: The new `value` to replace the node's
    ///                   current `value`, if present.
    public func withValue(_ newChild: ExprSyntax?) -> SwiftSyntax.InitializerClauseSyntax

    /// Determines if two `InitializerClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.InitializerClauseSyntax, rhs: SwiftSyntax.InitializerClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension InitializerClauseSyntax {

    /// Creates a `InitializerClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `InitializerClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `InitializerClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.InitializerClauseSyntaxBuilder) -> Swift.Void)
}

public struct InitializerClauseSyntaxBuilder {

    public mutating func useEqual(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useValue(_ node: ExprSyntax)
}

public struct InitializerDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.InitializerDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var modifiers: SwiftSyntax.ModifierListSyntax? { get }

    /// Adds the provided `Modifier` to the node's `modifiers`
    /// collection.
    /// - param element: The new `Modifier` to add to the node's
    ///                  `modifiers` collection.
    /// - returns: A copy of the receiver with the provided `Modifier`
    ///            appended to its `modifiers` collection.
    public func addModifier(_ element: Syntax) -> SwiftSyntax.InitializerDeclSyntax

    /// Returns a copy of the receiver with its `modifiers` replaced.
    /// - param newChild: The new `modifiers` to replace the node's
    ///                   current `modifiers`, if present.
    public func withModifiers(_ newChild: SwiftSyntax.ModifierListSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var initKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `initKeyword` replaced.
    /// - param newChild: The new `initKeyword` to replace the node's
    ///                   current `initKeyword`, if present.
    public func withInitKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var optionalMark: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `optionalMark` replaced.
    /// - param newChild: The new `optionalMark` to replace the node's
    ///                   current `optionalMark`, if present.
    public func withOptionalMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var parameters: SwiftSyntax.ParameterClauseSyntax { get }

    /// Returns a copy of the receiver with its `parameters` replaced.
    /// - param newChild: The new `parameters` to replace the node's
    ///                   current `parameters`, if present.
    public func withParameters(_ newChild: SwiftSyntax.ParameterClauseSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `throwsOrRethrowsKeyword` replaced.
    /// - param newChild: The new `throwsOrRethrowsKeyword` to replace the node's
    ///                   current `throwsOrRethrowsKeyword`, if present.
    public func withThrowsOrRethrowsKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public var body: SwiftSyntax.CodeBlockSyntax? { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    /// Determines if two `InitializerDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.InitializerDeclSyntax, rhs: SwiftSyntax.InitializerDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension InitializerDeclSyntax {

    /// Creates a `InitializerDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `InitializerDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `InitializerDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.InitializerDeclSyntaxBuilder) -> Swift.Void)
}

public struct InitializerDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func addModifier(_ elt: Syntax)

    public mutating func useInitKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useOptionalMark(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useParameters(_ node: SwiftSyntax.ParameterClauseSyntax)

    public mutating func useThrowsOrRethrowsKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct IntegerLiteralExprSyntax : ExprSyntax, Hashable {

    public var digits: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `digits` replaced.
    /// - param newChild: The new `digits` to replace the node's
    ///                   current `digits`, if present.
    public func withDigits(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IntegerLiteralExprSyntax

    /// Determines if two `IntegerLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IntegerLiteralExprSyntax, rhs: SwiftSyntax.IntegerLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IntegerLiteralExprSyntax {

    /// Creates a `IntegerLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IntegerLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IntegerLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IntegerLiteralExprSyntaxBuilder) -> Swift.Void)
}

public struct IntegerLiteralExprSyntaxBuilder {

    public mutating func useDigits(_ node: SwiftSyntax.TokenSyntax)
}

public struct IsExprSyntax : ExprSyntax, Hashable {

    public var isTok: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `isTok` replaced.
    /// - param newChild: The new `isTok` to replace the node's
    ///                   current `isTok`, if present.
    public func withIsTok(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IsExprSyntax

    public var typeName: TypeSyntax { get }

    /// Returns a copy of the receiver with its `typeName` replaced.
    /// - param newChild: The new `typeName` to replace the node's
    ///                   current `typeName`, if present.
    public func withTypeName(_ newChild: TypeSyntax?) -> SwiftSyntax.IsExprSyntax

    /// Determines if two `IsExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IsExprSyntax, rhs: SwiftSyntax.IsExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IsExprSyntax {

    /// Creates a `IsExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IsExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IsExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IsExprSyntaxBuilder) -> Swift.Void)
}

public struct IsExprSyntaxBuilder {

    public mutating func useIsTok(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTypeName(_ node: TypeSyntax)
}

public struct IsTypePatternSyntax : PatternSyntax, Hashable {

    public var isKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `isKeyword` replaced.
    /// - param newChild: The new `isKeyword` to replace the node's
    ///                   current `isKeyword`, if present.
    public func withIsKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.IsTypePatternSyntax

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.IsTypePatternSyntax

    /// Determines if two `IsTypePatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.IsTypePatternSyntax, rhs: SwiftSyntax.IsTypePatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension IsTypePatternSyntax {

    /// Creates a `IsTypePatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `IsTypePatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `IsTypePatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.IsTypePatternSyntaxBuilder) -> Swift.Void)
}

public struct IsTypePatternSyntaxBuilder {

    public mutating func useIsKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useType(_ node: TypeSyntax)
}

final public class JSONDiagnosticConsumer : DiagnosticConsumer {

    /// Creates a JSONDiagnosticConsumer that will output the generated JSON
    /// to a file at the given URL.
    /// - parameter outputURL: The URL that the consumer will write JSON
    ///                        diagnostics to.
    /// - note: If a file exists at the URL already, it will be overwritten.
    public init(outputURL: URL)

    /// Creates a JSONDiagnosticConsumer that will output the generated JSON
    /// to standard output.
    public init()

    /// Adds the diagnostic to the list of registered diagnostics.
    public func handle(_ diagnostic: SwiftSyntax.Diagnostic)

    /// Writes the contents of the diagnostics as JSON out to the specified
    /// output location.
    public func finalize()
}

public struct KeyPathExprSyntax : ExprSyntax, Hashable {

    public var backslash: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `backslash` replaced.
    /// - param newChild: The new `backslash` to replace the node's
    ///                   current `backslash`, if present.
    public func withBackslash(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.KeyPathExprSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.KeyPathExprSyntax

    /// Determines if two `KeyPathExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.KeyPathExprSyntax, rhs: SwiftSyntax.KeyPathExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension KeyPathExprSyntax {

    /// Creates a `KeyPathExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `KeyPathExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `KeyPathExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.KeyPathExprSyntaxBuilder) -> Swift.Void)
}

public struct KeyPathExprSyntaxBuilder {

    public mutating func useBackslash(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)
}

public protocol LabeledSyntax {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> Self

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> Self
}

public struct MatchingPatternConditionSyntax : Syntax, Hashable {

    public var caseKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `caseKeyword` replaced.
    /// - param newChild: The new `caseKeyword` to replace the node's
    ///                   current `caseKeyword`, if present.
    public func withCaseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MatchingPatternConditionSyntax

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.MatchingPatternConditionSyntax

    public var typeAnnotation: SwiftSyntax.TypeAnnotationSyntax? { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.MatchingPatternConditionSyntax

    public var initializer: SwiftSyntax.InitializerClauseSyntax { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.InitializerClauseSyntax?) -> SwiftSyntax.MatchingPatternConditionSyntax

    /// Determines if two `MatchingPatternConditionSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.MatchingPatternConditionSyntax, rhs: SwiftSyntax.MatchingPatternConditionSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension MatchingPatternConditionSyntax {

    /// Creates a `MatchingPatternConditionSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `MatchingPatternConditionSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `MatchingPatternConditionSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.MatchingPatternConditionSyntaxBuilder) -> Swift.Void)
}

public struct MatchingPatternConditionSyntaxBuilder {

    public mutating func useCaseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useTypeAnnotation(_ node: SwiftSyntax.TypeAnnotationSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.InitializerClauseSyntax)
}

public struct MemberAccessExprSyntax : ExprSyntax, Hashable {

    public var base: ExprSyntax { get }

    /// Returns a copy of the receiver with its `base` replaced.
    /// - param newChild: The new `base` to replace the node's
    ///                   current `base`, if present.
    public func withBase(_ newChild: ExprSyntax?) -> SwiftSyntax.MemberAccessExprSyntax

    public var dot: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `dot` replaced.
    /// - param newChild: The new `dot` to replace the node's
    ///                   current `dot`, if present.
    public func withDot(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberAccessExprSyntax

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberAccessExprSyntax

    public var declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax? { get }

    /// Returns a copy of the receiver with its `declNameArguments` replaced.
    /// - param newChild: The new `declNameArguments` to replace the node's
    ///                   current `declNameArguments`, if present.
    public func withDeclNameArguments(_ newChild: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.MemberAccessExprSyntax

    /// Determines if two `MemberAccessExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.MemberAccessExprSyntax, rhs: SwiftSyntax.MemberAccessExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension MemberAccessExprSyntax {

    /// Creates a `MemberAccessExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `MemberAccessExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `MemberAccessExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.MemberAccessExprSyntaxBuilder) -> Swift.Void)
}

public struct MemberAccessExprSyntaxBuilder {

    public mutating func useBase(_ node: ExprSyntax)

    public mutating func useDot(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDeclNameArguments(_ node: SwiftSyntax.DeclNameArgumentsSyntax)
}

public struct MemberDeclBlockSyntax : Syntax, Hashable {

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBrace` replaced.
    /// - param newChild: The new `leftBrace` to replace the node's
    ///                   current `leftBrace`, if present.
    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberDeclBlockSyntax

    public var members: SwiftSyntax.DeclListSyntax { get }

    /// Adds the provided `Decl` to the node's `members`
    /// collection.
    /// - param element: The new `Decl` to add to the node's
    ///                  `members` collection.
    /// - returns: A copy of the receiver with the provided `Decl`
    ///            appended to its `members` collection.
    public func addDecl(_ element: DeclSyntax) -> SwiftSyntax.MemberDeclBlockSyntax

    /// Returns a copy of the receiver with its `members` replaced.
    /// - param newChild: The new `members` to replace the node's
    ///                   current `members`, if present.
    public func withMembers(_ newChild: SwiftSyntax.DeclListSyntax?) -> SwiftSyntax.MemberDeclBlockSyntax

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBrace` replaced.
    /// - param newChild: The new `rightBrace` to replace the node's
    ///                   current `rightBrace`, if present.
    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberDeclBlockSyntax

    /// Determines if two `MemberDeclBlockSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.MemberDeclBlockSyntax, rhs: SwiftSyntax.MemberDeclBlockSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension MemberDeclBlockSyntax {

    /// Creates a `MemberDeclBlockSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `MemberDeclBlockSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `MemberDeclBlockSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.MemberDeclBlockSyntaxBuilder) -> Swift.Void)
}

extension MemberDeclBlockSyntax : BracedSyntax {
}

public struct MemberDeclBlockSyntaxBuilder {

    public mutating func useLeftBrace(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addDecl(_ elt: DeclSyntax)

    public mutating func useRightBrace(_ node: SwiftSyntax.TokenSyntax)
}

public struct MemberTypeIdentifierSyntax : TypeSyntax, Hashable {

    public var baseType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `baseType` replaced.
    /// - param newChild: The new `baseType` to replace the node's
    ///                   current `baseType`, if present.
    public func withBaseType(_ newChild: TypeSyntax?) -> SwiftSyntax.MemberTypeIdentifierSyntax

    public var period: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `period` replaced.
    /// - param newChild: The new `period` to replace the node's
    ///                   current `period`, if present.
    public func withPeriod(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberTypeIdentifierSyntax

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MemberTypeIdentifierSyntax

    public var genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericArgumentClause` replaced.
    /// - param newChild: The new `genericArgumentClause` to replace the node's
    ///                   current `genericArgumentClause`, if present.
    public func withGenericArgumentClause(_ newChild: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.MemberTypeIdentifierSyntax

    /// Determines if two `MemberTypeIdentifierSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.MemberTypeIdentifierSyntax, rhs: SwiftSyntax.MemberTypeIdentifierSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension MemberTypeIdentifierSyntax {

    /// Creates a `MemberTypeIdentifierSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `MemberTypeIdentifierSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `MemberTypeIdentifierSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.MemberTypeIdentifierSyntaxBuilder) -> Swift.Void)
}

public struct MemberTypeIdentifierSyntaxBuilder {

    public mutating func useBaseType(_ node: TypeSyntax)

    public mutating func usePeriod(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericArgumentClause(_ node: SwiftSyntax.GenericArgumentClauseSyntax)
}

public struct MetatypeTypeSyntax : TypeSyntax, Hashable {

    public var baseType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `baseType` replaced.
    /// - param newChild: The new `baseType` to replace the node's
    ///                   current `baseType`, if present.
    public func withBaseType(_ newChild: TypeSyntax?) -> SwiftSyntax.MetatypeTypeSyntax

    public var period: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `period` replaced.
    /// - param newChild: The new `period` to replace the node's
    ///                   current `period`, if present.
    public func withPeriod(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MetatypeTypeSyntax

    public var typeOrProtocol: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `typeOrProtocol` replaced.
    /// - param newChild: The new `typeOrProtocol` to replace the node's
    ///                   current `typeOrProtocol`, if present.
    public func withTypeOrProtocol(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.MetatypeTypeSyntax

    /// Determines if two `MetatypeTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.MetatypeTypeSyntax, rhs: SwiftSyntax.MetatypeTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension MetatypeTypeSyntax {

    /// Creates a `MetatypeTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `MetatypeTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `MetatypeTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.MetatypeTypeSyntaxBuilder) -> Swift.Void)
}

public struct MetatypeTypeSyntaxBuilder {

    public mutating func useBaseType(_ node: TypeSyntax)

    public mutating func usePeriod(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTypeOrProtocol(_ node: SwiftSyntax.TokenSyntax)
}

/// `ModifierListSyntax` represents a collection of one or more
/// `Syntax` nodes. ModifierListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ModifierListSyntax {

    /// Creates a new `ModifierListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ModifierListSyntax` with that element appended to the end.
    public func appending(_ syntax: Syntax) -> SwiftSyntax.ModifierListSyntax

    /// Creates a new `ModifierListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ModifierListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: Syntax) -> SwiftSyntax.ModifierListSyntax

    /// Creates a new `ModifierListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ModifierListSyntax` with that element appended to the end.
    public func inserting(_ syntax: Syntax, at index: Int) -> SwiftSyntax.ModifierListSyntax

    /// Creates a new `ModifierListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ModifierListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ModifierListSyntax

    /// Creates a new `ModifierListSyntax` by removing the first element.
    ///
    /// - Returns: A new `ModifierListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ModifierListSyntax

    /// Creates a new `ModifierListSyntax` by removing the last element.
    ///
    /// - Returns: A new `ModifierListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ModifierListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ModifierListSyntaxIterator
}

/// Conformance for `ModifierListSyntax`` to the Collection protocol.
extension ModifierListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> Syntax { get }
}

/// A type that iterates over a `ModifierListSyntax` using its indices.
public struct ModifierListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = Syntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ModifierListSyntaxIterator.Element?
}

public struct NilLiteralExprSyntax : ExprSyntax, Hashable {

    public var nilKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `nilKeyword` replaced.
    /// - param newChild: The new `nilKeyword` to replace the node's
    ///                   current `nilKeyword`, if present.
    public func withNilKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.NilLiteralExprSyntax

    /// Determines if two `NilLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.NilLiteralExprSyntax, rhs: SwiftSyntax.NilLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension NilLiteralExprSyntax {

    /// Creates a `NilLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `NilLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `NilLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.NilLiteralExprSyntaxBuilder) -> Swift.Void)
}

public struct NilLiteralExprSyntaxBuilder {

    public mutating func useNilKeyword(_ node: SwiftSyntax.TokenSyntax)
}

/// A Note attached to a Diagnostic. This provides more context for a specific
/// error, and optionally allows for FixIts.
public struct Note : Swift.Codable {

    /// The note's message.
    public let message: SwiftSyntax.Diagnostic.Message

    /// The source location where the note should point.
    public let location: SwiftSyntax.SourceLocation?

    /// An array of source ranges that should be highlighted.
    public let highlights: [SwiftSyntax.SourceRange]

    /// An array of FixIts that apply to this note.
    public let fixIts: [SwiftSyntax.FixIt]
}

public struct ObjcKeyPathExprSyntax : ExprSyntax, Hashable {

    public var keyPath: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `keyPath` replaced.
    /// - param newChild: The new `keyPath` to replace the node's
    ///                   current `keyPath`, if present.
    public func withKeyPath(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcKeyPathExprSyntax

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcKeyPathExprSyntax

    public var name: SwiftSyntax.ObjcNameSyntax { get }

    /// Adds the provided `ObjcNamePiece` to the node's `name`
    /// collection.
    /// - param element: The new `ObjcNamePiece` to add to the node's
    ///                  `name` collection.
    /// - returns: A copy of the receiver with the provided `ObjcNamePiece`
    ///            appended to its `name` collection.
    public func addObjcNamePiece(_ element: SwiftSyntax.ObjcNamePieceSyntax) -> SwiftSyntax.ObjcKeyPathExprSyntax

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.ObjcNameSyntax?) -> SwiftSyntax.ObjcKeyPathExprSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcKeyPathExprSyntax

    /// Determines if two `ObjcKeyPathExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ObjcKeyPathExprSyntax, rhs: SwiftSyntax.ObjcKeyPathExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ObjcKeyPathExprSyntax {

    /// Creates a `ObjcKeyPathExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ObjcKeyPathExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ObjcKeyPathExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ObjcKeyPathExprSyntaxBuilder) -> Swift.Void)
}

extension ObjcKeyPathExprSyntax : ParenthesizedSyntax {
}

public struct ObjcKeyPathExprSyntaxBuilder {

    public mutating func useKeyPath(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addObjcNamePiece(_ elt: SwiftSyntax.ObjcNamePieceSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct ObjcNamePieceSyntax : Syntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcNamePieceSyntax

    public var dot: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `dot` replaced.
    /// - param newChild: The new `dot` to replace the node's
    ///                   current `dot`, if present.
    public func withDot(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcNamePieceSyntax

    /// Determines if two `ObjcNamePieceSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ObjcNamePieceSyntax, rhs: SwiftSyntax.ObjcNamePieceSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ObjcNamePieceSyntax {

    /// Creates a `ObjcNamePieceSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ObjcNamePieceSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ObjcNamePieceSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ObjcNamePieceSyntaxBuilder) -> Swift.Void)
}

public struct ObjcNamePieceSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useDot(_ node: SwiftSyntax.TokenSyntax)
}

/// `ObjcNameSyntax` represents a collection of one or more
/// `ObjcNamePieceSyntax` nodes. ObjcNameSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct ObjcNameSyntax {

    /// Creates a new `ObjcNameSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `ObjcNameSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.ObjcNamePieceSyntax) -> SwiftSyntax.ObjcNameSyntax

    /// Creates a new `ObjcNameSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `ObjcNameSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.ObjcNamePieceSyntax) -> SwiftSyntax.ObjcNameSyntax

    /// Creates a new `ObjcNameSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `ObjcNameSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.ObjcNamePieceSyntax, at index: Int) -> SwiftSyntax.ObjcNameSyntax

    /// Creates a new `ObjcNameSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `ObjcNameSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.ObjcNameSyntax

    /// Creates a new `ObjcNameSyntax` by removing the first element.
    ///
    /// - Returns: A new `ObjcNameSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.ObjcNameSyntax

    /// Creates a new `ObjcNameSyntax` by removing the last element.
    ///
    /// - Returns: A new `ObjcNameSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.ObjcNameSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.ObjcNameSyntaxIterator
}

/// Conformance for `ObjcNameSyntax`` to the Collection protocol.
extension ObjcNameSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.ObjcNamePieceSyntax { get }
}

/// A type that iterates over a `ObjcNameSyntax` using its indices.
public struct ObjcNameSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.ObjcNamePieceSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.ObjcNameSyntaxIterator.Element?
}

public struct ObjectLiteralExprSyntax : ExprSyntax, Hashable {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjectLiteralExprSyntax

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjectLiteralExprSyntax

    public var arguments: SwiftSyntax.FunctionCallArgumentListSyntax { get }

    /// Adds the provided `FunctionCallArgument` to the node's `arguments`
    /// collection.
    /// - param element: The new `FunctionCallArgument` to add to the node's
    ///                  `arguments` collection.
    /// - returns: A copy of the receiver with the provided `FunctionCallArgument`
    ///            appended to its `arguments` collection.
    public func addFunctionCallArgument(_ element: SwiftSyntax.FunctionCallArgumentSyntax) -> SwiftSyntax.ObjectLiteralExprSyntax

    /// Returns a copy of the receiver with its `arguments` replaced.
    /// - param newChild: The new `arguments` to replace the node's
    ///                   current `arguments`, if present.
    public func withArguments(_ newChild: SwiftSyntax.FunctionCallArgumentListSyntax?) -> SwiftSyntax.ObjectLiteralExprSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjectLiteralExprSyntax

    /// Determines if two `ObjectLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ObjectLiteralExprSyntax, rhs: SwiftSyntax.ObjectLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ObjectLiteralExprSyntax {

    /// Creates a `ObjectLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ObjectLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ObjectLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ObjectLiteralExprSyntaxBuilder) -> Swift.Void)
}

extension ObjectLiteralExprSyntax : ParenthesizedSyntax {
}

public struct ObjectLiteralExprSyntaxBuilder {

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addFunctionCallArgument(_ elt: SwiftSyntax.FunctionCallArgumentSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct OptionalBindingConditionSyntax : Syntax, Hashable {

    public var letOrVarKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `letOrVarKeyword` replaced.
    /// - param newChild: The new `letOrVarKeyword` to replace the node's
    ///                   current `letOrVarKeyword`, if present.
    public func withLetOrVarKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.OptionalBindingConditionSyntax

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.OptionalBindingConditionSyntax

    public var typeAnnotation: SwiftSyntax.TypeAnnotationSyntax? { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.OptionalBindingConditionSyntax

    public var initializer: SwiftSyntax.InitializerClauseSyntax { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.InitializerClauseSyntax?) -> SwiftSyntax.OptionalBindingConditionSyntax

    /// Determines if two `OptionalBindingConditionSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.OptionalBindingConditionSyntax, rhs: SwiftSyntax.OptionalBindingConditionSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension OptionalBindingConditionSyntax {

    /// Creates a `OptionalBindingConditionSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `OptionalBindingConditionSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `OptionalBindingConditionSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.OptionalBindingConditionSyntaxBuilder) -> Swift.Void)
}

public struct OptionalBindingConditionSyntaxBuilder {

    public mutating func useLetOrVarKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useTypeAnnotation(_ node: SwiftSyntax.TypeAnnotationSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.InitializerClauseSyntax)
}

public struct OptionalChainingExprSyntax : ExprSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.OptionalChainingExprSyntax

    public var quetionMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `quetionMark` replaced.
    /// - param newChild: The new `quetionMark` to replace the node's
    ///                   current `quetionMark`, if present.
    public func withQuetionMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.OptionalChainingExprSyntax

    /// Determines if two `OptionalChainingExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.OptionalChainingExprSyntax, rhs: SwiftSyntax.OptionalChainingExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension OptionalChainingExprSyntax {

    /// Creates a `OptionalChainingExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `OptionalChainingExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `OptionalChainingExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.OptionalChainingExprSyntaxBuilder) -> Swift.Void)
}

public struct OptionalChainingExprSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useQuetionMark(_ node: SwiftSyntax.TokenSyntax)
}

public struct OptionalPatternSyntax : PatternSyntax, Hashable {

    public var subPattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `subPattern` replaced.
    /// - param newChild: The new `subPattern` to replace the node's
    ///                   current `subPattern`, if present.
    public func withSubPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.OptionalPatternSyntax

    public var questionMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `questionMark` replaced.
    /// - param newChild: The new `questionMark` to replace the node's
    ///                   current `questionMark`, if present.
    public func withQuestionMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.OptionalPatternSyntax

    /// Determines if two `OptionalPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.OptionalPatternSyntax, rhs: SwiftSyntax.OptionalPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension OptionalPatternSyntax {

    /// Creates a `OptionalPatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `OptionalPatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `OptionalPatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.OptionalPatternSyntaxBuilder) -> Swift.Void)
}

public struct OptionalPatternSyntaxBuilder {

    public mutating func useSubPattern(_ node: PatternSyntax)

    public mutating func useQuestionMark(_ node: SwiftSyntax.TokenSyntax)
}

public struct OptionalTypeSyntax : TypeSyntax, Hashable {

    public var wrappedType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `wrappedType` replaced.
    /// - param newChild: The new `wrappedType` to replace the node's
    ///                   current `wrappedType`, if present.
    public func withWrappedType(_ newChild: TypeSyntax?) -> SwiftSyntax.OptionalTypeSyntax

    public var questionMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `questionMark` replaced.
    /// - param newChild: The new `questionMark` to replace the node's
    ///                   current `questionMark`, if present.
    public func withQuestionMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.OptionalTypeSyntax

    /// Determines if two `OptionalTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.OptionalTypeSyntax, rhs: SwiftSyntax.OptionalTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension OptionalTypeSyntax {

    /// Creates a `OptionalTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `OptionalTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `OptionalTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.OptionalTypeSyntaxBuilder) -> Swift.Void)
}

public struct OptionalTypeSyntaxBuilder {

    public mutating func useWrappedType(_ node: TypeSyntax)

    public mutating func useQuestionMark(_ node: SwiftSyntax.TokenSyntax)
}

public struct ParameterClauseSyntax : Syntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ParameterClauseSyntax

    public var parameterList: SwiftSyntax.FunctionParameterListSyntax { get }

    /// Adds the provided `FunctionParameter` to the node's `parameterList`
    /// collection.
    /// - param element: The new `FunctionParameter` to add to the node's
    ///                  `parameterList` collection.
    /// - returns: A copy of the receiver with the provided `FunctionParameter`
    ///            appended to its `parameterList` collection.
    public func addFunctionParameter(_ element: SwiftSyntax.FunctionParameterSyntax) -> SwiftSyntax.ParameterClauseSyntax

    /// Returns a copy of the receiver with its `parameterList` replaced.
    /// - param newChild: The new `parameterList` to replace the node's
    ///                   current `parameterList`, if present.
    public func withParameterList(_ newChild: SwiftSyntax.FunctionParameterListSyntax?) -> SwiftSyntax.ParameterClauseSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ParameterClauseSyntax

    /// Determines if two `ParameterClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ParameterClauseSyntax, rhs: SwiftSyntax.ParameterClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ParameterClauseSyntax {

    /// Creates a `ParameterClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ParameterClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ParameterClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ParameterClauseSyntaxBuilder) -> Swift.Void)
}

extension ParameterClauseSyntax : ParenthesizedSyntax {
}

public struct ParameterClauseSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addFunctionParameter(_ elt: SwiftSyntax.FunctionParameterSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public protocol ParenthesizedSyntax {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> Self

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> Self
}

/// A list of possible errors that could be encountered while parsing a
/// Syntax tree.
public enum ParserError : Error {

    case swiftcFailed(Int, String)

    case invalidFile
}

/// `PatternBindingListSyntax` represents a collection of one or more
/// `PatternBindingSyntax` nodes. PatternBindingListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct PatternBindingListSyntax {

    /// Creates a new `PatternBindingListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `PatternBindingListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.PatternBindingSyntax) -> SwiftSyntax.PatternBindingListSyntax

    /// Creates a new `PatternBindingListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `PatternBindingListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.PatternBindingSyntax) -> SwiftSyntax.PatternBindingListSyntax

    /// Creates a new `PatternBindingListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `PatternBindingListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.PatternBindingSyntax, at index: Int) -> SwiftSyntax.PatternBindingListSyntax

    /// Creates a new `PatternBindingListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `PatternBindingListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.PatternBindingListSyntax

    /// Creates a new `PatternBindingListSyntax` by removing the first element.
    ///
    /// - Returns: A new `PatternBindingListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.PatternBindingListSyntax

    /// Creates a new `PatternBindingListSyntax` by removing the last element.
    ///
    /// - Returns: A new `PatternBindingListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.PatternBindingListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.PatternBindingListSyntaxIterator
}

/// Conformance for `PatternBindingListSyntax`` to the Collection protocol.
extension PatternBindingListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.PatternBindingSyntax { get }
}

/// A type that iterates over a `PatternBindingListSyntax` using its indices.
public struct PatternBindingListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.PatternBindingSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.PatternBindingListSyntaxIterator.Element?
}

public struct PatternBindingSyntax : Syntax, Hashable {

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.PatternBindingSyntax

    public var typeAnnotation: SwiftSyntax.TypeAnnotationSyntax? { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.PatternBindingSyntax

    public var initializer: SwiftSyntax.InitializerClauseSyntax? { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.InitializerClauseSyntax?) -> SwiftSyntax.PatternBindingSyntax

    public var accessor: SwiftSyntax.AccessorBlockSyntax? { get }

    /// Returns a copy of the receiver with its `accessor` replaced.
    /// - param newChild: The new `accessor` to replace the node's
    ///                   current `accessor`, if present.
    public func withAccessor(_ newChild: SwiftSyntax.AccessorBlockSyntax?) -> SwiftSyntax.PatternBindingSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PatternBindingSyntax

    /// Determines if two `PatternBindingSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PatternBindingSyntax, rhs: SwiftSyntax.PatternBindingSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PatternBindingSyntax {

    /// Creates a `PatternBindingSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PatternBindingSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PatternBindingSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PatternBindingSyntaxBuilder) -> Swift.Void)
}

extension PatternBindingSyntax : WithTrailingCommaSyntax {
}

public struct PatternBindingSyntaxBuilder {

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useTypeAnnotation(_ node: SwiftSyntax.TypeAnnotationSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.InitializerClauseSyntax)

    public mutating func useAccessor(_ node: SwiftSyntax.AccessorBlockSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public protocol PatternSyntax : Syntax {
}

public struct PostfixUnaryExprSyntax : ExprSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.PostfixUnaryExprSyntax

    public var operatorToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `operatorToken` replaced.
    /// - param newChild: The new `operatorToken` to replace the node's
    ///                   current `operatorToken`, if present.
    public func withOperatorToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PostfixUnaryExprSyntax

    /// Determines if two `PostfixUnaryExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PostfixUnaryExprSyntax, rhs: SwiftSyntax.PostfixUnaryExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PostfixUnaryExprSyntax {

    /// Creates a `PostfixUnaryExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PostfixUnaryExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PostfixUnaryExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PostfixUnaryExprSyntaxBuilder) -> Swift.Void)
}

public struct PostfixUnaryExprSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useOperatorToken(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundColumnExprSyntax : ExprSyntax, Hashable {

    public var poundColumn: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundColumn` replaced.
    /// - param newChild: The new `poundColumn` to replace the node's
    ///                   current `poundColumn`, if present.
    public func withPoundColumn(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundColumnExprSyntax

    /// Determines if two `PoundColumnExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundColumnExprSyntax, rhs: SwiftSyntax.PoundColumnExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundColumnExprSyntax {

    /// Creates a `PoundColumnExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundColumnExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundColumnExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundColumnExprSyntaxBuilder) -> Swift.Void)
}

public struct PoundColumnExprSyntaxBuilder {

    public mutating func usePoundColumn(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundDsohandleExprSyntax : ExprSyntax, Hashable {

    public var poundDsohandle: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundDsohandle` replaced.
    /// - param newChild: The new `poundDsohandle` to replace the node's
    ///                   current `poundDsohandle`, if present.
    public func withPoundDsohandle(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundDsohandleExprSyntax

    /// Determines if two `PoundDsohandleExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundDsohandleExprSyntax, rhs: SwiftSyntax.PoundDsohandleExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundDsohandleExprSyntax {

    /// Creates a `PoundDsohandleExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundDsohandleExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundDsohandleExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundDsohandleExprSyntaxBuilder) -> Swift.Void)
}

public struct PoundDsohandleExprSyntaxBuilder {

    public mutating func usePoundDsohandle(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundErrorDeclSyntax : DeclSyntax, Hashable {

    public var poundError: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundError` replaced.
    /// - param newChild: The new `poundError` to replace the node's
    ///                   current `poundError`, if present.
    public func withPoundError(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundErrorDeclSyntax

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundErrorDeclSyntax

    public var message: SwiftSyntax.StringLiteralExprSyntax { get }

    /// Returns a copy of the receiver with its `message` replaced.
    /// - param newChild: The new `message` to replace the node's
    ///                   current `message`, if present.
    public func withMessage(_ newChild: SwiftSyntax.StringLiteralExprSyntax?) -> SwiftSyntax.PoundErrorDeclSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundErrorDeclSyntax

    /// Determines if two `PoundErrorDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundErrorDeclSyntax, rhs: SwiftSyntax.PoundErrorDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundErrorDeclSyntax {

    /// Creates a `PoundErrorDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundErrorDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundErrorDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundErrorDeclSyntaxBuilder) -> Swift.Void)
}

extension PoundErrorDeclSyntax : ParenthesizedSyntax {
}

public struct PoundErrorDeclSyntaxBuilder {

    public mutating func usePoundError(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useMessage(_ node: SwiftSyntax.StringLiteralExprSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundFileExprSyntax : ExprSyntax, Hashable {

    public var poundFile: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundFile` replaced.
    /// - param newChild: The new `poundFile` to replace the node's
    ///                   current `poundFile`, if present.
    public func withPoundFile(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundFileExprSyntax

    /// Determines if two `PoundFileExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundFileExprSyntax, rhs: SwiftSyntax.PoundFileExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundFileExprSyntax {

    /// Creates a `PoundFileExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundFileExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundFileExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundFileExprSyntaxBuilder) -> Swift.Void)
}

public struct PoundFileExprSyntaxBuilder {

    public mutating func usePoundFile(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundFunctionExprSyntax : ExprSyntax, Hashable {

    public var poundFunction: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundFunction` replaced.
    /// - param newChild: The new `poundFunction` to replace the node's
    ///                   current `poundFunction`, if present.
    public func withPoundFunction(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundFunctionExprSyntax

    /// Determines if two `PoundFunctionExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundFunctionExprSyntax, rhs: SwiftSyntax.PoundFunctionExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundFunctionExprSyntax {

    /// Creates a `PoundFunctionExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundFunctionExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundFunctionExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundFunctionExprSyntaxBuilder) -> Swift.Void)
}

public struct PoundFunctionExprSyntaxBuilder {

    public mutating func usePoundFunction(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundLineExprSyntax : ExprSyntax, Hashable {

    public var poundLine: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundLine` replaced.
    /// - param newChild: The new `poundLine` to replace the node's
    ///                   current `poundLine`, if present.
    public func withPoundLine(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundLineExprSyntax

    /// Determines if two `PoundLineExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundLineExprSyntax, rhs: SwiftSyntax.PoundLineExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundLineExprSyntax {

    /// Creates a `PoundLineExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundLineExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundLineExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundLineExprSyntaxBuilder) -> Swift.Void)
}

public struct PoundLineExprSyntaxBuilder {

    public mutating func usePoundLine(_ node: SwiftSyntax.TokenSyntax)
}

public struct PoundWarningDeclSyntax : DeclSyntax, Hashable {

    public var poundWarning: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `poundWarning` replaced.
    /// - param newChild: The new `poundWarning` to replace the node's
    ///                   current `poundWarning`, if present.
    public func withPoundWarning(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundWarningDeclSyntax

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundWarningDeclSyntax

    public var message: SwiftSyntax.StringLiteralExprSyntax { get }

    /// Returns a copy of the receiver with its `message` replaced.
    /// - param newChild: The new `message` to replace the node's
    ///                   current `message`, if present.
    public func withMessage(_ newChild: SwiftSyntax.StringLiteralExprSyntax?) -> SwiftSyntax.PoundWarningDeclSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PoundWarningDeclSyntax

    /// Determines if two `PoundWarningDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PoundWarningDeclSyntax, rhs: SwiftSyntax.PoundWarningDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PoundWarningDeclSyntax {

    /// Creates a `PoundWarningDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PoundWarningDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PoundWarningDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PoundWarningDeclSyntaxBuilder) -> Swift.Void)
}

extension PoundWarningDeclSyntax : ParenthesizedSyntax {
}

public struct PoundWarningDeclSyntaxBuilder {

    public mutating func usePoundWarning(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useMessage(_ node: SwiftSyntax.StringLiteralExprSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct PrefixOperatorExprSyntax : ExprSyntax, Hashable {

    public var operatorToken: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `operatorToken` replaced.
    /// - param newChild: The new `operatorToken` to replace the node's
    ///                   current `operatorToken`, if present.
    public func withOperatorToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PrefixOperatorExprSyntax

    public var postfixExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `postfixExpression` replaced.
    /// - param newChild: The new `postfixExpression` to replace the node's
    ///                   current `postfixExpression`, if present.
    public func withPostfixExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.PrefixOperatorExprSyntax

    /// Determines if two `PrefixOperatorExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.PrefixOperatorExprSyntax, rhs: SwiftSyntax.PrefixOperatorExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension PrefixOperatorExprSyntax {

    /// Creates a `PrefixOperatorExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `PrefixOperatorExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `PrefixOperatorExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.PrefixOperatorExprSyntaxBuilder) -> Swift.Void)
}

public struct PrefixOperatorExprSyntaxBuilder {

    public mutating func useOperatorToken(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePostfixExpression(_ node: ExprSyntax)
}

/// PrintingDiagnosticConsumer formats diagnostics and prints them to the
/// console.
public class PrintingDiagnosticConsumer : DiagnosticConsumer {

    /// Creates a new PrintingDiagnosticConsumer.
    public init()

    /// Prints the contents of a diagnostic to stderr.
    public func handle(_ diagnostic: SwiftSyntax.Diagnostic)

    /// Prints each of the fields in a diagnositic to stderr.
    public func write(_ diagnostic: SwiftSyntax.Diagnostic)

    /// Finalize the consumption of diagnostics, flushing to disk if necessary.
    public func finalize()
}

public struct ProtocolDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.ProtocolDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var protocolKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `protocolKeyword` replaced.
    /// - param newChild: The new `protocolKeyword` to replace the node's
    ///                   current `protocolKeyword`, if present.
    public func withProtocolKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax? { get }

    /// Returns a copy of the receiver with its `inheritanceClause` replaced.
    /// - param newChild: The new `inheritanceClause` to replace the node's
    ///                   current `inheritanceClause`, if present.
    public func withInheritanceClause(_ newChild: SwiftSyntax.TypeInheritanceClauseSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    public var members: SwiftSyntax.MemberDeclBlockSyntax { get }

    /// Returns a copy of the receiver with its `members` replaced.
    /// - param newChild: The new `members` to replace the node's
    ///                   current `members`, if present.
    public func withMembers(_ newChild: SwiftSyntax.MemberDeclBlockSyntax?) -> SwiftSyntax.ProtocolDeclSyntax

    /// Determines if two `ProtocolDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ProtocolDeclSyntax, rhs: SwiftSyntax.ProtocolDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ProtocolDeclSyntax {

    /// Creates a `ProtocolDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ProtocolDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ProtocolDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ProtocolDeclSyntaxBuilder) -> Swift.Void)
}

extension ProtocolDeclSyntax : DeclGroupSyntax, IdentifiedDeclSyntax {
}

public struct ProtocolDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useProtocolKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useInheritanceClause(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useMembers(_ node: SwiftSyntax.MemberDeclBlockSyntax)
}

public struct RepeatWhileStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    public var repeatKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `repeatKeyword` replaced.
    /// - param newChild: The new `repeatKeyword` to replace the node's
    ///                   current `repeatKeyword`, if present.
    public func withRepeatKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    public var whileKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `whileKeyword` replaced.
    /// - param newChild: The new `whileKeyword` to replace the node's
    ///                   current `whileKeyword`, if present.
    public func withWhileKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    public var condition: ExprSyntax { get }

    /// Returns a copy of the receiver with its `condition` replaced.
    /// - param newChild: The new `condition` to replace the node's
    ///                   current `condition`, if present.
    public func withCondition(_ newChild: ExprSyntax?) -> SwiftSyntax.RepeatWhileStmtSyntax

    /// Determines if two `RepeatWhileStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.RepeatWhileStmtSyntax, rhs: SwiftSyntax.RepeatWhileStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension RepeatWhileStmtSyntax {

    /// Creates a `RepeatWhileStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `RepeatWhileStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `RepeatWhileStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.RepeatWhileStmtSyntaxBuilder) -> Swift.Void)
}

extension RepeatWhileStmtSyntax : WithCodeBlockSyntax, LabeledSyntax {
}

public struct RepeatWhileStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useRepeatKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)

    public mutating func useWhileKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useCondition(_ node: ExprSyntax)
}

public struct ReturnClauseSyntax : Syntax, Hashable {

    public var arrow: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `arrow` replaced.
    /// - param newChild: The new `arrow` to replace the node's
    ///                   current `arrow`, if present.
    public func withArrow(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ReturnClauseSyntax

    public var returnType: TypeSyntax { get }

    /// Returns a copy of the receiver with its `returnType` replaced.
    /// - param newChild: The new `returnType` to replace the node's
    ///                   current `returnType`, if present.
    public func withReturnType(_ newChild: TypeSyntax?) -> SwiftSyntax.ReturnClauseSyntax

    /// Determines if two `ReturnClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ReturnClauseSyntax, rhs: SwiftSyntax.ReturnClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ReturnClauseSyntax {

    /// Creates a `ReturnClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ReturnClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ReturnClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ReturnClauseSyntaxBuilder) -> Swift.Void)
}

public struct ReturnClauseSyntaxBuilder {

    public mutating func useArrow(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useReturnType(_ node: TypeSyntax)
}

public struct ReturnStmtSyntax : StmtSyntax, Hashable {

    public var returnKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `returnKeyword` replaced.
    /// - param newChild: The new `returnKeyword` to replace the node's
    ///                   current `returnKeyword`, if present.
    public func withReturnKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ReturnStmtSyntax

    public var expression: ExprSyntax? { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ReturnStmtSyntax

    /// Determines if two `ReturnStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ReturnStmtSyntax, rhs: SwiftSyntax.ReturnStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ReturnStmtSyntax {

    /// Creates a `ReturnStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ReturnStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ReturnStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ReturnStmtSyntaxBuilder) -> Swift.Void)
}

public struct ReturnStmtSyntaxBuilder {

    public mutating func useReturnKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)
}

public struct SameTypeRequirementSyntax : Syntax, Hashable {

    public var leftTypeIdentifier: TypeSyntax { get }

    /// Returns a copy of the receiver with its `leftTypeIdentifier` replaced.
    /// - param newChild: The new `leftTypeIdentifier` to replace the node's
    ///                   current `leftTypeIdentifier`, if present.
    public func withLeftTypeIdentifier(_ newChild: TypeSyntax?) -> SwiftSyntax.SameTypeRequirementSyntax

    public var equalityToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `equalityToken` replaced.
    /// - param newChild: The new `equalityToken` to replace the node's
    ///                   current `equalityToken`, if present.
    public func withEqualityToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SameTypeRequirementSyntax

    public var rightTypeIdentifier: TypeSyntax { get }

    /// Returns a copy of the receiver with its `rightTypeIdentifier` replaced.
    /// - param newChild: The new `rightTypeIdentifier` to replace the node's
    ///                   current `rightTypeIdentifier`, if present.
    public func withRightTypeIdentifier(_ newChild: TypeSyntax?) -> SwiftSyntax.SameTypeRequirementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SameTypeRequirementSyntax

    /// Determines if two `SameTypeRequirementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SameTypeRequirementSyntax, rhs: SwiftSyntax.SameTypeRequirementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SameTypeRequirementSyntax {

    /// Creates a `SameTypeRequirementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SameTypeRequirementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SameTypeRequirementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SameTypeRequirementSyntaxBuilder) -> Swift.Void)
}

extension SameTypeRequirementSyntax : WithTrailingCommaSyntax {
}

public struct SameTypeRequirementSyntaxBuilder {

    public mutating func useLeftTypeIdentifier(_ node: TypeSyntax)

    public mutating func useEqualityToken(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useRightTypeIdentifier(_ node: TypeSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct SequenceExprSyntax : ExprSyntax, Hashable {

    public var elements: SwiftSyntax.ExprListSyntax { get }

    /// Adds the provided `Expression` to the node's `elements`
    /// collection.
    /// - param element: The new `Expression` to add to the node's
    ///                  `elements` collection.
    /// - returns: A copy of the receiver with the provided `Expression`
    ///            appended to its `elements` collection.
    public func addExpression(_ element: ExprSyntax) -> SwiftSyntax.SequenceExprSyntax

    /// Returns a copy of the receiver with its `elements` replaced.
    /// - param newChild: The new `elements` to replace the node's
    ///                   current `elements`, if present.
    public func withElements(_ newChild: SwiftSyntax.ExprListSyntax?) -> SwiftSyntax.SequenceExprSyntax

    /// Determines if two `SequenceExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SequenceExprSyntax, rhs: SwiftSyntax.SequenceExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SequenceExprSyntax {

    /// Creates a `SequenceExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SequenceExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SequenceExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SequenceExprSyntaxBuilder) -> Swift.Void)
}

public struct SequenceExprSyntaxBuilder {

    public mutating func addExpression(_ elt: ExprSyntax)
}

public struct SimpleTypeIdentifierSyntax : TypeSyntax, Hashable {

    public var name: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SimpleTypeIdentifierSyntax

    public var genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericArgumentClause` replaced.
    /// - param newChild: The new `genericArgumentClause` to replace the node's
    ///                   current `genericArgumentClause`, if present.
    public func withGenericArgumentClause(_ newChild: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.SimpleTypeIdentifierSyntax

    /// Determines if two `SimpleTypeIdentifierSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SimpleTypeIdentifierSyntax, rhs: SwiftSyntax.SimpleTypeIdentifierSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SimpleTypeIdentifierSyntax {

    /// Creates a `SimpleTypeIdentifierSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SimpleTypeIdentifierSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SimpleTypeIdentifierSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SimpleTypeIdentifierSyntaxBuilder) -> Swift.Void)
}

public struct SimpleTypeIdentifierSyntaxBuilder {

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericArgumentClause(_ node: SwiftSyntax.GenericArgumentClauseSyntax)
}

public struct SourceFileSyntax : Syntax, Hashable {

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.SourceFileSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.SourceFileSyntax

    public var eofToken: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `eofToken` replaced.
    /// - param newChild: The new `eofToken` to replace the node's
    ///                   current `eofToken`, if present.
    public func withEOFToken(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SourceFileSyntax

    /// Determines if two `SourceFileSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SourceFileSyntax, rhs: SwiftSyntax.SourceFileSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SourceFileSyntax {

    /// Creates a `SourceFileSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SourceFileSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SourceFileSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SourceFileSyntaxBuilder) -> Swift.Void)
}

extension SourceFileSyntax : WithStatementsSyntax {
}

public struct SourceFileSyntaxBuilder {

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)

    public mutating func useEOFToken(_ node: SwiftSyntax.TokenSyntax)
}

/// Represents a source location in a Swift file.
public struct SourceLocation : Swift.Codable {

    /// The line in the file where this location resides.
    public let line: Int

    /// The UTF-8 byte offset from the beginning of the line where this location
    /// resides.
    public let column: Int

    /// The UTF-8 byte offset into the file where this location resides.
    public let offset: Int

    /// The file in which this location resides.
    public let file: String

    public init(line: Int, column: Int, offset: Int, file: String)
}

/// An indicator of whether a Syntax node was found or written in the source.
///
/// A `missing` node does not mean, necessarily, that the source item is
/// considered "implicit", but rather that it was not found in the source.
public enum SourcePresence : String, Swift.Codable {

    /// The syntax was authored by a human and found, or was generated.
    case present

    /// The syntax was expected or optional, but not found in the source.
    case missing
}

/// Represents a start and end location in a Swift file.
public struct SourceRange : Swift.Codable {

    /// The beginning location in the source range.
    public let start: SwiftSyntax.SourceLocation

    /// The beginning location in the source range.
    public let end: SwiftSyntax.SourceLocation

    public init(start: SwiftSyntax.SourceLocation, end: SwiftSyntax.SourceLocation)
}

public struct SpecializeExprSyntax : ExprSyntax, Hashable {

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.SpecializeExprSyntax

    public var genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax { get }

    /// Returns a copy of the receiver with its `genericArgumentClause` replaced.
    /// - param newChild: The new `genericArgumentClause` to replace the node's
    ///                   current `genericArgumentClause`, if present.
    public func withGenericArgumentClause(_ newChild: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.SpecializeExprSyntax

    /// Determines if two `SpecializeExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SpecializeExprSyntax, rhs: SwiftSyntax.SpecializeExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SpecializeExprSyntax {

    /// Creates a `SpecializeExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SpecializeExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SpecializeExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SpecializeExprSyntaxBuilder) -> Swift.Void)
}

public struct SpecializeExprSyntaxBuilder {

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useGenericArgumentClause(_ node: SwiftSyntax.GenericArgumentClauseSyntax)
}

public protocol StmtSyntax : Syntax {
}

public struct StringInterpolationExprSyntax : ExprSyntax, Hashable {

    public var openQuote: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `openQuote` replaced.
    /// - param newChild: The new `openQuote` to replace the node's
    ///                   current `openQuote`, if present.
    public func withOpenQuote(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StringInterpolationExprSyntax

    public var segments: SwiftSyntax.StringInterpolationSegmentsSyntax { get }

    /// Adds the provided `Segment` to the node's `segments`
    /// collection.
    /// - param element: The new `Segment` to add to the node's
    ///                  `segments` collection.
    /// - returns: A copy of the receiver with the provided `Segment`
    ///            appended to its `segments` collection.
    public func addSegment(_ element: Syntax) -> SwiftSyntax.StringInterpolationExprSyntax

    /// Returns a copy of the receiver with its `segments` replaced.
    /// - param newChild: The new `segments` to replace the node's
    ///                   current `segments`, if present.
    public func withSegments(_ newChild: SwiftSyntax.StringInterpolationSegmentsSyntax?) -> SwiftSyntax.StringInterpolationExprSyntax

    public var closeQuote: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `closeQuote` replaced.
    /// - param newChild: The new `closeQuote` to replace the node's
    ///                   current `closeQuote`, if present.
    public func withCloseQuote(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StringInterpolationExprSyntax

    /// Determines if two `StringInterpolationExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.StringInterpolationExprSyntax, rhs: SwiftSyntax.StringInterpolationExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension StringInterpolationExprSyntax {

    /// Creates a `StringInterpolationExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `StringInterpolationExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `StringInterpolationExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.StringInterpolationExprSyntaxBuilder) -> Swift.Void)
}

public struct StringInterpolationExprSyntaxBuilder {

    public mutating func useOpenQuote(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addSegment(_ elt: Syntax)

    public mutating func useCloseQuote(_ node: SwiftSyntax.TokenSyntax)
}

/// `StringInterpolationSegmentsSyntax` represents a collection of one or more
/// `Syntax` nodes. StringInterpolationSegmentsSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct StringInterpolationSegmentsSyntax {

    /// Creates a new `StringInterpolationSegmentsSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with that element appended to the end.
    public func appending(_ syntax: Syntax) -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Creates a new `StringInterpolationSegmentsSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: Syntax) -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Creates a new `StringInterpolationSegmentsSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with that element appended to the end.
    public func inserting(_ syntax: Syntax, at index: Int) -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Creates a new `StringInterpolationSegmentsSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Creates a new `StringInterpolationSegmentsSyntax` by removing the first element.
    ///
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Creates a new `StringInterpolationSegmentsSyntax` by removing the last element.
    ///
    /// - Returns: A new `StringInterpolationSegmentsSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.StringInterpolationSegmentsSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.StringInterpolationSegmentsSyntaxIterator
}

/// Conformance for `StringInterpolationSegmentsSyntax`` to the Collection protocol.
extension StringInterpolationSegmentsSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> Syntax { get }
}

/// A type that iterates over a `StringInterpolationSegmentsSyntax` using its indices.
public struct StringInterpolationSegmentsSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = Syntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.StringInterpolationSegmentsSyntaxIterator.Element?
}

public struct StringLiteralExprSyntax : ExprSyntax, Hashable {

    public var stringLiteral: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `stringLiteral` replaced.
    /// - param newChild: The new `stringLiteral` to replace the node's
    ///                   current `stringLiteral`, if present.
    public func withStringLiteral(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StringLiteralExprSyntax

    /// Determines if two `StringLiteralExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.StringLiteralExprSyntax, rhs: SwiftSyntax.StringLiteralExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension StringLiteralExprSyntax {

    /// Creates a `StringLiteralExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `StringLiteralExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `StringLiteralExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.StringLiteralExprSyntaxBuilder) -> Swift.Void)
}

public struct StringLiteralExprSyntaxBuilder {

    public mutating func useStringLiteral(_ node: SwiftSyntax.TokenSyntax)
}

public struct StringSegmentSyntax : Syntax, Hashable {

    public var content: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `content` replaced.
    /// - param newChild: The new `content` to replace the node's
    ///                   current `content`, if present.
    public func withContent(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StringSegmentSyntax

    /// Determines if two `StringSegmentSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.StringSegmentSyntax, rhs: SwiftSyntax.StringSegmentSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension StringSegmentSyntax {

    /// Creates a `StringSegmentSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `StringSegmentSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `StringSegmentSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.StringSegmentSyntaxBuilder) -> Swift.Void)
}

public struct StringSegmentSyntaxBuilder {

    public mutating func useContent(_ node: SwiftSyntax.TokenSyntax)
}

public struct StructDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.StructDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var structKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `structKeyword` replaced.
    /// - param newChild: The new `structKeyword` to replace the node's
    ///                   current `structKeyword`, if present.
    public func withStructKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax? { get }

    /// Returns a copy of the receiver with its `inheritanceClause` replaced.
    /// - param newChild: The new `inheritanceClause` to replace the node's
    ///                   current `inheritanceClause`, if present.
    public func withInheritanceClause(_ newChild: SwiftSyntax.TypeInheritanceClauseSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.StructDeclSyntax

    public var members: SwiftSyntax.MemberDeclBlockSyntax { get }

    /// Returns a copy of the receiver with its `members` replaced.
    /// - param newChild: The new `members` to replace the node's
    ///                   current `members`, if present.
    public func withMembers(_ newChild: SwiftSyntax.MemberDeclBlockSyntax?) -> SwiftSyntax.StructDeclSyntax

    /// Determines if two `StructDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.StructDeclSyntax, rhs: SwiftSyntax.StructDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension StructDeclSyntax {

    /// Creates a `StructDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `StructDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `StructDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.StructDeclSyntaxBuilder) -> Swift.Void)
}

extension StructDeclSyntax : DeclGroupSyntax, IdentifiedDeclSyntax {
}

public struct StructDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useStructKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useInheritanceClause(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useMembers(_ node: SwiftSyntax.MemberDeclBlockSyntax)
}

public struct SubscriptDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.SubscriptDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var modifiers: SwiftSyntax.ModifierListSyntax? { get }

    /// Adds the provided `Modifier` to the node's `modifiers`
    /// collection.
    /// - param element: The new `Modifier` to add to the node's
    ///                  `modifiers` collection.
    /// - returns: A copy of the receiver with the provided `Modifier`
    ///            appended to its `modifiers` collection.
    public func addModifier(_ element: Syntax) -> SwiftSyntax.SubscriptDeclSyntax

    /// Returns a copy of the receiver with its `modifiers` replaced.
    /// - param newChild: The new `modifiers` to replace the node's
    ///                   current `modifiers`, if present.
    public func withModifiers(_ newChild: SwiftSyntax.ModifierListSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var subscriptKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `subscriptKeyword` replaced.
    /// - param newChild: The new `subscriptKeyword` to replace the node's
    ///                   current `subscriptKeyword`, if present.
    public func withSubscriptKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var indices: SwiftSyntax.ParameterClauseSyntax { get }

    /// Returns a copy of the receiver with its `indices` replaced.
    /// - param newChild: The new `indices` to replace the node's
    ///                   current `indices`, if present.
    public func withIndices(_ newChild: SwiftSyntax.ParameterClauseSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var result: SwiftSyntax.ReturnClauseSyntax { get }

    /// Returns a copy of the receiver with its `result` replaced.
    /// - param newChild: The new `result` to replace the node's
    ///                   current `result`, if present.
    public func withResult(_ newChild: SwiftSyntax.ReturnClauseSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public var accessor: SwiftSyntax.AccessorBlockSyntax? { get }

    /// Returns a copy of the receiver with its `accessor` replaced.
    /// - param newChild: The new `accessor` to replace the node's
    ///                   current `accessor`, if present.
    public func withAccessor(_ newChild: SwiftSyntax.AccessorBlockSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    /// Determines if two `SubscriptDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SubscriptDeclSyntax, rhs: SwiftSyntax.SubscriptDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SubscriptDeclSyntax {

    /// Creates a `SubscriptDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SubscriptDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SubscriptDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SubscriptDeclSyntaxBuilder) -> Swift.Void)
}

public struct SubscriptDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func addModifier(_ elt: Syntax)

    public mutating func useSubscriptKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useIndices(_ node: SwiftSyntax.ParameterClauseSyntax)

    public mutating func useResult(_ node: SwiftSyntax.ReturnClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    public mutating func useAccessor(_ node: SwiftSyntax.AccessorBlockSyntax)
}

public struct SubscriptExprSyntax : ExprSyntax, Hashable {

    public var calledExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `calledExpression` replaced.
    /// - param newChild: The new `calledExpression` to replace the node's
    ///                   current `calledExpression`, if present.
    public func withCalledExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    public var leftBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBracket` replaced.
    /// - param newChild: The new `leftBracket` to replace the node's
    ///                   current `leftBracket`, if present.
    public func withLeftBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    public var argumentList: SwiftSyntax.FunctionCallArgumentListSyntax { get }

    /// Adds the provided `FunctionCallArgument` to the node's `argumentList`
    /// collection.
    /// - param element: The new `FunctionCallArgument` to add to the node's
    ///                  `argumentList` collection.
    /// - returns: A copy of the receiver with the provided `FunctionCallArgument`
    ///            appended to its `argumentList` collection.
    public func addFunctionCallArgument(_ element: SwiftSyntax.FunctionCallArgumentSyntax) -> SwiftSyntax.SubscriptExprSyntax

    /// Returns a copy of the receiver with its `argumentList` replaced.
    /// - param newChild: The new `argumentList` to replace the node's
    ///                   current `argumentList`, if present.
    public func withArgumentList(_ newChild: SwiftSyntax.FunctionCallArgumentListSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    public var rightBracket: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBracket` replaced.
    /// - param newChild: The new `rightBracket` to replace the node's
    ///                   current `rightBracket`, if present.
    public func withRightBracket(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    public var trailingClosure: SwiftSyntax.ClosureExprSyntax? { get }

    /// Returns a copy of the receiver with its `trailingClosure` replaced.
    /// - param newChild: The new `trailingClosure` to replace the node's
    ///                   current `trailingClosure`, if present.
    public func withTrailingClosure(_ newChild: SwiftSyntax.ClosureExprSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    /// Determines if two `SubscriptExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SubscriptExprSyntax, rhs: SwiftSyntax.SubscriptExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SubscriptExprSyntax {

    /// Creates a `SubscriptExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SubscriptExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SubscriptExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SubscriptExprSyntaxBuilder) -> Swift.Void)
}

public struct SubscriptExprSyntaxBuilder {

    public mutating func useCalledExpression(_ node: ExprSyntax)

    public mutating func useLeftBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addFunctionCallArgument(_ elt: SwiftSyntax.FunctionCallArgumentSyntax)

    public mutating func useRightBracket(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTrailingClosure(_ node: SwiftSyntax.ClosureExprSyntax)
}

public struct SuperRefExprSyntax : ExprSyntax, Hashable {

    public var superKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `superKeyword` replaced.
    /// - param newChild: The new `superKeyword` to replace the node's
    ///                   current `superKeyword`, if present.
    public func withSuperKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SuperRefExprSyntax

    /// Determines if two `SuperRefExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SuperRefExprSyntax, rhs: SwiftSyntax.SuperRefExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SuperRefExprSyntax {

    /// Creates a `SuperRefExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SuperRefExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SuperRefExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SuperRefExprSyntaxBuilder) -> Swift.Void)
}

public struct SuperRefExprSyntaxBuilder {

    public mutating func useSuperKeyword(_ node: SwiftSyntax.TokenSyntax)
}

public struct SwitchCaseLabelSyntax : Syntax, Hashable {

    public var caseKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `caseKeyword` replaced.
    /// - param newChild: The new `caseKeyword` to replace the node's
    ///                   current `caseKeyword`, if present.
    public func withCaseKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchCaseLabelSyntax

    public var caseItems: SwiftSyntax.CaseItemListSyntax { get }

    /// Adds the provided `CaseItem` to the node's `caseItems`
    /// collection.
    /// - param element: The new `CaseItem` to add to the node's
    ///                  `caseItems` collection.
    /// - returns: A copy of the receiver with the provided `CaseItem`
    ///            appended to its `caseItems` collection.
    public func addCaseItem(_ element: SwiftSyntax.CaseItemSyntax) -> SwiftSyntax.SwitchCaseLabelSyntax

    /// Returns a copy of the receiver with its `caseItems` replaced.
    /// - param newChild: The new `caseItems` to replace the node's
    ///                   current `caseItems`, if present.
    public func withCaseItems(_ newChild: SwiftSyntax.CaseItemListSyntax?) -> SwiftSyntax.SwitchCaseLabelSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchCaseLabelSyntax

    /// Determines if two `SwitchCaseLabelSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SwitchCaseLabelSyntax, rhs: SwiftSyntax.SwitchCaseLabelSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SwitchCaseLabelSyntax {

    /// Creates a `SwitchCaseLabelSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SwitchCaseLabelSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SwitchCaseLabelSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SwitchCaseLabelSyntaxBuilder) -> Swift.Void)
}

public struct SwitchCaseLabelSyntaxBuilder {

    public mutating func useCaseKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addCaseItem(_ elt: SwiftSyntax.CaseItemSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)
}

/// `SwitchCaseListSyntax` represents a collection of one or more
/// `SwitchCaseSyntax` nodes. SwitchCaseListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct SwitchCaseListSyntax {

    /// Creates a new `SwitchCaseListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `SwitchCaseListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.SwitchCaseSyntax) -> SwiftSyntax.SwitchCaseListSyntax

    /// Creates a new `SwitchCaseListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `SwitchCaseListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.SwitchCaseSyntax) -> SwiftSyntax.SwitchCaseListSyntax

    /// Creates a new `SwitchCaseListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `SwitchCaseListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.SwitchCaseSyntax, at index: Int) -> SwiftSyntax.SwitchCaseListSyntax

    /// Creates a new `SwitchCaseListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `SwitchCaseListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.SwitchCaseListSyntax

    /// Creates a new `SwitchCaseListSyntax` by removing the first element.
    ///
    /// - Returns: A new `SwitchCaseListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.SwitchCaseListSyntax

    /// Creates a new `SwitchCaseListSyntax` by removing the last element.
    ///
    /// - Returns: A new `SwitchCaseListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.SwitchCaseListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.SwitchCaseListSyntaxIterator
}

/// Conformance for `SwitchCaseListSyntax`` to the Collection protocol.
extension SwitchCaseListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.SwitchCaseSyntax { get }
}

/// A type that iterates over a `SwitchCaseListSyntax` using its indices.
public struct SwitchCaseListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.SwitchCaseSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.SwitchCaseListSyntaxIterator.Element?
}

public struct SwitchCaseSyntax : Syntax, Hashable {

    public var label: Syntax { get }

    /// Returns a copy of the receiver with its `label` replaced.
    /// - param newChild: The new `label` to replace the node's
    ///                   current `label`, if present.
    public func withLabel(_ newChild: Syntax?) -> SwiftSyntax.SwitchCaseSyntax

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    /// Adds the provided `CodeBlockItem` to the node's `statements`
    /// collection.
    /// - param element: The new `CodeBlockItem` to add to the node's
    ///                  `statements` collection.
    /// - returns: A copy of the receiver with the provided `CodeBlockItem`
    ///            appended to its `statements` collection.
    public func addCodeBlockItem(_ element: SwiftSyntax.CodeBlockItemSyntax) -> SwiftSyntax.SwitchCaseSyntax

    /// Returns a copy of the receiver with its `statements` replaced.
    /// - param newChild: The new `statements` to replace the node's
    ///                   current `statements`, if present.
    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> SwiftSyntax.SwitchCaseSyntax

    /// Determines if two `SwitchCaseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SwitchCaseSyntax, rhs: SwiftSyntax.SwitchCaseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SwitchCaseSyntax {

    /// Creates a `SwitchCaseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SwitchCaseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SwitchCaseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SwitchCaseSyntaxBuilder) -> Swift.Void)
}

extension SwitchCaseSyntax : WithStatementsSyntax {
}

public struct SwitchCaseSyntaxBuilder {

    public mutating func useLabel(_ node: Syntax)

    public mutating func addCodeBlockItem(_ elt: SwiftSyntax.CodeBlockItemSyntax)
}

public struct SwitchDefaultLabelSyntax : Syntax, Hashable {

    public var defaultKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `defaultKeyword` replaced.
    /// - param newChild: The new `defaultKeyword` to replace the node's
    ///                   current `defaultKeyword`, if present.
    public func withDefaultKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchDefaultLabelSyntax

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchDefaultLabelSyntax

    /// Determines if two `SwitchDefaultLabelSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SwitchDefaultLabelSyntax, rhs: SwiftSyntax.SwitchDefaultLabelSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SwitchDefaultLabelSyntax {

    /// Creates a `SwitchDefaultLabelSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SwitchDefaultLabelSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SwitchDefaultLabelSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SwitchDefaultLabelSyntaxBuilder) -> Swift.Void)
}

public struct SwitchDefaultLabelSyntaxBuilder {

    public mutating func useDefaultKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)
}

public struct SwitchStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var switchKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `switchKeyword` replaced.
    /// - param newChild: The new `switchKeyword` to replace the node's
    ///                   current `switchKeyword`, if present.
    public func withSwitchKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var leftBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftBrace` replaced.
    /// - param newChild: The new `leftBrace` to replace the node's
    ///                   current `leftBrace`, if present.
    public func withLeftBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var cases: SwiftSyntax.SwitchCaseListSyntax { get }

    /// Adds the provided `SwitchCase` to the node's `cases`
    /// collection.
    /// - param element: The new `SwitchCase` to add to the node's
    ///                  `cases` collection.
    /// - returns: A copy of the receiver with the provided `SwitchCase`
    ///            appended to its `cases` collection.
    public func addSwitchCase(_ element: SwiftSyntax.SwitchCaseSyntax) -> SwiftSyntax.SwitchStmtSyntax

    /// Returns a copy of the receiver with its `cases` replaced.
    /// - param newChild: The new `cases` to replace the node's
    ///                   current `cases`, if present.
    public func withCases(_ newChild: SwiftSyntax.SwitchCaseListSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    public var rightBrace: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightBrace` replaced.
    /// - param newChild: The new `rightBrace` to replace the node's
    ///                   current `rightBrace`, if present.
    public func withRightBrace(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SwitchStmtSyntax

    /// Determines if two `SwitchStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SwitchStmtSyntax, rhs: SwiftSyntax.SwitchStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SwitchStmtSyntax {

    /// Creates a `SwitchStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SwitchStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SwitchStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SwitchStmtSyntaxBuilder) -> Swift.Void)
}

extension SwitchStmtSyntax : BracedSyntax, LabeledSyntax {
}

public struct SwitchStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSwitchKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useLeftBrace(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addSwitchCase(_ elt: SwiftSyntax.SwitchCaseSyntax)

    public mutating func useRightBrace(_ node: SwiftSyntax.TokenSyntax)
}

public struct SymbolicReferenceExprSyntax : ExprSyntax, Hashable {

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SymbolicReferenceExprSyntax

    public var genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericArgumentClause` replaced.
    /// - param newChild: The new `genericArgumentClause` to replace the node's
    ///                   current `genericArgumentClause`, if present.
    public func withGenericArgumentClause(_ newChild: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.SymbolicReferenceExprSyntax

    /// Determines if two `SymbolicReferenceExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.SymbolicReferenceExprSyntax, rhs: SwiftSyntax.SymbolicReferenceExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension SymbolicReferenceExprSyntax {

    /// Creates a `SymbolicReferenceExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `SymbolicReferenceExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `SymbolicReferenceExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.SymbolicReferenceExprSyntaxBuilder) -> Swift.Void)
}

public struct SymbolicReferenceExprSyntaxBuilder {

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericArgumentClause(_ node: SwiftSyntax.GenericArgumentClauseSyntax)
}

/// A Syntax node represents a tree of nodes with tokens at the leaves.
/// Each node has accessors for its known children, and allows efficient
/// iteration over the children through its `children` property.
public protocol Syntax : CustomStringConvertible, TextOutputStreamable {
}

extension Syntax {

    /// Parses the Swift file at the provided URL into a `Syntax` tree in Json
    /// serialization format.
    /// - Parameter url: The URL you wish to parse.
    /// - Returns: The syntax tree in Json format string.
    public static func encodeSourceFileSyntax(_ url: URL) throws -> String

    /// Parses the Swift file at the provided URL into a full-fidelity `Syntax`
    /// tree.
    /// - Parameter url: The URL you wish to parse.
    /// - Returns: A top-level Syntax node representing the contents of the tree,
    ///            if the parse was successful.
    /// - Throws: `ParseError.couldNotFindSwiftc` if `swiftc` could not be
    ///           located, `ParseError.invalidFile` if the file is invalid.
    ///           FIXME: Fill this out with all error cases.
    public static func parse(_ url: URL) throws -> SwiftSyntax.SourceFileSyntax

    /// Decode a serialized form of SourceFileSyntax to a syntax node.
    /// - Parameter content: The string content of the serialized SourceFileSyntax.
    /// - Returns: A top-level Syntax node representing the contents of the tree,
    ///            if the parse was successful.
    public static func decodeSourceFileSyntax(_ content: String) throws -> SwiftSyntax.SourceFileSyntax
}

extension Syntax {

    /// An iterator over children of this node.
    public var children: SwiftSyntax.SyntaxChildren { get }

    /// Whether or not this node it marked as `present`.
    public var isPresent: Bool { get }

    /// Whether or not this node it marked as `missing`.
    public var isMissing: Bool { get }

    /// Whether or not this node represents an Expression.
    public var isExpr: Bool { get }

    /// Whether or not this node represents a Declaration.
    public var isDecl: Bool { get }

    /// Whether or not this node represents a Statement.
    public var isStmt: Bool { get }

    /// Whether or not this node represents a Type.
    public var isType: Bool { get }

    /// Whether or not this node represents a Pattern.
    public var isPattern: Bool { get }

    /// The parent of this syntax node, or `nil` if this node is the root.
    public var parent: Syntax? { get }

    /// The index of this node in the parent's children.
    public var indexInParent: Int { get }

    /// The root of the tree in which this node resides.
    public var root: Syntax { get }

    /// Gets the child at the provided index in this node's children.
    /// - Parameter index: The index of the child node you're looking for.
    /// - Returns: A Syntax node for the provided child, or `nil` if there
    ///            is not a child at that index in the node.
    public func child(at index: Int) -> Syntax?

    /// A source-accurate description of this node.
    public var description: String { get }

    /// Prints the raw value of this node to the provided stream.
    /// - Parameter stream: The stream to which to print the raw tree.
    public func write<Target>(to target: inout Target) where Target : TextOutputStream
}

public struct SyntaxChildren : Sequence {

    /// A type that provides the sequence's iteration interface and
    /// encapsulates its iteration state.
    public struct Iterator : IteratorProtocol {

        /// Advances to the next element and returns it, or `nil` if no next element
        /// exists.
        ///
        /// Repeatedly calling this method returns, in order, all the elements of the
        /// underlying sequence. As soon as the sequence has run out of elements, all
        /// subsequent calls return `nil`.
        ///
        /// You must not call this method if any other copy of this iterator has been
        /// advanced with a call to its `next()` method.
        ///
        /// The following example shows how an iterator can be used explicitly to
        /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
        /// then call the iterator's `next()` method until it returns `nil`.
        ///
        ///     let numbers = [2, 3, 5, 7]
        ///     var numbersIterator = numbers.makeIterator()
        ///
        ///     while let num = numbersIterator.next() {
        ///         print(num)
        ///     }
        ///     // Prints "2"
        ///     // Prints "3"
        ///     // Prints "5"
        ///     // Prints "7"
        ///
        /// - Returns: The next element in the underlying sequence, if a next element
        ///   exists; otherwise, `nil`.
        public mutating func next() -> Syntax?
    }

    /// Returns an iterator over the elements of this sequence.
    public func makeIterator() -> SwiftSyntax.SyntaxChildren.Iterator
}

public enum SyntaxFactory {

    public static func makeToken(_ kind: SwiftSyntax.TokenKind, presence: SwiftSyntax.SourcePresence, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeUnknownSyntax(tokens: [SwiftSyntax.TokenSyntax]) -> Syntax

    /// MARK: Syntax Node Creation APIs
    public static func makeBlankUnknownDecl() -> SwiftSyntax.UnknownDeclSyntax

    public static func makeBlankUnknownExpr() -> SwiftSyntax.UnknownExprSyntax

    public static func makeBlankUnknownStmt() -> SwiftSyntax.UnknownStmtSyntax

    public static func makeBlankUnknownType() -> SwiftSyntax.UnknownTypeSyntax

    public static func makeBlankUnknownPattern() -> SwiftSyntax.UnknownPatternSyntax

    public static func makeCodeBlockItem(item: Syntax, semicolon: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CodeBlockItemSyntax

    public static func makeBlankCodeBlockItem() -> SwiftSyntax.CodeBlockItemSyntax

    public static func makeCodeBlockItemList(_ elements: [SwiftSyntax.CodeBlockItemSyntax]) -> SwiftSyntax.CodeBlockItemListSyntax

    public static func makeBlankCodeBlockItemList() -> SwiftSyntax.CodeBlockItemListSyntax

    public static func makeCodeBlock(leftBrace: SwiftSyntax.TokenSyntax, statements: SwiftSyntax.CodeBlockItemListSyntax, rightBrace: SwiftSyntax.TokenSyntax) -> SwiftSyntax.CodeBlockSyntax

    public static func makeBlankCodeBlock() -> SwiftSyntax.CodeBlockSyntax

    public static func makeInOutExpr(ampersand: SwiftSyntax.TokenSyntax, expression: ExprSyntax) -> SwiftSyntax.InOutExprSyntax

    public static func makeBlankInOutExpr() -> SwiftSyntax.InOutExprSyntax

    public static func makePoundColumnExpr(poundColumn: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundColumnExprSyntax

    public static func makeBlankPoundColumnExpr() -> SwiftSyntax.PoundColumnExprSyntax

    public static func makeFunctionCallArgumentList(_ elements: [SwiftSyntax.FunctionCallArgumentSyntax]) -> SwiftSyntax.FunctionCallArgumentListSyntax

    public static func makeBlankFunctionCallArgumentList() -> SwiftSyntax.FunctionCallArgumentListSyntax

    public static func makeTupleElementList(_ elements: [SwiftSyntax.TupleElementSyntax]) -> SwiftSyntax.TupleElementListSyntax

    public static func makeBlankTupleElementList() -> SwiftSyntax.TupleElementListSyntax

    public static func makeArrayElementList(_ elements: [SwiftSyntax.ArrayElementSyntax]) -> SwiftSyntax.ArrayElementListSyntax

    public static func makeBlankArrayElementList() -> SwiftSyntax.ArrayElementListSyntax

    public static func makeDictionaryElementList(_ elements: [SwiftSyntax.DictionaryElementSyntax]) -> SwiftSyntax.DictionaryElementListSyntax

    public static func makeBlankDictionaryElementList() -> SwiftSyntax.DictionaryElementListSyntax

    public static func makeStringInterpolationSegments(_ elements: [Syntax]) -> SwiftSyntax.StringInterpolationSegmentsSyntax

    public static func makeBlankStringInterpolationSegments() -> SwiftSyntax.StringInterpolationSegmentsSyntax

    public static func makeTryExpr(tryKeyword: SwiftSyntax.TokenSyntax, questionOrExclamationMark: SwiftSyntax.TokenSyntax?, expression: ExprSyntax) -> SwiftSyntax.TryExprSyntax

    public static func makeBlankTryExpr() -> SwiftSyntax.TryExprSyntax

    public static func makeDeclNameArgument(name: SwiftSyntax.TokenSyntax, colon: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DeclNameArgumentSyntax

    public static func makeBlankDeclNameArgument() -> SwiftSyntax.DeclNameArgumentSyntax

    public static func makeDeclNameArgumentList(_ elements: [SwiftSyntax.DeclNameArgumentSyntax]) -> SwiftSyntax.DeclNameArgumentListSyntax

    public static func makeBlankDeclNameArgumentList() -> SwiftSyntax.DeclNameArgumentListSyntax

    public static func makeDeclNameArguments(leftParen: SwiftSyntax.TokenSyntax, arguments: SwiftSyntax.DeclNameArgumentListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DeclNameArgumentsSyntax

    public static func makeBlankDeclNameArguments() -> SwiftSyntax.DeclNameArgumentsSyntax

    public static func makeIdentifierExpr(identifier: SwiftSyntax.TokenSyntax, declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.IdentifierExprSyntax

    public static func makeBlankIdentifierExpr() -> SwiftSyntax.IdentifierExprSyntax

    public static func makeSuperRefExpr(superKeyword: SwiftSyntax.TokenSyntax) -> SwiftSyntax.SuperRefExprSyntax

    public static func makeBlankSuperRefExpr() -> SwiftSyntax.SuperRefExprSyntax

    public static func makeNilLiteralExpr(nilKeyword: SwiftSyntax.TokenSyntax) -> SwiftSyntax.NilLiteralExprSyntax

    public static func makeBlankNilLiteralExpr() -> SwiftSyntax.NilLiteralExprSyntax

    public static func makeDiscardAssignmentExpr(wildcard: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DiscardAssignmentExprSyntax

    public static func makeBlankDiscardAssignmentExpr() -> SwiftSyntax.DiscardAssignmentExprSyntax

    public static func makeAssignmentExpr(assignToken: SwiftSyntax.TokenSyntax) -> SwiftSyntax.AssignmentExprSyntax

    public static func makeBlankAssignmentExpr() -> SwiftSyntax.AssignmentExprSyntax

    public static func makeSequenceExpr(elements: SwiftSyntax.ExprListSyntax) -> SwiftSyntax.SequenceExprSyntax

    public static func makeBlankSequenceExpr() -> SwiftSyntax.SequenceExprSyntax

    public static func makeExprList(_ elements: [ExprSyntax]) -> SwiftSyntax.ExprListSyntax

    public static func makeBlankExprList() -> SwiftSyntax.ExprListSyntax

    public static func makePoundLineExpr(poundLine: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundLineExprSyntax

    public static func makeBlankPoundLineExpr() -> SwiftSyntax.PoundLineExprSyntax

    public static func makePoundFileExpr(poundFile: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundFileExprSyntax

    public static func makeBlankPoundFileExpr() -> SwiftSyntax.PoundFileExprSyntax

    public static func makePoundFunctionExpr(poundFunction: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundFunctionExprSyntax

    public static func makeBlankPoundFunctionExpr() -> SwiftSyntax.PoundFunctionExprSyntax

    public static func makePoundDsohandleExpr(poundDsohandle: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundDsohandleExprSyntax

    public static func makeBlankPoundDsohandleExpr() -> SwiftSyntax.PoundDsohandleExprSyntax

    public static func makeSymbolicReferenceExpr(identifier: SwiftSyntax.TokenSyntax, genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.SymbolicReferenceExprSyntax

    public static func makeBlankSymbolicReferenceExpr() -> SwiftSyntax.SymbolicReferenceExprSyntax

    public static func makePrefixOperatorExpr(operatorToken: SwiftSyntax.TokenSyntax?, postfixExpression: ExprSyntax) -> SwiftSyntax.PrefixOperatorExprSyntax

    public static func makeBlankPrefixOperatorExpr() -> SwiftSyntax.PrefixOperatorExprSyntax

    public static func makeBinaryOperatorExpr(operatorToken: SwiftSyntax.TokenSyntax) -> SwiftSyntax.BinaryOperatorExprSyntax

    public static func makeBlankBinaryOperatorExpr() -> SwiftSyntax.BinaryOperatorExprSyntax

    public static func makeArrowExpr(throwsToken: SwiftSyntax.TokenSyntax?, arrowToken: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ArrowExprSyntax

    public static func makeBlankArrowExpr() -> SwiftSyntax.ArrowExprSyntax

    public static func makeFloatLiteralExpr(floatingDigits: SwiftSyntax.TokenSyntax) -> SwiftSyntax.FloatLiteralExprSyntax

    public static func makeBlankFloatLiteralExpr() -> SwiftSyntax.FloatLiteralExprSyntax

    public static func makeTupleExpr(leftParen: SwiftSyntax.TokenSyntax, elementList: SwiftSyntax.TupleElementListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.TupleExprSyntax

    public static func makeBlankTupleExpr() -> SwiftSyntax.TupleExprSyntax

    public static func makeArrayExpr(leftSquare: SwiftSyntax.TokenSyntax, elements: SwiftSyntax.ArrayElementListSyntax, rightSquare: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ArrayExprSyntax

    public static func makeBlankArrayExpr() -> SwiftSyntax.ArrayExprSyntax

    public static func makeDictionaryExpr(leftSquare: SwiftSyntax.TokenSyntax, content: Syntax, rightSquare: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DictionaryExprSyntax

    public static func makeBlankDictionaryExpr() -> SwiftSyntax.DictionaryExprSyntax

    public static func makeImplicitMemberExpr(dot: SwiftSyntax.TokenSyntax, name: SwiftSyntax.TokenSyntax, declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.ImplicitMemberExprSyntax

    public static func makeBlankImplicitMemberExpr() -> SwiftSyntax.ImplicitMemberExprSyntax

    public static func makeFunctionCallArgument(label: SwiftSyntax.TokenSyntax?, colon: SwiftSyntax.TokenSyntax?, expression: ExprSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionCallArgumentSyntax

    public static func makeBlankFunctionCallArgument() -> SwiftSyntax.FunctionCallArgumentSyntax

    public static func makeTupleElement(label: SwiftSyntax.TokenSyntax?, colon: SwiftSyntax.TokenSyntax?, expression: ExprSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleElementSyntax

    public static func makeBlankTupleElement() -> SwiftSyntax.TupleElementSyntax

    public static func makeArrayElement(expression: ExprSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ArrayElementSyntax

    public static func makeBlankArrayElement() -> SwiftSyntax.ArrayElementSyntax

    public static func makeDictionaryElement(keyExpression: ExprSyntax, colon: SwiftSyntax.TokenSyntax, valueExpression: ExprSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.DictionaryElementSyntax

    public static func makeBlankDictionaryElement() -> SwiftSyntax.DictionaryElementSyntax

    public static func makeIntegerLiteralExpr(digits: SwiftSyntax.TokenSyntax) -> SwiftSyntax.IntegerLiteralExprSyntax

    public static func makeBlankIntegerLiteralExpr() -> SwiftSyntax.IntegerLiteralExprSyntax

    public static func makeStringLiteralExpr(stringLiteral: SwiftSyntax.TokenSyntax) -> SwiftSyntax.StringLiteralExprSyntax

    public static func makeBlankStringLiteralExpr() -> SwiftSyntax.StringLiteralExprSyntax

    public static func makeBooleanLiteralExpr(booleanLiteral: SwiftSyntax.TokenSyntax) -> SwiftSyntax.BooleanLiteralExprSyntax

    public static func makeBlankBooleanLiteralExpr() -> SwiftSyntax.BooleanLiteralExprSyntax

    public static func makeTernaryExpr(conditionExpression: ExprSyntax, questionMark: SwiftSyntax.TokenSyntax, firstChoice: ExprSyntax, colonMark: SwiftSyntax.TokenSyntax, secondChoice: ExprSyntax) -> SwiftSyntax.TernaryExprSyntax

    public static func makeBlankTernaryExpr() -> SwiftSyntax.TernaryExprSyntax

    public static func makeMemberAccessExpr(base: ExprSyntax, dot: SwiftSyntax.TokenSyntax, name: SwiftSyntax.TokenSyntax, declNameArguments: SwiftSyntax.DeclNameArgumentsSyntax?) -> SwiftSyntax.MemberAccessExprSyntax

    public static func makeBlankMemberAccessExpr() -> SwiftSyntax.MemberAccessExprSyntax

    public static func makeDotSelfExpr(expression: ExprSyntax, dot: SwiftSyntax.TokenSyntax, selfKeyword: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DotSelfExprSyntax

    public static func makeBlankDotSelfExpr() -> SwiftSyntax.DotSelfExprSyntax

    public static func makeIsExpr(isTok: SwiftSyntax.TokenSyntax, typeName: TypeSyntax) -> SwiftSyntax.IsExprSyntax

    public static func makeBlankIsExpr() -> SwiftSyntax.IsExprSyntax

    public static func makeAsExpr(asTok: SwiftSyntax.TokenSyntax, questionOrExclamationMark: SwiftSyntax.TokenSyntax?, typeName: TypeSyntax) -> SwiftSyntax.AsExprSyntax

    public static func makeBlankAsExpr() -> SwiftSyntax.AsExprSyntax

    public static func makeTypeExpr(type: TypeSyntax) -> SwiftSyntax.TypeExprSyntax

    public static func makeBlankTypeExpr() -> SwiftSyntax.TypeExprSyntax

    public static func makeClosureCaptureItem(specifier: SwiftSyntax.TokenListSyntax?, name: SwiftSyntax.TokenSyntax?, assignToken: SwiftSyntax.TokenSyntax?, expression: ExprSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureCaptureItemSyntax

    public static func makeBlankClosureCaptureItem() -> SwiftSyntax.ClosureCaptureItemSyntax

    public static func makeClosureCaptureItemList(_ elements: [SwiftSyntax.ClosureCaptureItemSyntax]) -> SwiftSyntax.ClosureCaptureItemListSyntax

    public static func makeBlankClosureCaptureItemList() -> SwiftSyntax.ClosureCaptureItemListSyntax

    public static func makeClosureCaptureSignature(leftSquare: SwiftSyntax.TokenSyntax, items: SwiftSyntax.ClosureCaptureItemListSyntax?, rightSquare: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ClosureCaptureSignatureSyntax

    public static func makeBlankClosureCaptureSignature() -> SwiftSyntax.ClosureCaptureSignatureSyntax

    public static func makeClosureParam(name: SwiftSyntax.TokenSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ClosureParamSyntax

    public static func makeBlankClosureParam() -> SwiftSyntax.ClosureParamSyntax

    public static func makeClosureParamList(_ elements: [SwiftSyntax.ClosureParamSyntax]) -> SwiftSyntax.ClosureParamListSyntax

    public static func makeBlankClosureParamList() -> SwiftSyntax.ClosureParamListSyntax

    public static func makeClosureSignature(capture: SwiftSyntax.ClosureCaptureSignatureSyntax?, input: Syntax?, throwsTok: SwiftSyntax.TokenSyntax?, output: SwiftSyntax.ReturnClauseSyntax?, inTok: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ClosureSignatureSyntax

    public static func makeBlankClosureSignature() -> SwiftSyntax.ClosureSignatureSyntax

    public static func makeClosureExpr(leftBrace: SwiftSyntax.TokenSyntax, signature: SwiftSyntax.ClosureSignatureSyntax?, statements: SwiftSyntax.CodeBlockItemListSyntax, rightBrace: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ClosureExprSyntax

    public static func makeBlankClosureExpr() -> SwiftSyntax.ClosureExprSyntax

    public static func makeUnresolvedPatternExpr(pattern: PatternSyntax) -> SwiftSyntax.UnresolvedPatternExprSyntax

    public static func makeBlankUnresolvedPatternExpr() -> SwiftSyntax.UnresolvedPatternExprSyntax

    public static func makeFunctionCallExpr(calledExpression: ExprSyntax, leftParen: SwiftSyntax.TokenSyntax?, argumentList: SwiftSyntax.FunctionCallArgumentListSyntax, rightParen: SwiftSyntax.TokenSyntax?, trailingClosure: SwiftSyntax.ClosureExprSyntax?) -> SwiftSyntax.FunctionCallExprSyntax

    public static func makeBlankFunctionCallExpr() -> SwiftSyntax.FunctionCallExprSyntax

    public static func makeSubscriptExpr(calledExpression: ExprSyntax, leftBracket: SwiftSyntax.TokenSyntax, argumentList: SwiftSyntax.FunctionCallArgumentListSyntax, rightBracket: SwiftSyntax.TokenSyntax, trailingClosure: SwiftSyntax.ClosureExprSyntax?) -> SwiftSyntax.SubscriptExprSyntax

    public static func makeBlankSubscriptExpr() -> SwiftSyntax.SubscriptExprSyntax

    public static func makeOptionalChainingExpr(expression: ExprSyntax, quetionMark: SwiftSyntax.TokenSyntax) -> SwiftSyntax.OptionalChainingExprSyntax

    public static func makeBlankOptionalChainingExpr() -> SwiftSyntax.OptionalChainingExprSyntax

    public static func makeForcedValueExpr(expression: ExprSyntax, exclamationMark: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ForcedValueExprSyntax

    public static func makeBlankForcedValueExpr() -> SwiftSyntax.ForcedValueExprSyntax

    public static func makePostfixUnaryExpr(expression: ExprSyntax, operatorToken: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PostfixUnaryExprSyntax

    public static func makeBlankPostfixUnaryExpr() -> SwiftSyntax.PostfixUnaryExprSyntax

    public static func makeSpecializeExpr(expression: ExprSyntax, genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax) -> SwiftSyntax.SpecializeExprSyntax

    public static func makeBlankSpecializeExpr() -> SwiftSyntax.SpecializeExprSyntax

    public static func makeStringSegment(content: SwiftSyntax.TokenSyntax) -> SwiftSyntax.StringSegmentSyntax

    public static func makeBlankStringSegment() -> SwiftSyntax.StringSegmentSyntax

    public static func makeExpressionSegment(backslash: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax, expression: ExprSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ExpressionSegmentSyntax

    public static func makeBlankExpressionSegment() -> SwiftSyntax.ExpressionSegmentSyntax

    public static func makeStringInterpolationExpr(openQuote: SwiftSyntax.TokenSyntax, segments: SwiftSyntax.StringInterpolationSegmentsSyntax, closeQuote: SwiftSyntax.TokenSyntax) -> SwiftSyntax.StringInterpolationExprSyntax

    public static func makeBlankStringInterpolationExpr() -> SwiftSyntax.StringInterpolationExprSyntax

    public static func makeKeyPathExpr(backslash: SwiftSyntax.TokenSyntax, expression: ExprSyntax) -> SwiftSyntax.KeyPathExprSyntax

    public static func makeBlankKeyPathExpr() -> SwiftSyntax.KeyPathExprSyntax

    public static func makeObjcNamePiece(name: SwiftSyntax.TokenSyntax, dot: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ObjcNamePieceSyntax

    public static func makeBlankObjcNamePiece() -> SwiftSyntax.ObjcNamePieceSyntax

    public static func makeObjcName(_ elements: [SwiftSyntax.ObjcNamePieceSyntax]) -> SwiftSyntax.ObjcNameSyntax

    public static func makeBlankObjcName() -> SwiftSyntax.ObjcNameSyntax

    public static func makeObjcKeyPathExpr(keyPath: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax, name: SwiftSyntax.ObjcNameSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ObjcKeyPathExprSyntax

    public static func makeBlankObjcKeyPathExpr() -> SwiftSyntax.ObjcKeyPathExprSyntax

    public static func makeEditorPlaceholderExpr(identifier: SwiftSyntax.TokenSyntax) -> SwiftSyntax.EditorPlaceholderExprSyntax

    public static func makeBlankEditorPlaceholderExpr() -> SwiftSyntax.EditorPlaceholderExprSyntax

    public static func makeObjectLiteralExpr(identifier: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax, arguments: SwiftSyntax.FunctionCallArgumentListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ObjectLiteralExprSyntax

    public static func makeBlankObjectLiteralExpr() -> SwiftSyntax.ObjectLiteralExprSyntax

    public static func makeTypeInitializerClause(equal: SwiftSyntax.TokenSyntax, value: TypeSyntax) -> SwiftSyntax.TypeInitializerClauseSyntax

    public static func makeBlankTypeInitializerClause() -> SwiftSyntax.TypeInitializerClauseSyntax

    public static func makeTypealiasDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, typealiasKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, initializer: SwiftSyntax.TypeInitializerClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public static func makeBlankTypealiasDecl() -> SwiftSyntax.TypealiasDeclSyntax

    public static func makeAssociatedtypeDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, associatedtypeKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax?, initializer: SwiftSyntax.TypeInitializerClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.AssociatedtypeDeclSyntax

    public static func makeBlankAssociatedtypeDecl() -> SwiftSyntax.AssociatedtypeDeclSyntax

    public static func makeFunctionParameterList(_ elements: [SwiftSyntax.FunctionParameterSyntax]) -> SwiftSyntax.FunctionParameterListSyntax

    public static func makeBlankFunctionParameterList() -> SwiftSyntax.FunctionParameterListSyntax

    public static func makeParameterClause(leftParen: SwiftSyntax.TokenSyntax, parameterList: SwiftSyntax.FunctionParameterListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ParameterClauseSyntax

    public static func makeBlankParameterClause() -> SwiftSyntax.ParameterClauseSyntax

    public static func makeReturnClause(arrow: SwiftSyntax.TokenSyntax, returnType: TypeSyntax) -> SwiftSyntax.ReturnClauseSyntax

    public static func makeBlankReturnClause() -> SwiftSyntax.ReturnClauseSyntax

    public static func makeFunctionSignature(input: SwiftSyntax.ParameterClauseSyntax, throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax?, output: SwiftSyntax.ReturnClauseSyntax?) -> SwiftSyntax.FunctionSignatureSyntax

    public static func makeBlankFunctionSignature() -> SwiftSyntax.FunctionSignatureSyntax

    public static func makeElseifDirectiveClause(poundElseif: SwiftSyntax.TokenSyntax, condition: ExprSyntax, statements: SwiftSyntax.CodeBlockItemListSyntax) -> SwiftSyntax.ElseifDirectiveClauseSyntax

    public static func makeBlankElseifDirectiveClause() -> SwiftSyntax.ElseifDirectiveClauseSyntax

    public static func makeIfConfigDecl(poundIf: SwiftSyntax.TokenSyntax, condition: ExprSyntax, statements: SwiftSyntax.CodeBlockItemListSyntax, elseifDirectiveClauses: SwiftSyntax.ElseifDirectiveClauseListSyntax?, elseClause: SwiftSyntax.ElseDirectiveClauseSyntax?, poundEndif: SwiftSyntax.TokenSyntax) -> SwiftSyntax.IfConfigDeclSyntax

    public static func makeBlankIfConfigDecl() -> SwiftSyntax.IfConfigDeclSyntax

    public static func makePoundErrorDecl(poundError: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax, message: SwiftSyntax.StringLiteralExprSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundErrorDeclSyntax

    public static func makeBlankPoundErrorDecl() -> SwiftSyntax.PoundErrorDeclSyntax

    public static func makePoundWarningDecl(poundWarning: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax, message: SwiftSyntax.StringLiteralExprSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.PoundWarningDeclSyntax

    public static func makeBlankPoundWarningDecl() -> SwiftSyntax.PoundWarningDeclSyntax

    public static func makeDeclModifier(name: SwiftSyntax.TokenSyntax, detail: SwiftSyntax.TokenListSyntax?) -> SwiftSyntax.DeclModifierSyntax

    public static func makeBlankDeclModifier() -> SwiftSyntax.DeclModifierSyntax

    public static func makeInheritedType(typeName: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.InheritedTypeSyntax

    public static func makeBlankInheritedType() -> SwiftSyntax.InheritedTypeSyntax

    public static func makeInheritedTypeList(_ elements: [SwiftSyntax.InheritedTypeSyntax]) -> SwiftSyntax.InheritedTypeListSyntax

    public static func makeBlankInheritedTypeList() -> SwiftSyntax.InheritedTypeListSyntax

    public static func makeTypeInheritanceClause(colon: SwiftSyntax.TokenSyntax, inheritedTypeCollection: SwiftSyntax.InheritedTypeListSyntax) -> SwiftSyntax.TypeInheritanceClauseSyntax

    public static func makeBlankTypeInheritanceClause() -> SwiftSyntax.TypeInheritanceClauseSyntax

    public static func makeClassDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, classKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, members: SwiftSyntax.MemberDeclBlockSyntax) -> SwiftSyntax.ClassDeclSyntax

    public static func makeBlankClassDecl() -> SwiftSyntax.ClassDeclSyntax

    public static func makeStructDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, structKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, members: SwiftSyntax.MemberDeclBlockSyntax) -> SwiftSyntax.StructDeclSyntax

    public static func makeBlankStructDecl() -> SwiftSyntax.StructDeclSyntax

    public static func makeProtocolDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, protocolKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, members: SwiftSyntax.MemberDeclBlockSyntax) -> SwiftSyntax.ProtocolDeclSyntax

    public static func makeBlankProtocolDecl() -> SwiftSyntax.ProtocolDeclSyntax

    public static func makeExtensionDecl(attributes: SwiftSyntax.AttributeListSyntax?, accessLevelModifier: SwiftSyntax.DeclModifierSyntax?, extensionKeyword: SwiftSyntax.TokenSyntax, extendedType: TypeSyntax, inheritanceClause: SwiftSyntax.TypeInheritanceClauseSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, members: SwiftSyntax.MemberDeclBlockSyntax) -> SwiftSyntax.ExtensionDeclSyntax

    public static func makeBlankExtensionDecl() -> SwiftSyntax.ExtensionDeclSyntax

    public static func makeMemberDeclBlock(leftBrace: SwiftSyntax.TokenSyntax, members: SwiftSyntax.DeclListSyntax, rightBrace: SwiftSyntax.TokenSyntax) -> SwiftSyntax.MemberDeclBlockSyntax

    public static func makeBlankMemberDeclBlock() -> SwiftSyntax.MemberDeclBlockSyntax

    public static func makeDeclList(_ elements: [DeclSyntax]) -> SwiftSyntax.DeclListSyntax

    public static func makeBlankDeclList() -> SwiftSyntax.DeclListSyntax

    public static func makeSourceFile(statements: SwiftSyntax.CodeBlockItemListSyntax, eofToken: SwiftSyntax.TokenSyntax) -> SwiftSyntax.SourceFileSyntax

    public static func makeBlankSourceFile() -> SwiftSyntax.SourceFileSyntax

    public static func makeInitializerClause(equal: SwiftSyntax.TokenSyntax, value: ExprSyntax) -> SwiftSyntax.InitializerClauseSyntax

    public static func makeBlankInitializerClause() -> SwiftSyntax.InitializerClauseSyntax

    public static func makeFunctionParameter(attributes: SwiftSyntax.AttributeListSyntax?, firstName: SwiftSyntax.TokenSyntax, secondName: SwiftSyntax.TokenSyntax?, colon: SwiftSyntax.TokenSyntax, typeAnnotation: TypeSyntax, ellipsis: SwiftSyntax.TokenSyntax?, defaultArgument: SwiftSyntax.InitializerClauseSyntax?, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.FunctionParameterSyntax

    public static func makeBlankFunctionParameter() -> SwiftSyntax.FunctionParameterSyntax

    public static func makeModifierList(_ elements: [Syntax]) -> SwiftSyntax.ModifierListSyntax

    public static func makeBlankModifierList() -> SwiftSyntax.ModifierListSyntax

    public static func makeFunctionDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifiers: SwiftSyntax.ModifierListSyntax?, funcKeyword: SwiftSyntax.TokenSyntax, identifier: SwiftSyntax.TokenSyntax, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, signature: SwiftSyntax.FunctionSignatureSyntax, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, body: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.FunctionDeclSyntax

    public static func makeBlankFunctionDecl() -> SwiftSyntax.FunctionDeclSyntax

    public static func makeInitializerDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifiers: SwiftSyntax.ModifierListSyntax?, initKeyword: SwiftSyntax.TokenSyntax, optionalMark: SwiftSyntax.TokenSyntax?, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, parameters: SwiftSyntax.ParameterClauseSyntax, throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax?, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, body: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.InitializerDeclSyntax

    public static func makeBlankInitializerDecl() -> SwiftSyntax.InitializerDeclSyntax

    public static func makeDeinitializerDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifiers: SwiftSyntax.ModifierListSyntax?, deinitKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.DeinitializerDeclSyntax

    public static func makeBlankDeinitializerDecl() -> SwiftSyntax.DeinitializerDeclSyntax

    public static func makeSubscriptDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifiers: SwiftSyntax.ModifierListSyntax?, subscriptKeyword: SwiftSyntax.TokenSyntax, genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax?, indices: SwiftSyntax.ParameterClauseSyntax, result: SwiftSyntax.ReturnClauseSyntax, genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax?, accessor: SwiftSyntax.AccessorBlockSyntax?) -> SwiftSyntax.SubscriptDeclSyntax

    public static func makeBlankSubscriptDecl() -> SwiftSyntax.SubscriptDeclSyntax

    public static func makeElseifDirectiveClauseList(_ elements: [SwiftSyntax.ElseifDirectiveClauseSyntax]) -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    public static func makeBlankElseifDirectiveClauseList() -> SwiftSyntax.ElseifDirectiveClauseListSyntax

    public static func makeElseDirectiveClause(poundElse: SwiftSyntax.TokenSyntax, statements: SwiftSyntax.CodeBlockItemListSyntax) -> SwiftSyntax.ElseDirectiveClauseSyntax

    public static func makeBlankElseDirectiveClause() -> SwiftSyntax.ElseDirectiveClauseSyntax

    public static func makeAccessLevelModifier(name: SwiftSyntax.TokenSyntax, leftParen: SwiftSyntax.TokenSyntax?, modifier: SwiftSyntax.TokenSyntax?, rightParen: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessLevelModifierSyntax

    public static func makeBlankAccessLevelModifier() -> SwiftSyntax.AccessLevelModifierSyntax

    public static func makeAccessPathComponent(name: SwiftSyntax.TokenSyntax, trailingDot: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.AccessPathComponentSyntax

    public static func makeBlankAccessPathComponent() -> SwiftSyntax.AccessPathComponentSyntax

    public static func makeAccessPath(_ elements: [SwiftSyntax.AccessPathComponentSyntax]) -> SwiftSyntax.AccessPathSyntax

    public static func makeBlankAccessPath() -> SwiftSyntax.AccessPathSyntax

    public static func makeImportDecl(attributes: SwiftSyntax.AttributeListSyntax?, importTok: SwiftSyntax.TokenSyntax, importKind: SwiftSyntax.TokenSyntax?, path: SwiftSyntax.AccessPathSyntax) -> SwiftSyntax.ImportDeclSyntax

    public static func makeBlankImportDecl() -> SwiftSyntax.ImportDeclSyntax

    public static func makeAccessorParameter(leftParen: SwiftSyntax.TokenSyntax, name: SwiftSyntax.TokenSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.AccessorParameterSyntax

    public static func makeBlankAccessorParameter() -> SwiftSyntax.AccessorParameterSyntax

    public static func makeAccessorDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifier: SwiftSyntax.DeclModifierSyntax?, accessorKind: SwiftSyntax.TokenSyntax, parameter: SwiftSyntax.AccessorParameterSyntax?, body: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.AccessorDeclSyntax

    public static func makeBlankAccessorDecl() -> SwiftSyntax.AccessorDeclSyntax

    public static func makeAccessorList(_ elements: [SwiftSyntax.AccessorDeclSyntax]) -> SwiftSyntax.AccessorListSyntax

    public static func makeBlankAccessorList() -> SwiftSyntax.AccessorListSyntax

    public static func makeAccessorBlock(leftBrace: SwiftSyntax.TokenSyntax, accessorListOrStmtList: Syntax, rightBrace: SwiftSyntax.TokenSyntax) -> SwiftSyntax.AccessorBlockSyntax

    public static func makeBlankAccessorBlock() -> SwiftSyntax.AccessorBlockSyntax

    public static func makePatternBinding(pattern: PatternSyntax, typeAnnotation: SwiftSyntax.TypeAnnotationSyntax?, initializer: SwiftSyntax.InitializerClauseSyntax?, accessor: SwiftSyntax.AccessorBlockSyntax?, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.PatternBindingSyntax

    public static func makeBlankPatternBinding() -> SwiftSyntax.PatternBindingSyntax

    public static func makePatternBindingList(_ elements: [SwiftSyntax.PatternBindingSyntax]) -> SwiftSyntax.PatternBindingListSyntax

    public static func makeBlankPatternBindingList() -> SwiftSyntax.PatternBindingListSyntax

    public static func makeVariableDecl(attributes: SwiftSyntax.AttributeListSyntax?, modifiers: SwiftSyntax.ModifierListSyntax?, letOrVarKeyword: SwiftSyntax.TokenSyntax, bindings: SwiftSyntax.PatternBindingListSyntax) -> SwiftSyntax.VariableDeclSyntax

    public static func makeBlankVariableDecl() -> SwiftSyntax.VariableDeclSyntax

    public static func makeTokenList(_ elements: [SwiftSyntax.TokenSyntax]) -> SwiftSyntax.TokenListSyntax

    public static func makeBlankTokenList() -> SwiftSyntax.TokenListSyntax

    public static func makeAttribute(atSignToken: SwiftSyntax.TokenSyntax, attributeName: SwiftSyntax.TokenSyntax, balancedTokens: SwiftSyntax.TokenListSyntax) -> SwiftSyntax.AttributeSyntax

    public static func makeBlankAttribute() -> SwiftSyntax.AttributeSyntax

    public static func makeAttributeList(_ elements: [SwiftSyntax.AttributeSyntax]) -> SwiftSyntax.AttributeListSyntax

    public static func makeBlankAttributeList() -> SwiftSyntax.AttributeListSyntax

    public static func makeContinueStmt(continueKeyword: SwiftSyntax.TokenSyntax, label: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ContinueStmtSyntax

    public static func makeBlankContinueStmt() -> SwiftSyntax.ContinueStmtSyntax

    public static func makeWhileStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, whileKeyword: SwiftSyntax.TokenSyntax, conditions: SwiftSyntax.ConditionElementListSyntax, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.WhileStmtSyntax

    public static func makeBlankWhileStmt() -> SwiftSyntax.WhileStmtSyntax

    public static func makeDeferStmt(deferKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.DeferStmtSyntax

    public static func makeBlankDeferStmt() -> SwiftSyntax.DeferStmtSyntax

    public static func makeExpressionStmt(expression: ExprSyntax) -> SwiftSyntax.ExpressionStmtSyntax

    public static func makeBlankExpressionStmt() -> SwiftSyntax.ExpressionStmtSyntax

    public static func makeSwitchCaseList(_ elements: [SwiftSyntax.SwitchCaseSyntax]) -> SwiftSyntax.SwitchCaseListSyntax

    public static func makeBlankSwitchCaseList() -> SwiftSyntax.SwitchCaseListSyntax

    public static func makeRepeatWhileStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, repeatKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax, whileKeyword: SwiftSyntax.TokenSyntax, condition: ExprSyntax) -> SwiftSyntax.RepeatWhileStmtSyntax

    public static func makeBlankRepeatWhileStmt() -> SwiftSyntax.RepeatWhileStmtSyntax

    public static func makeGuardStmt(guardKeyword: SwiftSyntax.TokenSyntax, conditions: SwiftSyntax.ConditionElementListSyntax, elseKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.GuardStmtSyntax

    public static func makeBlankGuardStmt() -> SwiftSyntax.GuardStmtSyntax

    public static func makeWhereClause(whereKeyword: SwiftSyntax.TokenSyntax, guardResult: ExprSyntax) -> SwiftSyntax.WhereClauseSyntax

    public static func makeBlankWhereClause() -> SwiftSyntax.WhereClauseSyntax

    public static func makeForInStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, forKeyword: SwiftSyntax.TokenSyntax, caseKeyword: SwiftSyntax.TokenSyntax?, pattern: PatternSyntax, typeAnnotation: SwiftSyntax.TypeAnnotationSyntax?, inKeyword: SwiftSyntax.TokenSyntax, sequenceExpr: ExprSyntax, whereClause: SwiftSyntax.WhereClauseSyntax?, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.ForInStmtSyntax

    public static func makeBlankForInStmt() -> SwiftSyntax.ForInStmtSyntax

    public static func makeSwitchStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, switchKeyword: SwiftSyntax.TokenSyntax, expression: ExprSyntax, leftBrace: SwiftSyntax.TokenSyntax, cases: SwiftSyntax.SwitchCaseListSyntax, rightBrace: SwiftSyntax.TokenSyntax) -> SwiftSyntax.SwitchStmtSyntax

    public static func makeBlankSwitchStmt() -> SwiftSyntax.SwitchStmtSyntax

    public static func makeCatchClauseList(_ elements: [SwiftSyntax.CatchClauseSyntax]) -> SwiftSyntax.CatchClauseListSyntax

    public static func makeBlankCatchClauseList() -> SwiftSyntax.CatchClauseListSyntax

    public static func makeDoStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, doKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax, catchClauses: SwiftSyntax.CatchClauseListSyntax?) -> SwiftSyntax.DoStmtSyntax

    public static func makeBlankDoStmt() -> SwiftSyntax.DoStmtSyntax

    public static func makeReturnStmt(returnKeyword: SwiftSyntax.TokenSyntax, expression: ExprSyntax?) -> SwiftSyntax.ReturnStmtSyntax

    public static func makeBlankReturnStmt() -> SwiftSyntax.ReturnStmtSyntax

    public static func makeFallthroughStmt(fallthroughKeyword: SwiftSyntax.TokenSyntax) -> SwiftSyntax.FallthroughStmtSyntax

    public static func makeBlankFallthroughStmt() -> SwiftSyntax.FallthroughStmtSyntax

    public static func makeBreakStmt(breakKeyword: SwiftSyntax.TokenSyntax, label: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.BreakStmtSyntax

    public static func makeBlankBreakStmt() -> SwiftSyntax.BreakStmtSyntax

    public static func makeCaseItemList(_ elements: [SwiftSyntax.CaseItemSyntax]) -> SwiftSyntax.CaseItemListSyntax

    public static func makeBlankCaseItemList() -> SwiftSyntax.CaseItemListSyntax

    public static func makeConditionElement(condition: Syntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ConditionElementSyntax

    public static func makeBlankConditionElement() -> SwiftSyntax.ConditionElementSyntax

    public static func makeAvailabilityCondition(poundAvailableKeyword: SwiftSyntax.TokenSyntax, arguments: SwiftSyntax.TokenListSyntax) -> SwiftSyntax.AvailabilityConditionSyntax

    public static func makeBlankAvailabilityCondition() -> SwiftSyntax.AvailabilityConditionSyntax

    public static func makeMatchingPatternCondition(caseKeyword: SwiftSyntax.TokenSyntax, pattern: PatternSyntax, typeAnnotation: SwiftSyntax.TypeAnnotationSyntax?, initializer: SwiftSyntax.InitializerClauseSyntax) -> SwiftSyntax.MatchingPatternConditionSyntax

    public static func makeBlankMatchingPatternCondition() -> SwiftSyntax.MatchingPatternConditionSyntax

    public static func makeOptionalBindingCondition(letOrVarKeyword: SwiftSyntax.TokenSyntax, pattern: PatternSyntax, typeAnnotation: SwiftSyntax.TypeAnnotationSyntax?, initializer: SwiftSyntax.InitializerClauseSyntax) -> SwiftSyntax.OptionalBindingConditionSyntax

    public static func makeBlankOptionalBindingCondition() -> SwiftSyntax.OptionalBindingConditionSyntax

    public static func makeConditionElementList(_ elements: [SwiftSyntax.ConditionElementSyntax]) -> SwiftSyntax.ConditionElementListSyntax

    public static func makeBlankConditionElementList() -> SwiftSyntax.ConditionElementListSyntax

    public static func makeDeclarationStmt(declaration: DeclSyntax) -> SwiftSyntax.DeclarationStmtSyntax

    public static func makeBlankDeclarationStmt() -> SwiftSyntax.DeclarationStmtSyntax

    public static func makeThrowStmt(throwKeyword: SwiftSyntax.TokenSyntax, expression: ExprSyntax) -> SwiftSyntax.ThrowStmtSyntax

    public static func makeBlankThrowStmt() -> SwiftSyntax.ThrowStmtSyntax

    public static func makeIfStmt(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, ifKeyword: SwiftSyntax.TokenSyntax, conditions: SwiftSyntax.ConditionElementListSyntax, body: SwiftSyntax.CodeBlockSyntax, elseKeyword: SwiftSyntax.TokenSyntax?, elseBody: Syntax?) -> SwiftSyntax.IfStmtSyntax

    public static func makeBlankIfStmt() -> SwiftSyntax.IfStmtSyntax

    public static func makeElseIfContinuation(ifStatement: SwiftSyntax.IfStmtSyntax) -> SwiftSyntax.ElseIfContinuationSyntax

    public static func makeBlankElseIfContinuation() -> SwiftSyntax.ElseIfContinuationSyntax

    public static func makeElseBlock(elseKeyword: SwiftSyntax.TokenSyntax, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.ElseBlockSyntax

    public static func makeBlankElseBlock() -> SwiftSyntax.ElseBlockSyntax

    public static func makeSwitchCase(label: Syntax, statements: SwiftSyntax.CodeBlockItemListSyntax) -> SwiftSyntax.SwitchCaseSyntax

    public static func makeBlankSwitchCase() -> SwiftSyntax.SwitchCaseSyntax

    public static func makeSwitchDefaultLabel(defaultKeyword: SwiftSyntax.TokenSyntax, colon: SwiftSyntax.TokenSyntax) -> SwiftSyntax.SwitchDefaultLabelSyntax

    public static func makeBlankSwitchDefaultLabel() -> SwiftSyntax.SwitchDefaultLabelSyntax

    public static func makeCaseItem(pattern: PatternSyntax, whereClause: SwiftSyntax.WhereClauseSyntax?, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CaseItemSyntax

    public static func makeBlankCaseItem() -> SwiftSyntax.CaseItemSyntax

    public static func makeSwitchCaseLabel(caseKeyword: SwiftSyntax.TokenSyntax, caseItems: SwiftSyntax.CaseItemListSyntax, colon: SwiftSyntax.TokenSyntax) -> SwiftSyntax.SwitchCaseLabelSyntax

    public static func makeBlankSwitchCaseLabel() -> SwiftSyntax.SwitchCaseLabelSyntax

    public static func makeCatchClause(catchKeyword: SwiftSyntax.TokenSyntax, pattern: PatternSyntax?, whereClause: SwiftSyntax.WhereClauseSyntax?, body: SwiftSyntax.CodeBlockSyntax) -> SwiftSyntax.CatchClauseSyntax

    public static func makeBlankCatchClause() -> SwiftSyntax.CatchClauseSyntax

    public static func makeGenericWhereClause(whereKeyword: SwiftSyntax.TokenSyntax, requirementList: SwiftSyntax.GenericRequirementListSyntax) -> SwiftSyntax.GenericWhereClauseSyntax

    public static func makeBlankGenericWhereClause() -> SwiftSyntax.GenericWhereClauseSyntax

    public static func makeGenericRequirementList(_ elements: [Syntax]) -> SwiftSyntax.GenericRequirementListSyntax

    public static func makeBlankGenericRequirementList() -> SwiftSyntax.GenericRequirementListSyntax

    public static func makeSameTypeRequirement(leftTypeIdentifier: TypeSyntax, equalityToken: SwiftSyntax.TokenSyntax, rightTypeIdentifier: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.SameTypeRequirementSyntax

    public static func makeBlankSameTypeRequirement() -> SwiftSyntax.SameTypeRequirementSyntax

    public static func makeGenericParameterList(_ elements: [SwiftSyntax.GenericParameterSyntax]) -> SwiftSyntax.GenericParameterListSyntax

    public static func makeBlankGenericParameterList() -> SwiftSyntax.GenericParameterListSyntax

    public static func makeGenericParameter(attributes: SwiftSyntax.AttributeListSyntax?, name: SwiftSyntax.TokenSyntax, colon: SwiftSyntax.TokenSyntax?, inheritedType: TypeSyntax?, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericParameterSyntax

    public static func makeBlankGenericParameter() -> SwiftSyntax.GenericParameterSyntax

    public static func makeGenericParameterClause(leftAngleBracket: SwiftSyntax.TokenSyntax, genericParameterList: SwiftSyntax.GenericParameterListSyntax, rightAngleBracket: SwiftSyntax.TokenSyntax) -> SwiftSyntax.GenericParameterClauseSyntax

    public static func makeBlankGenericParameterClause() -> SwiftSyntax.GenericParameterClauseSyntax

    public static func makeConformanceRequirement(leftTypeIdentifier: TypeSyntax, colon: SwiftSyntax.TokenSyntax, rightTypeIdentifier: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ConformanceRequirementSyntax

    public static func makeBlankConformanceRequirement() -> SwiftSyntax.ConformanceRequirementSyntax

    public static func makeSimpleTypeIdentifier(name: SwiftSyntax.TokenSyntax, genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.SimpleTypeIdentifierSyntax

    public static func makeBlankSimpleTypeIdentifier() -> SwiftSyntax.SimpleTypeIdentifierSyntax

    public static func makeMemberTypeIdentifier(baseType: TypeSyntax, period: SwiftSyntax.TokenSyntax, name: SwiftSyntax.TokenSyntax, genericArgumentClause: SwiftSyntax.GenericArgumentClauseSyntax?) -> SwiftSyntax.MemberTypeIdentifierSyntax

    public static func makeBlankMemberTypeIdentifier() -> SwiftSyntax.MemberTypeIdentifierSyntax

    public static func makeArrayType(leftSquareBracket: SwiftSyntax.TokenSyntax, elementType: TypeSyntax, rightSquareBracket: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ArrayTypeSyntax

    public static func makeBlankArrayType() -> SwiftSyntax.ArrayTypeSyntax

    public static func makeDictionaryType(leftSquareBracket: SwiftSyntax.TokenSyntax, keyType: TypeSyntax, colon: SwiftSyntax.TokenSyntax, valueType: TypeSyntax, rightSquareBracket: SwiftSyntax.TokenSyntax) -> SwiftSyntax.DictionaryTypeSyntax

    public static func makeBlankDictionaryType() -> SwiftSyntax.DictionaryTypeSyntax

    public static func makeMetatypeType(baseType: TypeSyntax, period: SwiftSyntax.TokenSyntax, typeOrProtocol: SwiftSyntax.TokenSyntax) -> SwiftSyntax.MetatypeTypeSyntax

    public static func makeBlankMetatypeType() -> SwiftSyntax.MetatypeTypeSyntax

    public static func makeOptionalType(wrappedType: TypeSyntax, questionMark: SwiftSyntax.TokenSyntax) -> SwiftSyntax.OptionalTypeSyntax

    public static func makeBlankOptionalType() -> SwiftSyntax.OptionalTypeSyntax

    public static func makeImplicitlyUnwrappedOptionalType(wrappedType: TypeSyntax, exclamationMark: SwiftSyntax.TokenSyntax) -> SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax

    public static func makeBlankImplicitlyUnwrappedOptionalType() -> SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax

    public static func makeCompositionTypeElement(type: TypeSyntax, ampersand: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.CompositionTypeElementSyntax

    public static func makeBlankCompositionTypeElement() -> SwiftSyntax.CompositionTypeElementSyntax

    public static func makeCompositionTypeElementList(_ elements: [SwiftSyntax.CompositionTypeElementSyntax]) -> SwiftSyntax.CompositionTypeElementListSyntax

    public static func makeBlankCompositionTypeElementList() -> SwiftSyntax.CompositionTypeElementListSyntax

    public static func makeCompositionType(elements: SwiftSyntax.CompositionTypeElementListSyntax) -> SwiftSyntax.CompositionTypeSyntax

    public static func makeBlankCompositionType() -> SwiftSyntax.CompositionTypeSyntax

    public static func makeTupleTypeElement(inOut: SwiftSyntax.TokenSyntax?, name: SwiftSyntax.TokenSyntax?, secondName: SwiftSyntax.TokenSyntax?, colon: SwiftSyntax.TokenSyntax?, type: TypeSyntax, ellipsis: SwiftSyntax.TokenSyntax?, initializer: SwiftSyntax.InitializerClauseSyntax?, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public static func makeBlankTupleTypeElement() -> SwiftSyntax.TupleTypeElementSyntax

    public static func makeTupleTypeElementList(_ elements: [SwiftSyntax.TupleTypeElementSyntax]) -> SwiftSyntax.TupleTypeElementListSyntax

    public static func makeBlankTupleTypeElementList() -> SwiftSyntax.TupleTypeElementListSyntax

    public static func makeTupleType(leftParen: SwiftSyntax.TokenSyntax, elements: SwiftSyntax.TupleTypeElementListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.TupleTypeSyntax

    public static func makeBlankTupleType() -> SwiftSyntax.TupleTypeSyntax

    public static func makeFunctionType(leftParen: SwiftSyntax.TokenSyntax, arguments: SwiftSyntax.TupleTypeElementListSyntax, rightParen: SwiftSyntax.TokenSyntax, throwsOrRethrowsKeyword: SwiftSyntax.TokenSyntax?, arrow: SwiftSyntax.TokenSyntax, returnType: TypeSyntax) -> SwiftSyntax.FunctionTypeSyntax

    public static func makeBlankFunctionType() -> SwiftSyntax.FunctionTypeSyntax

    public static func makeAttributedType(specifier: SwiftSyntax.TokenSyntax?, attributes: SwiftSyntax.AttributeListSyntax?, baseType: TypeSyntax) -> SwiftSyntax.AttributedTypeSyntax

    public static func makeBlankAttributedType() -> SwiftSyntax.AttributedTypeSyntax

    public static func makeGenericArgumentList(_ elements: [SwiftSyntax.GenericArgumentSyntax]) -> SwiftSyntax.GenericArgumentListSyntax

    public static func makeBlankGenericArgumentList() -> SwiftSyntax.GenericArgumentListSyntax

    public static func makeGenericArgument(argumentType: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.GenericArgumentSyntax

    public static func makeBlankGenericArgument() -> SwiftSyntax.GenericArgumentSyntax

    public static func makeGenericArgumentClause(leftAngleBracket: SwiftSyntax.TokenSyntax, arguments: SwiftSyntax.GenericArgumentListSyntax, rightAngleBracket: SwiftSyntax.TokenSyntax) -> SwiftSyntax.GenericArgumentClauseSyntax

    public static func makeBlankGenericArgumentClause() -> SwiftSyntax.GenericArgumentClauseSyntax

    public static func makeTypeAnnotation(colon: SwiftSyntax.TokenSyntax, type: TypeSyntax) -> SwiftSyntax.TypeAnnotationSyntax

    public static func makeBlankTypeAnnotation() -> SwiftSyntax.TypeAnnotationSyntax

    public static func makeEnumCasePattern(type: TypeSyntax?, period: SwiftSyntax.TokenSyntax, caseName: SwiftSyntax.TokenSyntax, associatedTuple: SwiftSyntax.TuplePatternSyntax?) -> SwiftSyntax.EnumCasePatternSyntax

    public static func makeBlankEnumCasePattern() -> SwiftSyntax.EnumCasePatternSyntax

    public static func makeIsTypePattern(isKeyword: SwiftSyntax.TokenSyntax, type: TypeSyntax) -> SwiftSyntax.IsTypePatternSyntax

    public static func makeBlankIsTypePattern() -> SwiftSyntax.IsTypePatternSyntax

    public static func makeOptionalPattern(subPattern: PatternSyntax, questionMark: SwiftSyntax.TokenSyntax) -> SwiftSyntax.OptionalPatternSyntax

    public static func makeBlankOptionalPattern() -> SwiftSyntax.OptionalPatternSyntax

    public static func makeIdentifierPattern(identifier: SwiftSyntax.TokenSyntax) -> SwiftSyntax.IdentifierPatternSyntax

    public static func makeBlankIdentifierPattern() -> SwiftSyntax.IdentifierPatternSyntax

    public static func makeAsTypePattern(pattern: PatternSyntax, asKeyword: SwiftSyntax.TokenSyntax, type: TypeSyntax) -> SwiftSyntax.AsTypePatternSyntax

    public static func makeBlankAsTypePattern() -> SwiftSyntax.AsTypePatternSyntax

    public static func makeTuplePattern(leftParen: SwiftSyntax.TokenSyntax, elements: SwiftSyntax.TuplePatternElementListSyntax, rightParen: SwiftSyntax.TokenSyntax) -> SwiftSyntax.TuplePatternSyntax

    public static func makeBlankTuplePattern() -> SwiftSyntax.TuplePatternSyntax

    public static func makeWildcardPattern(wildcard: SwiftSyntax.TokenSyntax, typeAnnotation: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.WildcardPatternSyntax

    public static func makeBlankWildcardPattern() -> SwiftSyntax.WildcardPatternSyntax

    public static func makeTuplePatternElement(labelName: SwiftSyntax.TokenSyntax?, labelColon: SwiftSyntax.TokenSyntax?, pattern: PatternSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternElementSyntax

    public static func makeBlankTuplePatternElement() -> SwiftSyntax.TuplePatternElementSyntax

    public static func makeExpressionPattern(expression: ExprSyntax) -> SwiftSyntax.ExpressionPatternSyntax

    public static func makeBlankExpressionPattern() -> SwiftSyntax.ExpressionPatternSyntax

    public static func makeTuplePatternElementList(_ elements: [SwiftSyntax.TuplePatternElementSyntax]) -> SwiftSyntax.TuplePatternElementListSyntax

    public static func makeBlankTuplePatternElementList() -> SwiftSyntax.TuplePatternElementListSyntax

    public static func makeValueBindingPattern(letOrVarKeyword: SwiftSyntax.TokenSyntax, valuePattern: PatternSyntax) -> SwiftSyntax.ValueBindingPatternSyntax

    public static func makeBlankValueBindingPattern() -> SwiftSyntax.ValueBindingPatternSyntax

    /// MARK: Token Creation APIs
    public static func makeAssociatedtypeKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeClassKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeDeinitKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeEnumKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeExtensionKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeFuncKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeImportKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeInitKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeInoutKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeLetKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeOperatorKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePrecedencegroupKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeProtocolKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStructKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSubscriptKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeTypealiasKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeVarKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeFileprivateKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeInternalKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePrivateKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePublicKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStaticKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeDeferKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeIfKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeGuardKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeDoKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRepeatKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeElseKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeForKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeInKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeWhileKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeReturnKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeBreakKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeContinueKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeFallthroughKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSwitchKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeCaseKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeDefaultKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeWhereKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeCatchKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeAsKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeAnyKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeFalseKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeIsKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeNilKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRethrowsKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSuperKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSelfKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeCapitalSelfKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeThrowKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeTrueKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeTryKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeThrowsKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func make__FILE__Keyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func make__LINE__Keyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func make__COLUMN__Keyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func make__FUNCTION__Keyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func make__DSO_HANDLE__Keyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeWildcardKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundAvailableKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundEndifKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundElseKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundElseifKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundIfKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundSourceLocationKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundFileKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundLineKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundColumnKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundDsohandleKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundFunctionKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundSelectorKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundKeyPathKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundColorLiteralKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundFileLiteralKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePoundImageLiteralKeyword(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeArrowToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeAtSignToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeColonToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSemicolonToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeCommaToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePeriodToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeEqualToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePrefixPeriodToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeLeftParenToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRightParenToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeLeftBraceToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRightBraceToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeLeftSquareBracketToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRightSquareBracketToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeLeftAngleToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeRightAngleToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePrefixAmpersandToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePostfixQuestionMarkToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeInfixQuestionMarkToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeExclamationMarkToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeBackslashToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStringInterpolationAnchorToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStringQuoteToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeMultilineStringQuoteToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStringSegment(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeIdentifier(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeDollarIdentifier(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeUnspacedBinaryOperator(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeSpacedBinaryOperator(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePrefixOperator(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makePostfixOperator(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeIntegerLiteral(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeFloatingLiteral(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStringLiteral(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeContextualKeyword(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    /// MARK: Convenience APIs
    public static func makeVoidTupleType() -> SwiftSyntax.TupleTypeSyntax

    public static func makeTupleTypeElement(name: SwiftSyntax.TokenSyntax?, colon: SwiftSyntax.TokenSyntax?, type: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public static func makeTupleTypeElement(type: TypeSyntax, trailingComma: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public static func makeGenericParameter(name: SwiftSyntax.TokenSyntax, trailingComma: SwiftSyntax.TokenSyntax) -> SwiftSyntax.GenericParameterSyntax

    public static func makeTypeIdentifier(_ name: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> TypeSyntax

    public static func makeAnyTypeIdentifier(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> TypeSyntax

    public static func makeSelfTypeIdentifier(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> TypeSyntax

    public static func makeTypeToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeProtocolToken(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeEqualityOperator(leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.TokenSyntax

    public static func makeStringLiteralExpr(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.StringLiteralExprSyntax

    public static func makeVariableExpr(_ text: String, leadingTrivia: SwiftSyntax.Trivia = default, trailingTrivia: SwiftSyntax.Trivia = default) -> SwiftSyntax.IdentifierExprSyntax
}

open class SyntaxRewriter {

    public init()

    open func visit(_ node: SwiftSyntax.UnknownDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.UnknownExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.UnknownStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.UnknownTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.UnknownPatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.CodeBlockItemSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.CodeBlockSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.InOutExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PoundColumnExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.TryExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.DeclNameArgumentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.DeclNameArgumentsSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.IdentifierExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.SuperRefExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.NilLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.DiscardAssignmentExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.AssignmentExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.SequenceExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PoundLineExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PoundFileExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PoundFunctionExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PoundDsohandleExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.SymbolicReferenceExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PrefixOperatorExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.BinaryOperatorExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ArrowExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.FloatLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.TupleExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ArrayExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.DictionaryExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ImplicitMemberExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.FunctionCallArgumentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.TupleElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ArrayElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.DictionaryElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.IntegerLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.StringLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.BooleanLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.TernaryExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.MemberAccessExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.DotSelfExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.IsExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.AsExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.TypeExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ClosureCaptureItemSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ClosureCaptureSignatureSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ClosureParamSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ClosureSignatureSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ClosureExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.UnresolvedPatternExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.FunctionCallExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.SubscriptExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.OptionalChainingExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ForcedValueExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.PostfixUnaryExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.SpecializeExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.StringSegmentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ExpressionSegmentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.StringInterpolationExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.KeyPathExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ObjcNamePieceSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ObjcKeyPathExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.EditorPlaceholderExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.ObjectLiteralExprSyntax) -> ExprSyntax

    open func visit(_ node: SwiftSyntax.TypeInitializerClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.TypealiasDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.AssociatedtypeDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.ParameterClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ReturnClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.FunctionSignatureSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ElseifDirectiveClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.IfConfigDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.PoundErrorDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.PoundWarningDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.DeclModifierSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.InheritedTypeSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.TypeInheritanceClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ClassDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.StructDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.ProtocolDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.ExtensionDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.MemberDeclBlockSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SourceFileSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.InitializerClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.FunctionParameterSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.FunctionDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.InitializerDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.DeinitializerDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.SubscriptDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.ElseDirectiveClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.AccessLevelModifierSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.AccessPathComponentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ImportDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.AccessorParameterSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.AccessorDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.AccessorBlockSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.PatternBindingSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.VariableDeclSyntax) -> DeclSyntax

    open func visit(_ node: SwiftSyntax.AttributeSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ContinueStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.WhileStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.DeferStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.ExpressionStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.RepeatWhileStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.GuardStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.WhereClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ForInStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.SwitchStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.DoStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.ReturnStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.FallthroughStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.BreakStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.ConditionElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.AvailabilityConditionSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.MatchingPatternConditionSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.OptionalBindingConditionSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.DeclarationStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.ThrowStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.IfStmtSyntax) -> StmtSyntax

    open func visit(_ node: SwiftSyntax.ElseIfContinuationSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ElseBlockSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SwitchCaseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SwitchDefaultLabelSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.CaseItemSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SwitchCaseLabelSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.CatchClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.GenericWhereClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SameTypeRequirementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.GenericParameterSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.GenericParameterClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ConformanceRequirementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.SimpleTypeIdentifierSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.MemberTypeIdentifierSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.ArrayTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.DictionaryTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.MetatypeTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.OptionalTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.CompositionTypeElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.CompositionTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.TupleTypeElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.TupleTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.FunctionTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.AttributedTypeSyntax) -> TypeSyntax

    open func visit(_ node: SwiftSyntax.GenericArgumentSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.GenericArgumentClauseSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.TypeAnnotationSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.EnumCasePatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.IsTypePatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.OptionalPatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.IdentifierPatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.AsTypePatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.TuplePatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.WildcardPatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.TuplePatternElementSyntax) -> Syntax

    open func visit(_ node: SwiftSyntax.ExpressionPatternSyntax) -> PatternSyntax

    open func visit(_ node: SwiftSyntax.ValueBindingPatternSyntax) -> PatternSyntax

    open func visit(_ token: SwiftSyntax.TokenSyntax) -> Syntax

    /// The function called before visiting the node and its descendents.
    ///   - node: the node we are about to visit.
    open func visitPre(_ node: Syntax)

    /// The function called after visting the node and its descendents.
    ///   - node: the node we just finished visiting.
    open func visitPost(_ node: Syntax)

    public func visit(_ node: Syntax) -> Syntax
}

open class SyntaxVisitor {

    public init()

    open func visit(_ node: SwiftSyntax.UnknownDeclSyntax)

    open func visit(_ node: SwiftSyntax.UnknownExprSyntax)

    open func visit(_ node: SwiftSyntax.UnknownStmtSyntax)

    open func visit(_ node: SwiftSyntax.UnknownTypeSyntax)

    open func visit(_ node: SwiftSyntax.UnknownPatternSyntax)

    open func visit(_ node: SwiftSyntax.CodeBlockItemSyntax)

    open func visit(_ node: SwiftSyntax.CodeBlockSyntax)

    open func visit(_ node: SwiftSyntax.InOutExprSyntax)

    open func visit(_ node: SwiftSyntax.PoundColumnExprSyntax)

    open func visit(_ node: SwiftSyntax.TryExprSyntax)

    open func visit(_ node: SwiftSyntax.DeclNameArgumentSyntax)

    open func visit(_ node: SwiftSyntax.DeclNameArgumentsSyntax)

    open func visit(_ node: SwiftSyntax.IdentifierExprSyntax)

    open func visit(_ node: SwiftSyntax.SuperRefExprSyntax)

    open func visit(_ node: SwiftSyntax.NilLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.DiscardAssignmentExprSyntax)

    open func visit(_ node: SwiftSyntax.AssignmentExprSyntax)

    open func visit(_ node: SwiftSyntax.SequenceExprSyntax)

    open func visit(_ node: SwiftSyntax.PoundLineExprSyntax)

    open func visit(_ node: SwiftSyntax.PoundFileExprSyntax)

    open func visit(_ node: SwiftSyntax.PoundFunctionExprSyntax)

    open func visit(_ node: SwiftSyntax.PoundDsohandleExprSyntax)

    open func visit(_ node: SwiftSyntax.SymbolicReferenceExprSyntax)

    open func visit(_ node: SwiftSyntax.PrefixOperatorExprSyntax)

    open func visit(_ node: SwiftSyntax.BinaryOperatorExprSyntax)

    open func visit(_ node: SwiftSyntax.ArrowExprSyntax)

    open func visit(_ node: SwiftSyntax.FloatLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.TupleExprSyntax)

    open func visit(_ node: SwiftSyntax.ArrayExprSyntax)

    open func visit(_ node: SwiftSyntax.DictionaryExprSyntax)

    open func visit(_ node: SwiftSyntax.ImplicitMemberExprSyntax)

    open func visit(_ node: SwiftSyntax.FunctionCallArgumentSyntax)

    open func visit(_ node: SwiftSyntax.TupleElementSyntax)

    open func visit(_ node: SwiftSyntax.ArrayElementSyntax)

    open func visit(_ node: SwiftSyntax.DictionaryElementSyntax)

    open func visit(_ node: SwiftSyntax.IntegerLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.StringLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.BooleanLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.TernaryExprSyntax)

    open func visit(_ node: SwiftSyntax.MemberAccessExprSyntax)

    open func visit(_ node: SwiftSyntax.DotSelfExprSyntax)

    open func visit(_ node: SwiftSyntax.IsExprSyntax)

    open func visit(_ node: SwiftSyntax.AsExprSyntax)

    open func visit(_ node: SwiftSyntax.TypeExprSyntax)

    open func visit(_ node: SwiftSyntax.ClosureCaptureItemSyntax)

    open func visit(_ node: SwiftSyntax.ClosureCaptureSignatureSyntax)

    open func visit(_ node: SwiftSyntax.ClosureParamSyntax)

    open func visit(_ node: SwiftSyntax.ClosureSignatureSyntax)

    open func visit(_ node: SwiftSyntax.ClosureExprSyntax)

    open func visit(_ node: SwiftSyntax.UnresolvedPatternExprSyntax)

    open func visit(_ node: SwiftSyntax.FunctionCallExprSyntax)

    open func visit(_ node: SwiftSyntax.SubscriptExprSyntax)

    open func visit(_ node: SwiftSyntax.OptionalChainingExprSyntax)

    open func visit(_ node: SwiftSyntax.ForcedValueExprSyntax)

    open func visit(_ node: SwiftSyntax.PostfixUnaryExprSyntax)

    open func visit(_ node: SwiftSyntax.SpecializeExprSyntax)

    open func visit(_ node: SwiftSyntax.StringSegmentSyntax)

    open func visit(_ node: SwiftSyntax.ExpressionSegmentSyntax)

    open func visit(_ node: SwiftSyntax.StringInterpolationExprSyntax)

    open func visit(_ node: SwiftSyntax.KeyPathExprSyntax)

    open func visit(_ node: SwiftSyntax.ObjcNamePieceSyntax)

    open func visit(_ node: SwiftSyntax.ObjcKeyPathExprSyntax)

    open func visit(_ node: SwiftSyntax.EditorPlaceholderExprSyntax)

    open func visit(_ node: SwiftSyntax.ObjectLiteralExprSyntax)

    open func visit(_ node: SwiftSyntax.TypeInitializerClauseSyntax)

    open func visit(_ node: SwiftSyntax.TypealiasDeclSyntax)

    open func visit(_ node: SwiftSyntax.AssociatedtypeDeclSyntax)

    open func visit(_ node: SwiftSyntax.ParameterClauseSyntax)

    open func visit(_ node: SwiftSyntax.ReturnClauseSyntax)

    open func visit(_ node: SwiftSyntax.FunctionSignatureSyntax)

    open func visit(_ node: SwiftSyntax.ElseifDirectiveClauseSyntax)

    open func visit(_ node: SwiftSyntax.IfConfigDeclSyntax)

    open func visit(_ node: SwiftSyntax.PoundErrorDeclSyntax)

    open func visit(_ node: SwiftSyntax.PoundWarningDeclSyntax)

    open func visit(_ node: SwiftSyntax.DeclModifierSyntax)

    open func visit(_ node: SwiftSyntax.InheritedTypeSyntax)

    open func visit(_ node: SwiftSyntax.TypeInheritanceClauseSyntax)

    open func visit(_ node: SwiftSyntax.ClassDeclSyntax)

    open func visit(_ node: SwiftSyntax.StructDeclSyntax)

    open func visit(_ node: SwiftSyntax.ProtocolDeclSyntax)

    open func visit(_ node: SwiftSyntax.ExtensionDeclSyntax)

    open func visit(_ node: SwiftSyntax.MemberDeclBlockSyntax)

    open func visit(_ node: SwiftSyntax.SourceFileSyntax)

    open func visit(_ node: SwiftSyntax.InitializerClauseSyntax)

    open func visit(_ node: SwiftSyntax.FunctionParameterSyntax)

    open func visit(_ node: SwiftSyntax.FunctionDeclSyntax)

    open func visit(_ node: SwiftSyntax.InitializerDeclSyntax)

    open func visit(_ node: SwiftSyntax.DeinitializerDeclSyntax)

    open func visit(_ node: SwiftSyntax.SubscriptDeclSyntax)

    open func visit(_ node: SwiftSyntax.ElseDirectiveClauseSyntax)

    open func visit(_ node: SwiftSyntax.AccessLevelModifierSyntax)

    open func visit(_ node: SwiftSyntax.AccessPathComponentSyntax)

    open func visit(_ node: SwiftSyntax.ImportDeclSyntax)

    open func visit(_ node: SwiftSyntax.AccessorParameterSyntax)

    open func visit(_ node: SwiftSyntax.AccessorDeclSyntax)

    open func visit(_ node: SwiftSyntax.AccessorBlockSyntax)

    open func visit(_ node: SwiftSyntax.PatternBindingSyntax)

    open func visit(_ node: SwiftSyntax.VariableDeclSyntax)

    open func visit(_ node: SwiftSyntax.AttributeSyntax)

    open func visit(_ node: SwiftSyntax.ContinueStmtSyntax)

    open func visit(_ node: SwiftSyntax.WhileStmtSyntax)

    open func visit(_ node: SwiftSyntax.DeferStmtSyntax)

    open func visit(_ node: SwiftSyntax.ExpressionStmtSyntax)

    open func visit(_ node: SwiftSyntax.RepeatWhileStmtSyntax)

    open func visit(_ node: SwiftSyntax.GuardStmtSyntax)

    open func visit(_ node: SwiftSyntax.WhereClauseSyntax)

    open func visit(_ node: SwiftSyntax.ForInStmtSyntax)

    open func visit(_ node: SwiftSyntax.SwitchStmtSyntax)

    open func visit(_ node: SwiftSyntax.DoStmtSyntax)

    open func visit(_ node: SwiftSyntax.ReturnStmtSyntax)

    open func visit(_ node: SwiftSyntax.FallthroughStmtSyntax)

    open func visit(_ node: SwiftSyntax.BreakStmtSyntax)

    open func visit(_ node: SwiftSyntax.ConditionElementSyntax)

    open func visit(_ node: SwiftSyntax.AvailabilityConditionSyntax)

    open func visit(_ node: SwiftSyntax.MatchingPatternConditionSyntax)

    open func visit(_ node: SwiftSyntax.OptionalBindingConditionSyntax)

    open func visit(_ node: SwiftSyntax.DeclarationStmtSyntax)

    open func visit(_ node: SwiftSyntax.ThrowStmtSyntax)

    open func visit(_ node: SwiftSyntax.IfStmtSyntax)

    open func visit(_ node: SwiftSyntax.ElseIfContinuationSyntax)

    open func visit(_ node: SwiftSyntax.ElseBlockSyntax)

    open func visit(_ node: SwiftSyntax.SwitchCaseSyntax)

    open func visit(_ node: SwiftSyntax.SwitchDefaultLabelSyntax)

    open func visit(_ node: SwiftSyntax.CaseItemSyntax)

    open func visit(_ node: SwiftSyntax.SwitchCaseLabelSyntax)

    open func visit(_ node: SwiftSyntax.CatchClauseSyntax)

    open func visit(_ node: SwiftSyntax.GenericWhereClauseSyntax)

    open func visit(_ node: SwiftSyntax.SameTypeRequirementSyntax)

    open func visit(_ node: SwiftSyntax.GenericParameterSyntax)

    open func visit(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    open func visit(_ node: SwiftSyntax.ConformanceRequirementSyntax)

    open func visit(_ node: SwiftSyntax.SimpleTypeIdentifierSyntax)

    open func visit(_ node: SwiftSyntax.MemberTypeIdentifierSyntax)

    open func visit(_ node: SwiftSyntax.ArrayTypeSyntax)

    open func visit(_ node: SwiftSyntax.DictionaryTypeSyntax)

    open func visit(_ node: SwiftSyntax.MetatypeTypeSyntax)

    open func visit(_ node: SwiftSyntax.OptionalTypeSyntax)

    open func visit(_ node: SwiftSyntax.ImplicitlyUnwrappedOptionalTypeSyntax)

    open func visit(_ node: SwiftSyntax.CompositionTypeElementSyntax)

    open func visit(_ node: SwiftSyntax.CompositionTypeSyntax)

    open func visit(_ node: SwiftSyntax.TupleTypeElementSyntax)

    open func visit(_ node: SwiftSyntax.TupleTypeSyntax)

    open func visit(_ node: SwiftSyntax.FunctionTypeSyntax)

    open func visit(_ node: SwiftSyntax.AttributedTypeSyntax)

    open func visit(_ node: SwiftSyntax.GenericArgumentSyntax)

    open func visit(_ node: SwiftSyntax.GenericArgumentClauseSyntax)

    open func visit(_ node: SwiftSyntax.TypeAnnotationSyntax)

    open func visit(_ node: SwiftSyntax.EnumCasePatternSyntax)

    open func visit(_ node: SwiftSyntax.IsTypePatternSyntax)

    open func visit(_ node: SwiftSyntax.OptionalPatternSyntax)

    open func visit(_ node: SwiftSyntax.IdentifierPatternSyntax)

    open func visit(_ node: SwiftSyntax.AsTypePatternSyntax)

    open func visit(_ node: SwiftSyntax.TuplePatternSyntax)

    open func visit(_ node: SwiftSyntax.WildcardPatternSyntax)

    open func visit(_ node: SwiftSyntax.TuplePatternElementSyntax)

    open func visit(_ node: SwiftSyntax.ExpressionPatternSyntax)

    open func visit(_ node: SwiftSyntax.ValueBindingPatternSyntax)

    open func visit(_ token: SwiftSyntax.TokenSyntax)

    /// The function called before visiting the node and its descendents.
    ///   - node: the node we are about to visit.
    open func visitPre(_ node: Syntax)

    /// The function called after visting the node and its descendents.
    ///   - node: the node we just finished visiting.
    open func visitPost(_ node: Syntax)

    public func visit(_ node: Syntax)
}

public struct TernaryExprSyntax : ExprSyntax, Hashable {

    public var conditionExpression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `conditionExpression` replaced.
    /// - param newChild: The new `conditionExpression` to replace the node's
    ///                   current `conditionExpression`, if present.
    public func withConditionExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.TernaryExprSyntax

    public var questionMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `questionMark` replaced.
    /// - param newChild: The new `questionMark` to replace the node's
    ///                   current `questionMark`, if present.
    public func withQuestionMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TernaryExprSyntax

    public var firstChoice: ExprSyntax { get }

    /// Returns a copy of the receiver with its `firstChoice` replaced.
    /// - param newChild: The new `firstChoice` to replace the node's
    ///                   current `firstChoice`, if present.
    public func withFirstChoice(_ newChild: ExprSyntax?) -> SwiftSyntax.TernaryExprSyntax

    public var colonMark: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colonMark` replaced.
    /// - param newChild: The new `colonMark` to replace the node's
    ///                   current `colonMark`, if present.
    public func withColonMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TernaryExprSyntax

    public var secondChoice: ExprSyntax { get }

    /// Returns a copy of the receiver with its `secondChoice` replaced.
    /// - param newChild: The new `secondChoice` to replace the node's
    ///                   current `secondChoice`, if present.
    public func withSecondChoice(_ newChild: ExprSyntax?) -> SwiftSyntax.TernaryExprSyntax

    /// Determines if two `TernaryExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TernaryExprSyntax, rhs: SwiftSyntax.TernaryExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TernaryExprSyntax {

    /// Creates a `TernaryExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TernaryExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TernaryExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TernaryExprSyntaxBuilder) -> Swift.Void)
}

public struct TernaryExprSyntaxBuilder {

    public mutating func useConditionExpression(_ node: ExprSyntax)

    public mutating func useQuestionMark(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useFirstChoice(_ node: ExprSyntax)

    public mutating func useColonMark(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSecondChoice(_ node: ExprSyntax)
}

public struct ThrowStmtSyntax : StmtSyntax, Hashable {

    public var throwKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `throwKeyword` replaced.
    /// - param newChild: The new `throwKeyword` to replace the node's
    ///                   current `throwKeyword`, if present.
    public func withThrowKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ThrowStmtSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.ThrowStmtSyntax

    /// Determines if two `ThrowStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ThrowStmtSyntax, rhs: SwiftSyntax.ThrowStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ThrowStmtSyntax {

    /// Creates a `ThrowStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ThrowStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ThrowStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ThrowStmtSyntaxBuilder) -> Swift.Void)
}

public struct ThrowStmtSyntaxBuilder {

    public mutating func useThrowKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)
}

/// Enumerates the kinds of tokens in the Swift language.
public enum TokenKind : Swift.Codable {

    case unknown

    case eof

    case associatedtypeKeyword

    case classKeyword

    case deinitKeyword

    case enumKeyword

    case extensionKeyword

    case funcKeyword

    case importKeyword

    case initKeyword

    case inoutKeyword

    case letKeyword

    case operatorKeyword

    case precedencegroupKeyword

    case protocolKeyword

    case structKeyword

    case subscriptKeyword

    case typealiasKeyword

    case varKeyword

    case fileprivateKeyword

    case internalKeyword

    case privateKeyword

    case publicKeyword

    case staticKeyword

    case deferKeyword

    case ifKeyword

    case guardKeyword

    case doKeyword

    case repeatKeyword

    case elseKeyword

    case forKeyword

    case inKeyword

    case whileKeyword

    case returnKeyword

    case breakKeyword

    case continueKeyword

    case fallthroughKeyword

    case switchKeyword

    case caseKeyword

    case defaultKeyword

    case whereKeyword

    case catchKeyword

    case asKeyword

    case anyKeyword

    case falseKeyword

    case isKeyword

    case nilKeyword

    case rethrowsKeyword

    case superKeyword

    case selfKeyword

    case capitalSelfKeyword

    case throwKeyword

    case trueKeyword

    case tryKeyword

    case throwsKeyword

    case __file__Keyword

    case __line__Keyword

    case __column__Keyword

    case __function__Keyword

    case __dso_handle__Keyword

    case wildcardKeyword

    case poundAvailableKeyword

    case poundEndifKeyword

    case poundElseKeyword

    case poundElseifKeyword

    case poundIfKeyword

    case poundSourceLocationKeyword

    case poundFileKeyword

    case poundLineKeyword

    case poundColumnKeyword

    case poundDsohandleKeyword

    case poundFunctionKeyword

    case poundSelectorKeyword

    case poundKeyPathKeyword

    case poundColorLiteralKeyword

    case poundFileLiteralKeyword

    case poundImageLiteralKeyword

    case arrow

    case atSign

    case colon

    case semicolon

    case comma

    case period

    case equal

    case prefixPeriod

    case leftParen

    case rightParen

    case leftBrace

    case rightBrace

    case leftSquareBracket

    case rightSquareBracket

    case leftAngle

    case rightAngle

    case prefixAmpersand

    case postfixQuestionMark

    case infixQuestionMark

    case exclamationMark

    case backslash

    case stringInterpolationAnchor

    case stringQuote

    case multilineStringQuote

    case stringSegment(String)

    case identifier(String)

    case dollarIdentifier(String)

    case unspacedBinaryOperator(String)

    case spacedBinaryOperator(String)

    case prefixOperator(String)

    case postfixOperator(String)

    case integerLiteral(String)

    case floatingLiteral(String)

    case stringLiteral(String)

    case contextualKeyword(String)

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws
}

extension TokenKind : Equatable {

    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: SwiftSyntax.TokenKind, rhs: SwiftSyntax.TokenKind) -> Bool
}

/// `TokenListSyntax` represents a collection of one or more
/// `TokenSyntax` nodes. TokenListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct TokenListSyntax {

    /// Creates a new `TokenListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `TokenListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.TokenSyntax) -> SwiftSyntax.TokenListSyntax

    /// Creates a new `TokenListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `TokenListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.TokenSyntax) -> SwiftSyntax.TokenListSyntax

    /// Creates a new `TokenListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `TokenListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.TokenSyntax, at index: Int) -> SwiftSyntax.TokenListSyntax

    /// Creates a new `TokenListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `TokenListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.TokenListSyntax

    /// Creates a new `TokenListSyntax` by removing the first element.
    ///
    /// - Returns: A new `TokenListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.TokenListSyntax

    /// Creates a new `TokenListSyntax` by removing the last element.
    ///
    /// - Returns: A new `TokenListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.TokenListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.TokenListSyntaxIterator
}

/// Conformance for `TokenListSyntax`` to the Collection protocol.
extension TokenListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.TokenSyntax { get }
}

/// A type that iterates over a `TokenListSyntax` using its indices.
public struct TokenListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.TokenSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.TokenListSyntaxIterator.Element?
}

/// MARK: - Nodes
/// A Syntax node representing a single token.
public struct TokenSyntax : Hashable {

    /// The text of the token as written in the source code.
    public var text: String { get }

    public func withKind(_ tokenKind: SwiftSyntax.TokenKind) -> SwiftSyntax.TokenSyntax

    /// Returns a new TokenSyntax with its leading trivia replaced
    /// by the provided trivia.
    public func withLeadingTrivia(_ leadingTrivia: SwiftSyntax.Trivia) -> SwiftSyntax.TokenSyntax

    /// Returns a new TokenSyntax with its trailing trivia replaced
    /// by the provided trivia.
    public func withTrailingTrivia(_ trailingTrivia: SwiftSyntax.Trivia) -> SwiftSyntax.TokenSyntax

    /// Returns a new TokenSyntax with its leading trivia removed.
    public func withoutLeadingTrivia() -> SwiftSyntax.TokenSyntax

    /// Returns a new TokenSyntax with its trailing trivia removed.
    public func withoutTrailingTrivia() -> SwiftSyntax.TokenSyntax

    /// Returns a new TokenSyntax with all trivia removed.
    public func withoutTrivia() -> SwiftSyntax.TokenSyntax

    /// The leading trivia (spaces, newlines, etc.) associated with this token.
    public var leadingTrivia: SwiftSyntax.Trivia { get }

    /// The trailing trivia (spaces, newlines, etc.) associated with this token.
    public var trailingTrivia: SwiftSyntax.Trivia { get }

    /// The kind of token this node represents.
    public var tokenKind: SwiftSyntax.TokenKind { get }

    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: SwiftSyntax.TokenSyntax, rhs: SwiftSyntax.TokenSyntax) -> Bool

    /// The hash value.
    ///
    /// Hash values are not guaranteed to be equal across different executions of
    /// your program. Do not save hash values to use during a future execution.
    public var hashValue: Int { get }
}

/// A collection of leading or trailing trivia. This is the main data structure
/// for thinking about trivia.
public struct Trivia : Swift.Codable {

    /// Creates Trivia with the provided underlying pieces.
    public init(pieces: [SwiftSyntax.TriviaPiece])

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws

    /// Creates Trivia with no pieces.
    public static var zero: SwiftSyntax.Trivia { get }

    /// Creates a new `Trivia` by appending the provided `TriviaPiece` to the end.
    public func appending(_ piece: SwiftSyntax.TriviaPiece) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of space characters in a row.
    public static func spaces(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of tab characters in a row.
    public static func tabs(_ count: Int) -> SwiftSyntax.Trivia

    /// A vertical tab '\v' character.
    public static func verticalTabs(_ count: Int) -> SwiftSyntax.Trivia

    /// A form-feed '\f' character.
    public static func formfeeds(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of newline characters
    /// in a row.
    public static func newlines(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of carriage-return characters
    /// in a row.
    public static func carriageReturns(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of two bytes sequence
    /// consists of CR and LF in a row.
    public static func carriageReturnLineFeeds(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for some number of backtick '`' characters
    /// in a row.
    public static func backticks(_ count: Int) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for a single line of ('//') developer comment.
    public static func lineComment(_ text: String) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for a block comment ('/* ... */')
    public static func blockComment(_ text: String) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for a single line of ('///') doc comment.
    public static func docLineComment(_ text: String) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for a documentation block comment ('/** ... */')
    public static func docBlockComment(_ text: String) -> SwiftSyntax.Trivia

    /// Return a piece of trivia for any garbage text.
    public static func garbageText(_ text: String) -> SwiftSyntax.Trivia
}

/// Conformance for Trivia to the Collection protocol.
extension Trivia : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.TriviaPiece { get }
}

extension Trivia : ExpressibleByArrayLiteral {

    /// Creates Trivia from the provided pieces.
    public init(arrayLiteral elements: SwiftSyntax.TriviaPiece...)
}

/// A contiguous stretch of a single kind of trivia. The constituent part of
/// a `Trivia` collection.
///
/// For example, four spaces would be represented by
/// `.spaces(4)`
///
/// In general, you should deal with the actual Trivia collection instead
/// of individual pieces whenever possible.
public enum TriviaPiece : Swift.Codable {

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws

    /// A space ' ' character.
    case spaces(Int)

    /// A tab '\t' character.
    case tabs(Int)

    /// A vertical tab '\v' character.
    case verticalTabs(Int)

    /// A form-feed '\f' character.
    case formfeeds(Int)

    /// A newline '\n' character.
    case newlines(Int)

    /// A carriage-return '\r' character.
    case carriageReturns(Int)

    /// A newline two bytes sequence consists of '\r' and '\n' characters.
    case carriageReturnLineFeeds(Int)

    /// A backtick '`' character, used to escape identifiers.
    case backticks(Int)

    /// A developer line comment, starting with '//'
    case lineComment(String)

    /// A developer block comment, starting with '/*' and ending with '*/'.
    case blockComment(String)

    /// A documentation line comment, starting with '///'.
    case docLineComment(String)

    /// A documentation block comment, starting with '/**' and ending with '*/.
    case docBlockComment(String)

    /// Any skipped text.
    case garbageText(String)
}

extension TriviaPiece : TextOutputStreamable {

    /// Prints the provided trivia as they would be written in a source file.
    ///
    /// - Parameter stream: The stream to which to print the trivia.
    public func write<Target>(to target: inout Target) where Target : TextOutputStream
}

public struct TryExprSyntax : ExprSyntax, Hashable {

    public var tryKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `tryKeyword` replaced.
    /// - param newChild: The new `tryKeyword` to replace the node's
    ///                   current `tryKeyword`, if present.
    public func withTryKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TryExprSyntax

    public var questionOrExclamationMark: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `questionOrExclamationMark` replaced.
    /// - param newChild: The new `questionOrExclamationMark` to replace the node's
    ///                   current `questionOrExclamationMark`, if present.
    public func withQuestionOrExclamationMark(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TryExprSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.TryExprSyntax

    /// Determines if two `TryExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TryExprSyntax, rhs: SwiftSyntax.TryExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TryExprSyntax {

    /// Creates a `TryExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TryExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TryExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TryExprSyntaxBuilder) -> Swift.Void)
}

public struct TryExprSyntaxBuilder {

    public mutating func useTryKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useQuestionOrExclamationMark(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)
}

/// `TupleElementListSyntax` represents a collection of one or more
/// `TupleElementSyntax` nodes. TupleElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct TupleElementListSyntax {

    /// Creates a new `TupleElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `TupleElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.TupleElementSyntax) -> SwiftSyntax.TupleElementListSyntax

    /// Creates a new `TupleElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `TupleElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.TupleElementSyntax) -> SwiftSyntax.TupleElementListSyntax

    /// Creates a new `TupleElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `TupleElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.TupleElementSyntax, at index: Int) -> SwiftSyntax.TupleElementListSyntax

    /// Creates a new `TupleElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `TupleElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.TupleElementListSyntax

    /// Creates a new `TupleElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `TupleElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.TupleElementListSyntax

    /// Creates a new `TupleElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `TupleElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.TupleElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.TupleElementListSyntaxIterator
}

/// Conformance for `TupleElementListSyntax`` to the Collection protocol.
extension TupleElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.TupleElementSyntax { get }
}

/// A type that iterates over a `TupleElementListSyntax` using its indices.
public struct TupleElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.TupleElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.TupleElementListSyntaxIterator.Element?
}

public struct TupleElementSyntax : Syntax, Hashable {

    public var label: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `label` replaced.
    /// - param newChild: The new `label` to replace the node's
    ///                   current `label`, if present.
    public func withLabel(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleElementSyntax

    public var colon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleElementSyntax

    public var expression: ExprSyntax { get }

    /// Returns a copy of the receiver with its `expression` replaced.
    /// - param newChild: The new `expression` to replace the node's
    ///                   current `expression`, if present.
    public func withExpression(_ newChild: ExprSyntax?) -> SwiftSyntax.TupleElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleElementSyntax

    /// Determines if two `TupleElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TupleElementSyntax, rhs: SwiftSyntax.TupleElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TupleElementSyntax {

    /// Creates a `TupleElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TupleElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TupleElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TupleElementSyntaxBuilder) -> Swift.Void)
}

extension TupleElementSyntax : WithTrailingCommaSyntax {
}

public struct TupleElementSyntaxBuilder {

    public mutating func useLabel(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useExpression(_ node: ExprSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct TupleExprSyntax : ExprSyntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleExprSyntax

    public var elementList: SwiftSyntax.TupleElementListSyntax { get }

    /// Adds the provided `TupleElement` to the node's `elementList`
    /// collection.
    /// - param element: The new `TupleElement` to add to the node's
    ///                  `elementList` collection.
    /// - returns: A copy of the receiver with the provided `TupleElement`
    ///            appended to its `elementList` collection.
    public func addTupleElement(_ element: SwiftSyntax.TupleElementSyntax) -> SwiftSyntax.TupleExprSyntax

    /// Returns a copy of the receiver with its `elementList` replaced.
    /// - param newChild: The new `elementList` to replace the node's
    ///                   current `elementList`, if present.
    public func withElementList(_ newChild: SwiftSyntax.TupleElementListSyntax?) -> SwiftSyntax.TupleExprSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleExprSyntax

    /// Determines if two `TupleExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TupleExprSyntax, rhs: SwiftSyntax.TupleExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TupleExprSyntax {

    /// Creates a `TupleExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TupleExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TupleExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TupleExprSyntaxBuilder) -> Swift.Void)
}

extension TupleExprSyntax : ParenthesizedSyntax {
}

public struct TupleExprSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addTupleElement(_ elt: SwiftSyntax.TupleElementSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

/// `TuplePatternElementListSyntax` represents a collection of one or more
/// `TuplePatternElementSyntax` nodes. TuplePatternElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct TuplePatternElementListSyntax {

    /// Creates a new `TuplePatternElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `TuplePatternElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.TuplePatternElementSyntax) -> SwiftSyntax.TuplePatternElementListSyntax

    /// Creates a new `TuplePatternElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `TuplePatternElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.TuplePatternElementSyntax) -> SwiftSyntax.TuplePatternElementListSyntax

    /// Creates a new `TuplePatternElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `TuplePatternElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.TuplePatternElementSyntax, at index: Int) -> SwiftSyntax.TuplePatternElementListSyntax

    /// Creates a new `TuplePatternElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `TuplePatternElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.TuplePatternElementListSyntax

    /// Creates a new `TuplePatternElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `TuplePatternElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.TuplePatternElementListSyntax

    /// Creates a new `TuplePatternElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `TuplePatternElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.TuplePatternElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.TuplePatternElementListSyntaxIterator
}

/// Conformance for `TuplePatternElementListSyntax`` to the Collection protocol.
extension TuplePatternElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.TuplePatternElementSyntax { get }
}

/// A type that iterates over a `TuplePatternElementListSyntax` using its indices.
public struct TuplePatternElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.TuplePatternElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.TuplePatternElementListSyntaxIterator.Element?
}

public struct TuplePatternElementSyntax : Syntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternElementSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternElementSyntax

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.TuplePatternElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternElementSyntax

    /// Determines if two `TuplePatternElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TuplePatternElementSyntax, rhs: SwiftSyntax.TuplePatternElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TuplePatternElementSyntax {

    /// Creates a `TuplePatternElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TuplePatternElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TuplePatternElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TuplePatternElementSyntaxBuilder) -> Swift.Void)
}

extension TuplePatternElementSyntax : WithTrailingCommaSyntax, LabeledSyntax {
}

public struct TuplePatternElementSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func usePattern(_ node: PatternSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct TuplePatternSyntax : PatternSyntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternSyntax

    public var elements: SwiftSyntax.TuplePatternElementListSyntax { get }

    /// Adds the provided `TuplePatternElement` to the node's `elements`
    /// collection.
    /// - param element: The new `TuplePatternElement` to add to the node's
    ///                  `elements` collection.
    /// - returns: A copy of the receiver with the provided `TuplePatternElement`
    ///            appended to its `elements` collection.
    public func addTuplePatternElement(_ element: SwiftSyntax.TuplePatternElementSyntax) -> SwiftSyntax.TuplePatternSyntax

    /// Returns a copy of the receiver with its `elements` replaced.
    /// - param newChild: The new `elements` to replace the node's
    ///                   current `elements`, if present.
    public func withElements(_ newChild: SwiftSyntax.TuplePatternElementListSyntax?) -> SwiftSyntax.TuplePatternSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TuplePatternSyntax

    /// Determines if two `TuplePatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TuplePatternSyntax, rhs: SwiftSyntax.TuplePatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TuplePatternSyntax {

    /// Creates a `TuplePatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TuplePatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TuplePatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TuplePatternSyntaxBuilder) -> Swift.Void)
}

extension TuplePatternSyntax : ParenthesizedSyntax {
}

public struct TuplePatternSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addTuplePatternElement(_ elt: SwiftSyntax.TuplePatternElementSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

/// `TupleTypeElementListSyntax` represents a collection of one or more
/// `TupleTypeElementSyntax` nodes. TupleTypeElementListSyntax behaves
/// as a regular Swift collection, and has accessors that return new
/// versions of the collection with different children.
public struct TupleTypeElementListSyntax {

    /// Creates a new `TupleTypeElementListSyntax` by appending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to append.
    /// - Returns: A new `TupleTypeElementListSyntax` with that element appended to the end.
    public func appending(_ syntax: SwiftSyntax.TupleTypeElementSyntax) -> SwiftSyntax.TupleTypeElementListSyntax

    /// Creates a new `TupleTypeElementListSyntax` by prepending the provided syntax element
    /// to the children.
    ///
    /// - Parameter syntax: The element to prepend.
    /// - Returns: A new `TupleTypeElementListSyntax` with that element prepended to the
    ///            beginning.
    public func prepending(_ syntax: SwiftSyntax.TupleTypeElementSyntax) -> SwiftSyntax.TupleTypeElementListSyntax

    /// Creates a new `TupleTypeElementListSyntax` by inserting the provided syntax element
    /// at the provided index in the children.
    ///
    /// - Parameters:
    ///   - syntax: The element to insert.
    ///   - index: The index at which to insert the element in the collection.
    ///
    /// - Returns: A new `TupleTypeElementListSyntax` with that element appended to the end.
    public func inserting(_ syntax: SwiftSyntax.TupleTypeElementSyntax, at index: Int) -> SwiftSyntax.TupleTypeElementListSyntax

    /// Creates a new `TupleTypeElementListSyntax` by removing the syntax element at the
    /// provided index.
    ///
    /// - Parameter index: The index of the element to remove from the collection.
    /// - Returns: A new `TupleTypeElementListSyntax` with the element at the provided index
    ///            removed.
    public func removing(childAt index: Int) -> SwiftSyntax.TupleTypeElementListSyntax

    /// Creates a new `TupleTypeElementListSyntax` by removing the first element.
    ///
    /// - Returns: A new `TupleTypeElementListSyntax` with the first element removed.
    public func removingFirst() -> SwiftSyntax.TupleTypeElementListSyntax

    /// Creates a new `TupleTypeElementListSyntax` by removing the last element.
    ///
    /// - Returns: A new `TupleTypeElementListSyntax` with the last element removed.
    public func removingLast() -> SwiftSyntax.TupleTypeElementListSyntax

    /// Returns an iterator over the elements of this syntax collection.
    public func makeIterator() -> SwiftSyntax.TupleTypeElementListSyntaxIterator
}

/// Conformance for `TupleTypeElementListSyntax`` to the Collection protocol.
extension TupleTypeElementListSyntax : Collection {

    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    public var startIndex: Int { get }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// When you need a range that includes the last element of a collection, use
    /// the half-open range operator (`..<`) with `endIndex`. The `..<` operator
    /// creates a range that doesn't include the upper bound, so it's always
    /// safe to use with `endIndex`. For example:
    ///
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let index = numbers.index(of: 30) {
    ///         print(numbers[index ..< numbers.endIndex])
    ///     }
    ///     // Prints "[30, 40, 50]"
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    public var endIndex: Int { get }

    /// Returns the position immediately after the given index.
    ///
    /// The successor of an index must be well defined. For an index `i` into a
    /// collection `c`, calling `c.index(after: i)` returns the same index every
    /// time.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    public func index(after i: Int) -> Int

    /// Accesses the element at the specified position.
    ///
    /// The following example accesses an element of an array through its
    /// subscript to print its value:
    ///
    ///     var streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
    ///     print(streets[1])
    ///     // Prints "Bryant"
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    public subscript(index: Int) -> SwiftSyntax.TupleTypeElementSyntax { get }
}

/// A type that iterates over a `TupleTypeElementListSyntax` using its indices.
public struct TupleTypeElementListSyntaxIterator : IteratorProtocol {

    /// The type of element traversed by the iterator.
    public typealias Element = SwiftSyntax.TupleTypeElementSyntax

    /// Advances to the next element and returns it, or `nil` if no next element
    /// exists.
    ///
    /// Repeatedly calling this method returns, in order, all the elements of the
    /// underlying sequence. As soon as the sequence has run out of elements, all
    /// subsequent calls return `nil`.
    ///
    /// You must not call this method if any other copy of this iterator has been
    /// advanced with a call to its `next()` method.
    ///
    /// The following example shows how an iterator can be used explicitly to
    /// emulate a `for`-`in` loop. First, retrieve a sequence's iterator, and
    /// then call the iterator's `next()` method until it returns `nil`.
    ///
    ///     let numbers = [2, 3, 5, 7]
    ///     var numbersIterator = numbers.makeIterator()
    ///
    ///     while let num = numbersIterator.next() {
    ///         print(num)
    ///     }
    ///     // Prints "2"
    ///     // Prints "3"
    ///     // Prints "5"
    ///     // Prints "7"
    ///
    /// - Returns: The next element in the underlying sequence, if a next element
    ///   exists; otherwise, `nil`.
    public mutating func next() -> SwiftSyntax.TupleTypeElementListSyntaxIterator.Element?
}

public struct TupleTypeElementSyntax : Syntax, Hashable {

    public var inOut: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `inOut` replaced.
    /// - param newChild: The new `inOut` to replace the node's
    ///                   current `inOut`, if present.
    public func withInOut(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var name: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `name` replaced.
    /// - param newChild: The new `name` to replace the node's
    ///                   current `name`, if present.
    public func withName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var secondName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `secondName` replaced.
    /// - param newChild: The new `secondName` to replace the node's
    ///                   current `secondName`, if present.
    public func withSecondName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var colon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var ellipsis: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `ellipsis` replaced.
    /// - param newChild: The new `ellipsis` to replace the node's
    ///                   current `ellipsis`, if present.
    public func withEllipsis(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var initializer: SwiftSyntax.InitializerClauseSyntax? { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.InitializerClauseSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `trailingComma` replaced.
    /// - param newChild: The new `trailingComma` to replace the node's
    ///                   current `trailingComma`, if present.
    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeElementSyntax

    /// Determines if two `TupleTypeElementSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TupleTypeElementSyntax, rhs: SwiftSyntax.TupleTypeElementSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TupleTypeElementSyntax {

    /// Creates a `TupleTypeElementSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TupleTypeElementSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TupleTypeElementSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TupleTypeElementSyntaxBuilder) -> Swift.Void)
}

extension TupleTypeElementSyntax : WithTrailingCommaSyntax {
}

public struct TupleTypeElementSyntaxBuilder {

    public mutating func useInOut(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useSecondName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useType(_ node: TypeSyntax)

    public mutating func useEllipsis(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.InitializerClauseSyntax)

    public mutating func useTrailingComma(_ node: SwiftSyntax.TokenSyntax)
}

public struct TupleTypeSyntax : TypeSyntax, Hashable {

    public var leftParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `leftParen` replaced.
    /// - param newChild: The new `leftParen` to replace the node's
    ///                   current `leftParen`, if present.
    public func withLeftParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeSyntax

    public var elements: SwiftSyntax.TupleTypeElementListSyntax { get }

    /// Adds the provided `TupleTypeElement` to the node's `elements`
    /// collection.
    /// - param element: The new `TupleTypeElement` to add to the node's
    ///                  `elements` collection.
    /// - returns: A copy of the receiver with the provided `TupleTypeElement`
    ///            appended to its `elements` collection.
    public func addTupleTypeElement(_ element: SwiftSyntax.TupleTypeElementSyntax) -> SwiftSyntax.TupleTypeSyntax

    /// Returns a copy of the receiver with its `elements` replaced.
    /// - param newChild: The new `elements` to replace the node's
    ///                   current `elements`, if present.
    public func withElements(_ newChild: SwiftSyntax.TupleTypeElementListSyntax?) -> SwiftSyntax.TupleTypeSyntax

    public var rightParen: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `rightParen` replaced.
    /// - param newChild: The new `rightParen` to replace the node's
    ///                   current `rightParen`, if present.
    public func withRightParen(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TupleTypeSyntax

    /// Determines if two `TupleTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TupleTypeSyntax, rhs: SwiftSyntax.TupleTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TupleTypeSyntax {

    /// Creates a `TupleTypeSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TupleTypeSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TupleTypeSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TupleTypeSyntaxBuilder) -> Swift.Void)
}

extension TupleTypeSyntax : ParenthesizedSyntax {
}

public struct TupleTypeSyntaxBuilder {

    public mutating func useLeftParen(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addTupleTypeElement(_ elt: SwiftSyntax.TupleTypeElementSyntax)

    public mutating func useRightParen(_ node: SwiftSyntax.TokenSyntax)
}

public struct TypeAnnotationSyntax : Syntax, Hashable {

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TypeAnnotationSyntax

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.TypeAnnotationSyntax

    /// Determines if two `TypeAnnotationSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TypeAnnotationSyntax, rhs: SwiftSyntax.TypeAnnotationSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TypeAnnotationSyntax {

    /// Creates a `TypeAnnotationSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TypeAnnotationSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TypeAnnotationSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TypeAnnotationSyntaxBuilder) -> Swift.Void)
}

public struct TypeAnnotationSyntaxBuilder {

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useType(_ node: TypeSyntax)
}

public struct TypeExprSyntax : ExprSyntax, Hashable {

    public var type: TypeSyntax { get }

    /// Returns a copy of the receiver with its `type` replaced.
    /// - param newChild: The new `type` to replace the node's
    ///                   current `type`, if present.
    public func withType(_ newChild: TypeSyntax?) -> SwiftSyntax.TypeExprSyntax

    /// Determines if two `TypeExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TypeExprSyntax, rhs: SwiftSyntax.TypeExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TypeExprSyntax {

    /// Creates a `TypeExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TypeExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TypeExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TypeExprSyntaxBuilder) -> Swift.Void)
}

public struct TypeExprSyntaxBuilder {

    public mutating func useType(_ node: TypeSyntax)
}

public struct TypeInheritanceClauseSyntax : Syntax, Hashable {

    public var colon: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `colon` replaced.
    /// - param newChild: The new `colon` to replace the node's
    ///                   current `colon`, if present.
    public func withColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TypeInheritanceClauseSyntax

    public var inheritedTypeCollection: SwiftSyntax.InheritedTypeListSyntax { get }

    /// Adds the provided `InheritedType` to the node's `inheritedTypeCollection`
    /// collection.
    /// - param element: The new `InheritedType` to add to the node's
    ///                  `inheritedTypeCollection` collection.
    /// - returns: A copy of the receiver with the provided `InheritedType`
    ///            appended to its `inheritedTypeCollection` collection.
    public func addInheritedType(_ element: SwiftSyntax.InheritedTypeSyntax) -> SwiftSyntax.TypeInheritanceClauseSyntax

    /// Returns a copy of the receiver with its `inheritedTypeCollection` replaced.
    /// - param newChild: The new `inheritedTypeCollection` to replace the node's
    ///                   current `inheritedTypeCollection`, if present.
    public func withInheritedTypeCollection(_ newChild: SwiftSyntax.InheritedTypeListSyntax?) -> SwiftSyntax.TypeInheritanceClauseSyntax

    /// Determines if two `TypeInheritanceClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TypeInheritanceClauseSyntax, rhs: SwiftSyntax.TypeInheritanceClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TypeInheritanceClauseSyntax {

    /// Creates a `TypeInheritanceClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TypeInheritanceClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TypeInheritanceClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TypeInheritanceClauseSyntaxBuilder) -> Swift.Void)
}

public struct TypeInheritanceClauseSyntaxBuilder {

    public mutating func useColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addInheritedType(_ elt: SwiftSyntax.InheritedTypeSyntax)
}

public struct TypeInitializerClauseSyntax : Syntax, Hashable {

    public var equal: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `equal` replaced.
    /// - param newChild: The new `equal` to replace the node's
    ///                   current `equal`, if present.
    public func withEqual(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TypeInitializerClauseSyntax

    public var value: TypeSyntax { get }

    /// Returns a copy of the receiver with its `value` replaced.
    /// - param newChild: The new `value` to replace the node's
    ///                   current `value`, if present.
    public func withValue(_ newChild: TypeSyntax?) -> SwiftSyntax.TypeInitializerClauseSyntax

    /// Determines if two `TypeInitializerClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TypeInitializerClauseSyntax, rhs: SwiftSyntax.TypeInitializerClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TypeInitializerClauseSyntax {

    /// Creates a `TypeInitializerClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TypeInitializerClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TypeInitializerClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TypeInitializerClauseSyntaxBuilder) -> Swift.Void)
}

public struct TypeInitializerClauseSyntaxBuilder {

    public mutating func useEqual(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useValue(_ node: TypeSyntax)
}

public protocol TypeSyntax : Syntax {
}

public struct TypealiasDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.TypealiasDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var accessLevelModifier: SwiftSyntax.DeclModifierSyntax? { get }

    /// Returns a copy of the receiver with its `accessLevelModifier` replaced.
    /// - param newChild: The new `accessLevelModifier` to replace the node's
    ///                   current `accessLevelModifier`, if present.
    public func withAccessLevelModifier(_ newChild: SwiftSyntax.DeclModifierSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var typealiasKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `typealiasKeyword` replaced.
    /// - param newChild: The new `typealiasKeyword` to replace the node's
    ///                   current `typealiasKeyword`, if present.
    public func withTypealiasKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var identifier: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `identifier` replaced.
    /// - param newChild: The new `identifier` to replace the node's
    ///                   current `identifier`, if present.
    public func withIdentifier(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var genericParameterClause: SwiftSyntax.GenericParameterClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericParameterClause` replaced.
    /// - param newChild: The new `genericParameterClause` to replace the node's
    ///                   current `genericParameterClause`, if present.
    public func withGenericParameterClause(_ newChild: SwiftSyntax.GenericParameterClauseSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var initializer: SwiftSyntax.TypeInitializerClauseSyntax? { get }

    /// Returns a copy of the receiver with its `initializer` replaced.
    /// - param newChild: The new `initializer` to replace the node's
    ///                   current `initializer`, if present.
    public func withInitializer(_ newChild: SwiftSyntax.TypeInitializerClauseSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    public var genericWhereClause: SwiftSyntax.GenericWhereClauseSyntax? { get }

    /// Returns a copy of the receiver with its `genericWhereClause` replaced.
    /// - param newChild: The new `genericWhereClause` to replace the node's
    ///                   current `genericWhereClause`, if present.
    public func withGenericWhereClause(_ newChild: SwiftSyntax.GenericWhereClauseSyntax?) -> SwiftSyntax.TypealiasDeclSyntax

    /// Determines if two `TypealiasDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.TypealiasDeclSyntax, rhs: SwiftSyntax.TypealiasDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension TypealiasDeclSyntax {

    /// Creates a `TypealiasDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `TypealiasDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `TypealiasDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.TypealiasDeclSyntaxBuilder) -> Swift.Void)
}

extension TypealiasDeclSyntax : IdentifiedDeclSyntax {
}

public struct TypealiasDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func useAccessLevelModifier(_ node: SwiftSyntax.DeclModifierSyntax)

    public mutating func useTypealiasKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useIdentifier(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGenericParameterClause(_ node: SwiftSyntax.GenericParameterClauseSyntax)

    public mutating func useInitializer(_ node: SwiftSyntax.TypeInitializerClauseSyntax)

    public mutating func useGenericWhereClause(_ node: SwiftSyntax.GenericWhereClauseSyntax)
}

public struct UnknownDeclSyntax : DeclSyntax, Hashable {

    /// Determines if two `UnknownDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnknownDeclSyntax, rhs: SwiftSyntax.UnknownDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

public struct UnknownExprSyntax : ExprSyntax, Hashable {

    /// Determines if two `UnknownExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnknownExprSyntax, rhs: SwiftSyntax.UnknownExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

public struct UnknownPatternSyntax : PatternSyntax, Hashable {

    /// Determines if two `UnknownPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnknownPatternSyntax, rhs: SwiftSyntax.UnknownPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

public struct UnknownStmtSyntax : StmtSyntax, Hashable {

    /// Determines if two `UnknownStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnknownStmtSyntax, rhs: SwiftSyntax.UnknownStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

/// A wrapper around a raw Syntax layout.
public struct UnknownSyntax {
}

public struct UnknownTypeSyntax : TypeSyntax, Hashable {

    /// Determines if two `UnknownTypeSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnknownTypeSyntax, rhs: SwiftSyntax.UnknownTypeSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

public struct UnresolvedPatternExprSyntax : ExprSyntax, Hashable {

    public var pattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `pattern` replaced.
    /// - param newChild: The new `pattern` to replace the node's
    ///                   current `pattern`, if present.
    public func withPattern(_ newChild: PatternSyntax?) -> SwiftSyntax.UnresolvedPatternExprSyntax

    /// Determines if two `UnresolvedPatternExprSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.UnresolvedPatternExprSyntax, rhs: SwiftSyntax.UnresolvedPatternExprSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension UnresolvedPatternExprSyntax {

    /// Creates a `UnresolvedPatternExprSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `UnresolvedPatternExprSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `UnresolvedPatternExprSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.UnresolvedPatternExprSyntaxBuilder) -> Swift.Void)
}

public struct UnresolvedPatternExprSyntaxBuilder {

    public mutating func usePattern(_ node: PatternSyntax)
}

public struct ValueBindingPatternSyntax : PatternSyntax, Hashable {

    public var letOrVarKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `letOrVarKeyword` replaced.
    /// - param newChild: The new `letOrVarKeyword` to replace the node's
    ///                   current `letOrVarKeyword`, if present.
    public func withLetOrVarKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.ValueBindingPatternSyntax

    public var valuePattern: PatternSyntax { get }

    /// Returns a copy of the receiver with its `valuePattern` replaced.
    /// - param newChild: The new `valuePattern` to replace the node's
    ///                   current `valuePattern`, if present.
    public func withValuePattern(_ newChild: PatternSyntax?) -> SwiftSyntax.ValueBindingPatternSyntax

    /// Determines if two `ValueBindingPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.ValueBindingPatternSyntax, rhs: SwiftSyntax.ValueBindingPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension ValueBindingPatternSyntax {

    /// Creates a `ValueBindingPatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `ValueBindingPatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `ValueBindingPatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.ValueBindingPatternSyntaxBuilder) -> Swift.Void)
}

public struct ValueBindingPatternSyntaxBuilder {

    public mutating func useLetOrVarKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useValuePattern(_ node: PatternSyntax)
}

public struct VariableDeclSyntax : DeclSyntax, Hashable {

    public var attributes: SwiftSyntax.AttributeListSyntax? { get }

    /// Adds the provided `Attribute` to the node's `attributes`
    /// collection.
    /// - param element: The new `Attribute` to add to the node's
    ///                  `attributes` collection.
    /// - returns: A copy of the receiver with the provided `Attribute`
    ///            appended to its `attributes` collection.
    public func addAttribute(_ element: SwiftSyntax.AttributeSyntax) -> SwiftSyntax.VariableDeclSyntax

    /// Returns a copy of the receiver with its `attributes` replaced.
    /// - param newChild: The new `attributes` to replace the node's
    ///                   current `attributes`, if present.
    public func withAttributes(_ newChild: SwiftSyntax.AttributeListSyntax?) -> SwiftSyntax.VariableDeclSyntax

    public var modifiers: SwiftSyntax.ModifierListSyntax? { get }

    /// Adds the provided `Modifier` to the node's `modifiers`
    /// collection.
    /// - param element: The new `Modifier` to add to the node's
    ///                  `modifiers` collection.
    /// - returns: A copy of the receiver with the provided `Modifier`
    ///            appended to its `modifiers` collection.
    public func addModifier(_ element: Syntax) -> SwiftSyntax.VariableDeclSyntax

    /// Returns a copy of the receiver with its `modifiers` replaced.
    /// - param newChild: The new `modifiers` to replace the node's
    ///                   current `modifiers`, if present.
    public func withModifiers(_ newChild: SwiftSyntax.ModifierListSyntax?) -> SwiftSyntax.VariableDeclSyntax

    public var letOrVarKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `letOrVarKeyword` replaced.
    /// - param newChild: The new `letOrVarKeyword` to replace the node's
    ///                   current `letOrVarKeyword`, if present.
    public func withLetOrVarKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.VariableDeclSyntax

    public var bindings: SwiftSyntax.PatternBindingListSyntax { get }

    /// Adds the provided `PatternBinding` to the node's `bindings`
    /// collection.
    /// - param element: The new `PatternBinding` to add to the node's
    ///                  `bindings` collection.
    /// - returns: A copy of the receiver with the provided `PatternBinding`
    ///            appended to its `bindings` collection.
    public func addPatternBinding(_ element: SwiftSyntax.PatternBindingSyntax) -> SwiftSyntax.VariableDeclSyntax

    /// Returns a copy of the receiver with its `bindings` replaced.
    /// - param newChild: The new `bindings` to replace the node's
    ///                   current `bindings`, if present.
    public func withBindings(_ newChild: SwiftSyntax.PatternBindingListSyntax?) -> SwiftSyntax.VariableDeclSyntax

    /// Determines if two `VariableDeclSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.VariableDeclSyntax, rhs: SwiftSyntax.VariableDeclSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension VariableDeclSyntax {

    /// Creates a `VariableDeclSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `VariableDeclSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `VariableDeclSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.VariableDeclSyntaxBuilder) -> Swift.Void)
}

public struct VariableDeclSyntaxBuilder {

    public mutating func addAttribute(_ elt: SwiftSyntax.AttributeSyntax)

    public mutating func addModifier(_ elt: Syntax)

    public mutating func useLetOrVarKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addPatternBinding(_ elt: SwiftSyntax.PatternBindingSyntax)
}

public struct WhereClauseSyntax : Syntax, Hashable {

    public var whereKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `whereKeyword` replaced.
    /// - param newChild: The new `whereKeyword` to replace the node's
    ///                   current `whereKeyword`, if present.
    public func withWhereKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.WhereClauseSyntax

    public var guardResult: ExprSyntax { get }

    /// Returns a copy of the receiver with its `guardResult` replaced.
    /// - param newChild: The new `guardResult` to replace the node's
    ///                   current `guardResult`, if present.
    public func withGuardResult(_ newChild: ExprSyntax?) -> SwiftSyntax.WhereClauseSyntax

    /// Determines if two `WhereClauseSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.WhereClauseSyntax, rhs: SwiftSyntax.WhereClauseSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension WhereClauseSyntax {

    /// Creates a `WhereClauseSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `WhereClauseSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `WhereClauseSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.WhereClauseSyntaxBuilder) -> Swift.Void)
}

public struct WhereClauseSyntaxBuilder {

    public mutating func useWhereKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useGuardResult(_ node: ExprSyntax)
}

public struct WhileStmtSyntax : StmtSyntax, Hashable {

    public var labelName: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelName` replaced.
    /// - param newChild: The new `labelName` to replace the node's
    ///                   current `labelName`, if present.
    public func withLabelName(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.WhileStmtSyntax

    public var labelColon: SwiftSyntax.TokenSyntax? { get }

    /// Returns a copy of the receiver with its `labelColon` replaced.
    /// - param newChild: The new `labelColon` to replace the node's
    ///                   current `labelColon`, if present.
    public func withLabelColon(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.WhileStmtSyntax

    public var whileKeyword: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `whileKeyword` replaced.
    /// - param newChild: The new `whileKeyword` to replace the node's
    ///                   current `whileKeyword`, if present.
    public func withWhileKeyword(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.WhileStmtSyntax

    public var conditions: SwiftSyntax.ConditionElementListSyntax { get }

    /// Adds the provided `ConditionElement` to the node's `conditions`
    /// collection.
    /// - param element: The new `ConditionElement` to add to the node's
    ///                  `conditions` collection.
    /// - returns: A copy of the receiver with the provided `ConditionElement`
    ///            appended to its `conditions` collection.
    public func addConditionElement(_ element: SwiftSyntax.ConditionElementSyntax) -> SwiftSyntax.WhileStmtSyntax

    /// Returns a copy of the receiver with its `conditions` replaced.
    /// - param newChild: The new `conditions` to replace the node's
    ///                   current `conditions`, if present.
    public func withConditions(_ newChild: SwiftSyntax.ConditionElementListSyntax?) -> SwiftSyntax.WhileStmtSyntax

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    /// Returns a copy of the receiver with its `body` replaced.
    /// - param newChild: The new `body` to replace the node's
    ///                   current `body`, if present.
    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> SwiftSyntax.WhileStmtSyntax

    /// Determines if two `WhileStmtSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.WhileStmtSyntax, rhs: SwiftSyntax.WhileStmtSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension WhileStmtSyntax {

    /// Creates a `WhileStmtSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `WhileStmtSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `WhileStmtSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.WhileStmtSyntaxBuilder) -> Swift.Void)
}

extension WhileStmtSyntax : WithCodeBlockSyntax, LabeledSyntax {
}

public struct WhileStmtSyntaxBuilder {

    public mutating func useLabelName(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useLabelColon(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useWhileKeyword(_ node: SwiftSyntax.TokenSyntax)

    public mutating func addConditionElement(_ elt: SwiftSyntax.ConditionElementSyntax)

    public mutating func useBody(_ node: SwiftSyntax.CodeBlockSyntax)
}

public struct WildcardPatternSyntax : PatternSyntax, Hashable {

    public var wildcard: SwiftSyntax.TokenSyntax { get }

    /// Returns a copy of the receiver with its `wildcard` replaced.
    /// - param newChild: The new `wildcard` to replace the node's
    ///                   current `wildcard`, if present.
    public func withWildcard(_ newChild: SwiftSyntax.TokenSyntax?) -> SwiftSyntax.WildcardPatternSyntax

    public var typeAnnotation: SwiftSyntax.TypeAnnotationSyntax? { get }

    /// Returns a copy of the receiver with its `typeAnnotation` replaced.
    /// - param newChild: The new `typeAnnotation` to replace the node's
    ///                   current `typeAnnotation`, if present.
    public func withTypeAnnotation(_ newChild: SwiftSyntax.TypeAnnotationSyntax?) -> SwiftSyntax.WildcardPatternSyntax

    /// Determines if two `WildcardPatternSyntax` nodes are equal to each other.
    public static func == (lhs: SwiftSyntax.WildcardPatternSyntax, rhs: SwiftSyntax.WildcardPatternSyntax) -> Bool

    /// A unique hash value for this node.
    public var hashValue: Int { get }
}

extension WildcardPatternSyntax {

    /// Creates a `WildcardPatternSyntax` using the provided build function.
    /// - Parameter:
    ///   - build: A closure that wil be invoked in order to initialize
    ///            the fields of the syntax node.
    ///            This closure is passed a `WildcardPatternSyntaxBuilder` which you can use to
    ///            incrementally build the structure of the node.
    /// - Returns: A `WildcardPatternSyntax` with all the fields populated in the builder
    ///            closure.
    public init(_ build: (inout SwiftSyntax.WildcardPatternSyntaxBuilder) -> Swift.Void)
}

public struct WildcardPatternSyntaxBuilder {

    public mutating func useWildcard(_ node: SwiftSyntax.TokenSyntax)

    public mutating func useTypeAnnotation(_ node: SwiftSyntax.TypeAnnotationSyntax)
}

public protocol WithCodeBlockSyntax {

    public var body: SwiftSyntax.CodeBlockSyntax { get }

    public func withBody(_ newChild: SwiftSyntax.CodeBlockSyntax?) -> Self
}

public protocol WithStatementsSyntax {

    public var statements: SwiftSyntax.CodeBlockItemListSyntax { get }

    public func withStatements(_ newChild: SwiftSyntax.CodeBlockItemListSyntax?) -> Self
}

public protocol WithTrailingCommaSyntax {

    public var trailingComma: SwiftSyntax.TokenSyntax? { get }

    public func withTrailingComma(_ newChild: SwiftSyntax.TokenSyntax?) -> Self
}

