
-- description generated by Pat driver

--			date     : Sat Apr 30 00:06:37 2016
--			revision : v109

--			sequence : patterns_e_vnding_kali

-- input / output list :
in       clk B;;;
in       res B;;;
in       onein B;;;
in       halfin B;;;
out      can B;;;
out      change B;;;
in       vdd B;;;
in       vss B;;;

begin

-- Pattern description :

--                               c  r  o  h   c   c  v  v   
--                               l  e  n  a   a   h  d  s   
--                               k  s  e  l   n   a  d  s   
--                                     i  f       n         
--                                     n  i       g         
--                                        n       e         


-- Beware : unprocessed patterns

<          0 ps>vndingmchn_0_0 : 0  1  0  0  ?*  ?*  1  0  ;
<      50000 ps>               : 1  1  0  0  ?*  ?*  1  0  ;
<     100000 ps>               : 0  0  0  0  ?*  ?*  1  0  ;
<     150000 ps>               : 1  0  0  0  ?*  ?*  1  0  ;
<     200000 ps>               : 0  0  1  0  ?*  ?*  1  0  ;
<     250000 ps>               : 1  0  1  0  ?*  ?*  1  0  ;
<     300000 ps>               : 0  0  0  0  ?*  ?*  1  0  ;
<     350000 ps>               : 1  0  0  0  ?*  ?*  1  0  ;
<     400000 ps>               : 0  0  1  0  ?*  ?*  1  0  ;
<     450000 ps>               : 1  0  1  0  ?*  ?*  1  0  ;
<     500000 ps>               : 0  0  0  0  ?*  ?*  1  0  ;

end;
