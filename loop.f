	program loop
	
	! implicit definition of i

	! a loop
	write(*,101)
	do i=1,10
		write(*,100) i	
	end do
	
	! Step 2 loop
	write(*,102)
	do j=1,10,2
		write(*,100) j
	end do

	! Backwards
	write(*,103)
        do k=-1,-10,-2
                write(*,100) k
        end do


100	format(I5)
101	format("Here are all Numbers!")
102	format("Here are all Odd Numbers!")	
103	format("Here are all Odd Numbers Backwards!")
	stop
	end program loop
