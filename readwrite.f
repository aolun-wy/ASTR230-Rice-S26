	program readwrite
	
	! in case you hate implicit declaration
	implicit none
	
	real x,y,z
	real m,n,l
	integer dx,dy,dz	

	m=23
	n=45
	l=89
	! Data Table (optional)
	! Construct table z = x*y for x from 1 to 4, y from 1 to 6
	open(13,file="table.dat")
	write(13,*) '	x	y	z'
	do dx=1,4
		do dy=1,6
		dz = dx*dy
		print *,dx,dy,dz
		write(13,'(3I7)') dx,dy,dz
		
		end do
	end do

	! Main
	! open(id num, filename)
	open(10,file='data.dat')
	open(12,file='writtendata.dat')
	
	read(10,*) x,y,z
	write(12,*) m,n,l
	write(*,101)	

	write(*,100) x,y,z
100	format(3F5.2)
101	format("Your Data has been written!")
	
	stop
	end program readwrite
