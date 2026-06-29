program format_106
    implicit none

    character(len=40) :: line

    write(line, 100) 2, 3
    if (line /= "0sample hollerith format message!  2  3") error stop
    print *, trim(line)

100 format(33h0sample hollerith format message!,2i3)
end program
