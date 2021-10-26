module OfficialCrashCourse.VTypes

import Data.Vect

-- Shows use of view types
%hide Data.Vect.filter
%hide Data.Maybe.filter

filter : (a -> Bool) -> Vect n a -> (p ** Vect p a)
filter p (x :: xs) with (filter p xs)
    filter p (x :: xs) | (_ ** xs') = if (p x) then (_ ** x :: xs') else (_ ** xs')