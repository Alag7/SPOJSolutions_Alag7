Object subclass: Solucion [

    Solucion class >> solve [
        |n valores inicio fin entrada|
        entrada := stdin.

        n := entrada nextLine asInteger.

        n timesRepeat: [
            valores := entrada nextLine subStrings.
            inicio := (valores at: 1) asInteger.
            fin := (valores at: 2) asInteger.

            inicio to: fin do:[ :i |
                (self esPrimo: i) ifTrue:[ i displayNl ].
            ].
            '' displayNl.
        ].
    ]

    Solucion class >> esPrimo: numero [
        (numero < 2) ifTrue:[^false].

        (numero <= 3) ifTrue:[^true].

        ((numero \\ 2 = 0) or: [numero \\ 3 = 0]) ifTrue:[^false].

        5 to: (numero sqrt) asInteger by: 6 do:[ :divisor |
            ((numero \\ divisor = 0) or: [(numero \\ (divisor + 2)) = 0]) ifTrue: [^false].
        ].
        
        ^true.
    ]

]

Solucion solve.
