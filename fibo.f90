module fibonacci
contains
  recursive function fibo (n) result (f)
    integer, intent (in) :: n
    integer :: f
    if (n < 2) then
       f = n
    else
       f = fibo (n-1) + fibo (n-2)
    end if
  end function fibo
end module fibonacci

program fibTest
  use fibonacci

  integer :: i
  character (len = 32) :: arg

  call getarg (1, arg)
  read (arg, '(i10)') i

  print *, fibo (i)
end program fibTest
