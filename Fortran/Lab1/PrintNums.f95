! quicksort.f -*-f90-*-
! Author: t-nissie
! License: GPLv3
! Gist: https://gist.github.com/t-nissie/479f0f16966925fa29ea
!!

Program PrintNums
    Integer :: Number, Value, Counter, Temp, j, i
    Integer, dimension(8) :: numbers

    Open(5, File='./uploads/input.txt', Access='SEQUENTIAL')
    Read *, Number
    Do Counter = 1, Number
       Read *, Value
       numbers(Counter) = Value
    End Do
    Close(5)

     do i = 1, Number -1
        do j= i + 1, Number
            if(numbers(i) .GT. numbers(j)) THEN
                Temp = numbers(i)
                numbers(i) = numbers(j)
                numbers(j) = Temp
            end if
        end do
    end do
    print *, 'Sorted Array'

    Do Counter = 1, Number
        print *, numbers(counter)
    end do
    End Program PrintNums