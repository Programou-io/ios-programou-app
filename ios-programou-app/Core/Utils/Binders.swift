typealias Bind = () -> Void
typealias BindWithParam<Param> = (Param) -> Void
typealias BindWithReturn<Return> = () -> Return
typealias BindWithAndReturn<Param, Return> = (Param) -> Return
