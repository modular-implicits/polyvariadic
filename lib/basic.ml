open Imp.Control;;

module type SumResult = sig 
  type t 
  val sumOf : int -> t
end

let sumOf {S : SumResult} = S.sumOf

implicit module SumResInt : SumResult with type t = int = struct 
  type t = int
  let sumOf x = x
end

implicit module SumResFunc {S : SumResult} : SumResult with type t = int -> S.t = struct 
  type t = int -> S.t
  let sumOf x = fun y -> S.sumOf (x + y)
end

let x : int = sumOf 1;;
let y : int = sumOf 1 2 3;;

