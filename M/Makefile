projrekt:
	@echo "---Doing Projrekt---"
	export MBK_CATA_LIB=/usr/share/alliance/cells/sxlib:/usr/share/alliance/cells/dp_sxlib:/usr/share/alliance/cells/rflib:/usr/share/alliance/cells/rf2lib:/usr/share/alliance/cells/ramlib:/usr/share/alliance/cells/romlib:/usr/share/alliance/cells/pxlib:/usr/share/alliance/cells/padlib
	syf -CEV -m vndingmchn
	asimut -b vndingmchnm patterns051 res051
	asimut -b vndingmchnm patterns105 res105
	asimut -b vndingmchnm patterns050505 res050505
	asimut -b vndingmchnm patterns05051 res05051
	asimut -b vndingmchnm patterns11 res11
	asimut -b vndingmchnm patterns1111 res1111
	boom -V -d 50 vndingmchnm vndingmchnm_boom
	asimut -b -nores vndingmchnm_boom res051
	asimut -b -nores vndingmchnm_boom res105
	asimut -b -nores vndingmchnm_boom res050505
	asimut -b -nores vndingmchnm_boom res05051
	asimut -b -nores vndingmchnm_boom res11
	asimut -b -nores vndingmchnm_boom res1111  
	boog -l vparamfile vndingmchnm_boom vndingmchnm_boog 
	asimut -zd -nores vndingmchnm_boog res051
	asimut -zd -nores vndingmchnm_boog res105
	asimut -zd -nores vndingmchnm_boog res050505
	asimut -zd -nores vndingmchnm_boog res05051
	asimut -zd -nores vndingmchnm_boog res11
	asimut -zd -nores vndingmchnm_boog res1111  
	loon vndingmchnm_boog vndingmchnm_loon vparamfile 
	asimut -zd -nores vndingmchnm_loon res051
	asimut -zd -nores vndingmchnm_loon res105
	asimut -zd -nores vndingmchnm_loon res050505
	asimut -zd -nores vndingmchnm_loon res05051
	asimut -zd -nores vndingmchnm_loon res11
	asimut -zd -nores vndingmchnm_loon res1111 
	flatbeh vndingmchnm_loon vndingmchnm_fb 
	proof -d vndingmchnm vndingmchnm_fb
	scapin -VRB vndingmchnm_loon scan vndingmchnm_scan
	asimut -zd vndingmchnm_scan patScan resScan
	alliance-ocp -v -ring -ioc vndingmchn_scan vndingmchnm_scan vndingmchn_ocr
	nero -V -p vndingmchn_ocr vndingmchnm_scan vndingmchnm_scan
	export MBK_OUT_LO=al
	cougar -v vndingmchnm_scan vndingmchnm_ext
	export MBK_OUT_LO=vst
	cougar -v vndingmchnm_scan vndingmchnm_ext
	lvx vst vst vndingmchnm_scan vndingmchnm_ext
	#lvx vst al vndingmchnm_scan vndingmchnm_ext
	druc vndingmchnm_scan
	ring vndingmchnmx vndingmchnmx
	s2r -v -r vndingmchnmx
	@find . -type f | wc -l
	dreal -l vndingmchnmx

clean:
	@echo "---Oh!, it's messy in here, let me clean that up---"
	@rm -f *res*
	@rm -f *boom*
	@rm -f *loon*
	@rm -f *boog*
	@rm -f *.enc
	@rm -f *.ap
	@rm -f *.vbe
	@rm -f *vndingmchnm_fb*
	@rm -f *vndingmchnm_scan*
	@rm -f *vndingmchn_ocr*
	@rm -f *vndingmchnm_ext*
	@rm -f *.cif
	@echo "---All nice and clean!--"
	@find . -type f | wc -l

