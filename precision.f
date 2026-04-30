	program precision
	
	! Declare
	Double Precision dx,dy,dz

	! Initial Value
	
	y = 10.0
	x = 3.0
	
	dy = 10.0
	dx = 3.0

	! Main
	print *,'This way of calculation is problematic!'
	z = y/x

	print *, 'We now have double precision!'
	dz = dy/dx
	
	write(*,'(G0)') z
	write(*,'(G0)') dz	

	stop
	end program precision
