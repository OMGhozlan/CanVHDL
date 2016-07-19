projrekt:
	@echo "---Doing Projrekt---"
	export MBK_CATA_LIB=/usr/share/alliance/cells/sxlib:/usr/share/alliance/cells/dp_sxlib:/usr/share/alliance/cells/rflib:/usr/share/alliance/cells/rf2lib:/usr/share/alliance/cells/ramlib:/usr/share/alliance/cells/romlib:/usr/share/alliance/cells/pxlib:/usr/share/alliance/cells/padlib
	syf -CEV -a vndingmchn
	asimut -b vndingmchna patterns051 res051
	asimut -b vndingmchna patterns105 res105
	asimut -b vndingmchna patterns050505 res050505
	asimut -b vndingmchna patterns05051 res05051
	asimut -b vndingmchna patterns11 res11
	asimut -b vndingmchna patterns1111 res1111
	boom -V -d 50 vndingmchna vndingmchna_boom
	asimut -b -nores vndingmchna_boom res051
	asimut -b -nores vndingmchna_boom res105
	asimut -b -nores vndingmchna_boom res050505
	asimut -b -nores vndingmchna_boom res05051
	asimut -b -nores vndingmchna_boom res11
	asimut -b -nores vndingmchna_boom res1111  
	boog -l vparamfile vndingmchna_boom vndingmchna_boog 
	asimut -zd -nores vndingmchna_boog res051
	asimut -zd -nores vndingmchna_boog res105
	asimut -zd -nores vndingmchna_boog res050505
	asimut -zd -nores vndingmchna_boog res05051
	asimut -zd -nores vndingmchna_boog res11
	asimut -zd -nores vndingmchna_boog res1111  
	loon vndingmchna_boog vndingmchna_loon vparamfile 
	asimut -zd -nores vndingmchna_loon res051
	asimut -zd -nores vndingmchna_loon res105
	asimut -zd -nores vndingmchna_loon res050505
	asimut -zd -nores vndingmchna_loon res05051
	asimut -zd -nores vndingmchna_loon res11
	asimut -zd -nores vndingmchna_loon res1111 
	flatbeh vndingmchna_loon vndingmchna_fb 
	proof -d vndingmchna vndingmchna_fb
	scapin -VRB vndingmchna_loon scan vndingmchna_scan
	asimut -zd vndingmchna_scan patScan resScan
	alliance-ocp -v -ring -ioc vndingmchn_scan vndingmchna_scan vndingmchn_ocr
	nero -V -p vndingmchn_ocr vndingmchna_scan vndingmchna_scan
	export MBK_OUT_LO=al
	cougar -v vndingmchna_scan vndingmchna_ext
	export MBK_OUT_LO=vst
	cougar -v vndingmchna_scan vndingmchna_ext
	lvx vst vst vndingmchna_scan vndingmchna_ext
	@#lvx vst al vndingmchna_scan vndingmchna_ext
	druc vndingmchna_scan
	ring vndingmchnax vndingmchnax
	s2r -v -r vndingmchnax
	@find . -type f | wc -l
	dreal -l vndingmchnax

clean:
	@echo "---Oh!, it's messy in here, let me clean that up---"
	@rm -f *res*
	@rm -f *boom*
	@rm -f *loon*
	@rm -f *boog*
	@rm -f *.enc
	@rm -f *.ap
	@rm -f *.vbe
	@rm -f *vndingmchna_fb*
	@rm -f *vndingmchna_scan*
	@rm -f *vndingmchn_ocr*
	@rm -f *vndingmchna_ext*
	@rm -f *.cif
	@echo "---All nice and clean!--"
	@find . -type f | wc -l

