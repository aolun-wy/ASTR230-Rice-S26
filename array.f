	program array
	
	! Declare
	real x(5) ! 1D Array size 5
	real y(4,4) ! 2D Array
	

	! Main
	x = 0.0 ! Initial Setting
	y = 0.0	

	x(1) = 2.0
	x(2) = 300
	x(3) = 50
	
	! This is a 4*4 identity matrix
	do i=1,4
		do j=1,4
			if(i==j) then
				y(i,j) = 1
			end if
		end do
	end do
	
	print *,x
	! The format here is ugly
C	print *,y
	do i=1,4
	write(*, 100) y(i, :)
C		write(*,100) y(i,:)
	end do

100	format(4F5.2)

	
	
	stop
	end program array
