program main
    implicit none

    ! Main routine
    INTEGER*4 getcwd, status
    character*64 dirname
    status = getcwd( dirname )
    print*, trim(dirname)  , "/exec" 
        
end program main

!TODO: check if this subroutine is functional
! For taking off spaces from string
subroutine StripSpaces(string)
    character(len=*) :: string
    integer :: stringLen
    integer :: last, actual

    stringLen = len (string)
    last = 1
    actual = 1

    do while (actual < stringLen)
        if (string(last:last) == ' ') then
            actual = actual + 1
            string(last:last) = string(actual:actual)
            string(actual:actual) = ' '
        else
            last = last + 1
        if (actual < last) &
            actual = last
        endif
    end do

end subroutine