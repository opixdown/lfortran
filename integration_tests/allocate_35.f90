program simd_alloc
    implicit none
    call simd_alloc()
    print *, "test passed"
contains
    subroutine simd_alloc()
        real, allocatable :: a(:)
        allocate(a(8))
        a = 2.0
        if (.not. allocated(a)) error stop
        if (size(a) /= 8) error stop
        if (any(a /= 2.0)) error stop
    end subroutine simd_alloc

end program simd_alloc
