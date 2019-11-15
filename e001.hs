sum [ x | x <- [1..999], snd(quotRem(x) 5) == 0, snd(quotRem(x) 3) == 0 ]
