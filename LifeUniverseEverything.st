Object subclass: Solucion [

    Solucion class >> solve [
        |n entrada|

        entrada := stdin.

        [n := entrada nextLine. n ~= '42'] whileTrue:[n displayNl].

    ]

]

Solucion solve.