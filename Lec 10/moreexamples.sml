fun member compare (k, [])= false
	| member compare (k,x::y) = if  compare (x,k) then
				true
			    else
				member compare (k,y);


fun insert compare (item,lis)= if member compare(item,lis)=false then
							 item::lis
						else
							 lis;
    

fun remove compare (k,[])=[]
| remove compare (k,x::y)= if compare (k,x) then
		              y
		  		  else
		              x::remove compare (k,y);

fun intersect compare ([],y)=[]
| intersect compare (p::q,y) =if member compare (p,y) then
			    			p::intersect compare (q,y)
					  else
			    			intersect compare (q,y);

fun comp(x,y)=
		    if x=y then
			true
		    else
			false;		    						              