projrekt:
	@echo "---Doing Projrekt---"
	export MBK_CATA_LIB=/usr/share/alliance/cells/sxlib:/usr/share/alliance/cells/dp_sxlib:/usr/share/alliance/cells/rflib:/usr/share/alliance/cells/rf2lib:/usr/share/alliance/cells/ramlib:/usr/share/alliance/cells/romlib:/usr/share/alliance/cells/pxlib:/usr/share/alliance/cells/padlib
	syf -CEV -o vndingmchn
	asimut -b vndingmchno patterns051 res051
	asimut -b vndingmchno patterns105 res105
	asimut -b vndingmchno patterns050505 res050505
	asimut -b vndingmchno patterns05051 res05051
	asimut -b vndingmchno patterns11 res11
	asimut -b vndingmchno patterns1111 res1111
	boom -V -d 50 vndingmchno vndingmchno_boom
	asimut -b -nores vndingmchno_boom res051
	asimut -b -nores vndingmchno_boom res105
	asimut -b -nores vndingmchno_boom res050505
	asimut -b -nores vndingmchno_boom res05051
	asimut -b -nores vndingmchno_boom res11
	asimut -b -nores vndingmchno_boom res1111  
	boog -l vparamfile vndingmchno_boom vndingmchno_boog 
	asimut -zd -nores vndingmchno_boog res051
	asimut -zd -nores vndingmchno_boog res105
	asimut -zd -nores vndingmchno_boog res050505
	asimut -zd -nores vndingmchno_boog res05051
	asimut -zd -nores vndingmchno_boog res11
	asimut -zd -nores vndingmchno_boog res1111  
	loon vndingmchno_boog vndingmchno_loon vparamfile 
	asimut -zd -nores vndingmchno_loon res051
	asimut -zd -nores vndingmchno_loon res105
	asimut -zd -nores vndingmchno_loon res050505
	asimut -zd -nores vndingmchno_loon res05051
	asimut -zd -nores vndingmchno_loon res11
	asimut -zd -nores vndingmchno_loon res1111 
	flatbeh vndingmchno_loon vndingmchno_fb 
	proof -d vndingmchno vndingmchno_fb
	scapin -VRB vndingmchno_loon scan vndingmchno_scan
	asimut -zd vndingmchno_scan patScan resScan 
	alliance-ocp -v -ring -ioc vndingmchn_scan vndingmchno_scan vndingmchn_ocr
	nero -V -p vndingmchn_ocr vndingmchno_scan vndingmchno_scan
	export MBK_OUT_LO=al
	cougar -v vndingmchno_scan vndingmchno_ext
	export MBK_OUT_LO=vst
	cougar -v vndingmchno_scan vndingmchno_ext
	lvx vst vst vndingmchno_scan vndingmchno_ext
	#lvx vst al vndingmchno_scan vndingmchno_ext
	druc vndingmchno_scan
	ring vndingmchnox vndingmchnox
	s2r -v -r vndingmchnox
	@find . -type f | wc -l
	dreal -l vndingmchnox

clean:
	@echo "---Oh!, it's messy in here, let me clean that up---"
	@rm -f *res*
	@rm -f *boom*
	@rm -f *loon*
	@rm -f *boog*
	@rm -f *.enc
	@rm -f *.ap
	@rm -f *.vbe
	@rm -f *vndingmchno_fb*
	@rm -f *vndingmchno_scan*
	@rm -f *vndingmchn_ocr*
	@rm -f *vndingmchno_ext*
	@rm -f *.cif
	@echo "---All nice and clean!--"
	@find . -type f | wc -l

