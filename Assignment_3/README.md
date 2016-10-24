#Assignment 3

##Questin 1 (add_multiply_diff_sin):
--------------------------------------
• clear command, workspace and close figures

• Take parameters for 1st sin wave
• Construct sin 1 and store in y1
• Take parameters for 2nd sin wave
• Constr uct sin 1 and store in y2
• add y1 and y2 and store in y for addition
• plot addition
• multiply y1 and y2 and store in y for multiplication
• plot multiplication

• clear workspace

• define two sequences with index for discrete waves
• repeat same process as previous and use stem

##Questin 2 (time_rev):
--------------------------------------
• clear command, workspace and close figures

• set variable t for time axis
• take the function to plot from user and store in y
• plot actual y against t
• plot y against -t for time reversed signal

• clear workspace

• take a sequence from user and store in x
• take origin of sequence from user
• time range of sequence n is calculated as
   no of points in (-) side = (origin - 1)
   1 point for 0
   no of points in (+) side = (length(x)-origin)
   so, n = -(origin-1):(length(x)-origin)
• stem original signal, x against n
• stem time reversed signal, x against -n

##Questin 3 (scaling):
--------------------------------------
• clear command, workspace and close figures

• set variable t for time axis
• take the function to plot from user and store in y
• plot actual y against t
• take amplification/scaling factor a
• plot (a*y) againg t for scaled signal

• clear workspace

• take a sequence from user and store in x
• take origin of sequence from user
• time range of sequence n is calculated as
   no of points in (-) side = (origin - 1)
   1 point for 0
   no of points in (+) side = (length(x)-origin)
   so, n = -(origin-1):(length(x)-origin)
• stem original signal, x against n
• take amplification/scaling factor a
• stem (a*x) againg n for scaled signal

##Questin 4-5 (expand_compress):
--------------------------------------
• clear command, workspace and close figures

• set variable t for time axis
• take the frequency of sin and store in f
• generate y = sin(2*pi*f*t)
• plot actual wave, y against t
• generate y = sin(2*pi*f/2*t) for expanded wave
   by decreasing the frequency
• plot expanded wave, y against t
• generate y = sin(2*pi*f*2*t) for compressed wave
   by increasing the frequency
• plot compressed wave, y against t

• clear workspace

• set variable n for x axis
• generate x = sin(2*pi*f*n)
• stem actual wave, x against n
• generate x = sin(2*pi*f/2*n) for expanded wave
   by decreasing the frequency
• stem expanded wave, x against n
• generate x = sin(2*pi*f*2*n) for compressed wave
   by increasing the frequency
• stem compressed wave, x against n

##Questin 6 (odd_even):
--------------------------------------
• clear command, workspace and close figures

• set variable time for time axis values
• set symbolic t 
• take the function of t and store in f
• generate f(time) with substituting time with t in f
   and store in y1
• generate f(-time) with substituting -time with t in f
   and store in y2
• plot actual waves, y1 and y2 against t
• generate fodd = (y1-y2)/2
• plot fodd against t
• generate feven = (y1+y2)/2
• plot feven against t

• clear workspace

• take the sequence and store in seq
• take index in i
• generate y1 with proper padding (balancing +ve and -ve sides) as ->
   no of point in left = l_no = i-1
   no of point in right = r_no = length(seq)-i
   maximum no in any side = max(l_no,r_no)
   so, y1 is filled with missing points in noth side with 0s as
   y1 = [zeros(1,max_no-l_no) seq zeros(1,max_no-r_no)]
• set n = -max_no:max_no
• generate y by flipping y1 as ->
   y2 = fliplr(y1)
• stem actual waves, y1 and y2 against n
• generate fodd = (y1-y2)/2
• stem fodd against n
• generate feven = (y1+y2)/2
• stem feven against n

##Questin 7 (reverse_caller,timereverse):
------------------------------------------
• clear command, workspace and close figures

• take a sequence from user and store in seq
• take origin of sequence from user
• time range of sequence n is calculated as
   no of points in (-) side = (origin - 1)
   1 point for 0
   no of points in (+) side = (length(x)-origin)
   so, n = -(origin-1):(length(x)-origin)
• stem original signal, x against n
• call timereverse function to generate n_rev and seq_rev
• stem time reversed signal, seq_rev against n_rev

###timereverse.m
• n_rev = fliplr(-n); %reverse -n to ascending order
• seq_rev = fliplr(seq);  %reverse seq