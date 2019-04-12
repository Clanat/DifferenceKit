/// Represents the value that identified for differentiate.
public protocol Differentiable: ContentEquatable {
    /// A type representing the identifier.
    typealias DifferenceIdentifier = AnyHashable

    /// An identifier value for difference calculation.
    var differenceIdentifier: DifferenceIdentifier { get }
}

public extension Differentiable where Self: Hashable {
    /// The `self` value as an identifier for difference calculation.
    @inlinable
    var differenceIdentifier: DifferenceIdentifier {
        return self
    }
}
