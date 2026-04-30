	program realnum
	! Declare Variables
	real x,y,answer

	print *, 'Enter two numbers: '
	read *, x
	read *, y
	
	answer = x+y
	write(*,100) answer
100	format('The Answer is:',1X, F10.2)

	stop
	end program realnum
