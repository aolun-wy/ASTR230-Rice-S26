	PROGRAM APR09

c	as a convention, things start with i j k l m n are integers;
c       every word else is a real number.	
c
c	PART #1 Loop	
c	DO 24 i=2,11,4	! Where the loop begins
c		WRITE(6,*) i
24	CONTINUE
c	STOP

c	PART #2 Nested Loop and Selection Structure
	DO 25 i=2,9
		DO 26 j=5,8
			IF((i.gt.j)) THEN
				WRITE(6,*) i,j
			ELSE
				WRITE(6,*) 0
			ENDIF		
26		CONTINUE
25	CONTINUE
	STOP

	END PROGRAM APR09
