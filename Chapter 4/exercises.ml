let rec even_elements l =
  match l with
    [] -> []
  | [_] -> []
  | _::b::t -> b :: even_elements t

let rec even_elements l =
  match l with
    _::b::t -> b :: even_elements t
  | l -> []

let rec count_true l =
  match l with
    [] -> 0
  | true::t -> 1 + count_true t
  | false::t -> count_true t

let rec count_true_inner n l =
  match l with
    [] -> n
  | true::t -> count_true_inner (n + 1) t
  | false::t -> count_true_inner n t

let count_true l =
  count_true_inner 0 l

let rec rev l =
  match l with
    [] -> []
  | h::t -> rev t @ [h]

let mk_palindrome l =
  l @ rev l

let is_palindrome l = 
  l = rev l

let rec drop_last l =
  match l with
    [] -> []
  | [_] -> []
  | h::t -> h :: drop_last t

let rec drop_last_inner a l =
  match l with
    [] -> rev a
  | [_] -> rev a
  | h::t -> drop_last_inner (h :: a) t

let drop_last l =
  drop_last_inner [] l

let rec member e l =
  match l with
    [] -> false
  | h::t -> h = e || member e t

let rec make_set l =
  match l with
    [] -> []
  | h::t -> if member h t then make_set t else h :: make_set t

let rec rev_inner a l =
  match l with
    [] -> a
  | h::t -> rev_inner (h :: a) t

let rev l =
  rev_inner [] l
