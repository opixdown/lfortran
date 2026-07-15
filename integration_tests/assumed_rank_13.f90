program assumed_rank_13
  integer :: a(3)

  call check(a)

contains
  subroutine check(arg)
    integer :: arg(..)

    if (any(id(shape(arg)) /= [3])) error stop
    print *, "ok"
  end subroutine

  elemental function id(x)
    integer, intent(in) :: x
    integer :: id

    id = x
  end function
end program
