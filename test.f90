module types_m
  implicit none

  type int_t
    integer :: i
  end type

  type(int_t), parameter ::  &
    T_ONE = int_t(1),  &
    T_TWO = int_t(2),  &
    T_THREE = int_t(3)

  type(int_t), parameter ::  &
    T_ALL(3) = (/ T_ONE, T_TWO, T_THREE /)

end module