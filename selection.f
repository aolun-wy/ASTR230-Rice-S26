	program selection
	! Declare variables
	real x,y,answer
	integer choice
	
	! Ask Options
	write(*,100)
	write(*,101)
	write(*,102)
	x = 12
	y = 23

	read(*,103) choice 

	! Produce answer	
	
	if (choice == 1) then
		answer = x+y
		write(*,104) answer
	
	else
		answer = x*y
		write(*,104) answer

	endif

100	format("Please Choose an Option: ")
101	format("1 Addition")
102	format("2 Multiply")
103	format(I5)
104	format(G0)

	stop
	end program selection
