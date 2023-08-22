open Polyvar.Basic;;
open Imp.Control;;

let () = 
  let x : int = sumOf 1 in 
  let y : int = sumOf 1 2 3 in 
  begin 
  assert (x = 1);
  assert (y = 6);
  let z : int option = liftA2 sumOf (Some 1) (Some 2) in
  assert (z = Some 3);
end 



