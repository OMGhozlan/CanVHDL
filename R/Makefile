projrekt:
	@echo "---Doing Projrekt---"
	export MBK_CATA_LIB=/usr/share/alliance/cells/sxlib:/usr/share/alliance/cells/dp_sxlib:/usr/share/alliance/cells/rflib:/usr/share/alliance/cells/rf2lib:/usr/share/alliance/cells/ramlib:/usr/share/alliance/cells/romlib:/usr/share/alliance/cells/pxlib:/usr/share/alliance/cells/padlib
	syf -CEV -r vndingmchn
	asimut -b vndingmchnr patterns051 res051
	asimut -b vndingmchnr patterns105 res105
	asimut -b vndingmchnr patterns050505 res050505
	asimut -b vndingmchnr patterns05051 res05051
	asimut -b vndingmchnr patterns11 res11
	asimut -b vndingmchnr patterns1111 res1111
	boom -V -d 50 vndingmchnr vndingmchnr_boom
	asimut -b -nores vndingmchnr_boom res051
	asimut -b -nores vndingmchnr_boom res105
	asimut -b -nores vndingmchnr_boom res050505
	asimut -b -nores vndingmchnr_boom res05051
	asimut -b -nores vndingmchnr_boom res11
	asimut -b -nores vndingmchnr_boom res1111  
	boog -l vparamfile vndingmchnr_boom vndingmchnr_boog 
	asimut -zd -nores vndingmchnr_boog res051
	asimut -zd -nores vndingmchnr_boog res105
	asimut -zd -nores vndingmchnr_boog res050505
	asimut -zd -nores vndingmchnr_boog res05051
	asimut -zd -nores vndingmchnr_boog res11
	asimut -zd -nores vndingmchnr_boog res1111  
	loon vndingmchnr_boog vndingmchnr_loon vparamfile 
	asimut -zd -nores vndingmchnr_loon res051
	asimut -zd -nores vndingmchnr_loon res105
	asimut -zd -nores vndingmchnr_loon res050505
	asimut -zd -nores vndingmchnr_loon res05051
	asimut -zd -nores vndingmchnr_loon res11
	asimut -zd -nores vndingmchnr_loon res1111 
	flatbeh vndingmchnr_loon vndingmchnr_fb 
	proof -d vndingmchnr vndingmchnr_fb
	scapin -VRB vndingmchnr_loon scan vndingmchnr_scan
	asimut -zd vndingmchnr_scan patScan resScan 
	alliance-ocp -v -ring -ioc vndingmchn_scan vndingmchnr_scan vndingmchn_ocr
	nero -V -p vndingmchn_ocr vndingmchnr_scan vndingmchnr_scan
	export MBK_OUT_LO=al
	cougar -v vndingmchnr_scan vndingmchnr_ext
	export MBK_OUT_LO=vst
	cougar -v vndingmchnr_scan vndingmchnr_ext
	lvx vst vst vndingmchnr_scan vndingmchnr_ext
	#lvx vst al vndingmchnr_scan vndingmchnr_ext
	druc vndingmchnr_scan
	ring vndingmchnrx vndingmchnrx
	s2r -v -r vndingmchnrx
	find . -type f | wc -l
	dreal -l vndingmchnrx

clean:
	@echo "---Oh!, it's messy in here, let me clean that up---"
	@rm -f *res*
	@rm -f *boom*
	@rm -f *loon*
	@rm -f *boog*
	@rm -f *.enc
	@rm -f *.ap
	@rm -f *.vbe
	@rm -f *vndingmchnr_fb*
	@rm -f *vndingmchnr_scan*
	@rm -f *vndingmchn_ocr*
	@rm -f *vndingmchnr_ext*
	@rm -f *.cif
	@echo "---All nice and clean!--"
	@find . -type f | wc -l

