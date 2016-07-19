projrekt:
	@echo "---Doing Projrekt---"
	export MBK_CATA_LIB=/usr/share/alliance/cells/sxlib:/usr/share/alliance/cells/dp_sxlib:/usr/share/alliance/cells/rflib:/usr/share/alliance/cells/rf2lib:/usr/share/alliance/cells/ramlib:/usr/share/alliance/cells/romlib:/usr/share/alliance/cells/pxlib:/usr/share/alliance/cells/padlib
	syf -CEV -j vndingmchn
	asimut -b vndingmchnj patterns051 res051
	asimut -b vndingmchnj patterns105 res105
	asimut -b vndingmchnj patterns050505 res050505
	asimut -b vndingmchnj patterns05051 res05051
	asimut -b vndingmchnj patterns11 res11
	asimut -b vndingmchnj patterns1111 res1111
	boom -V -d 50 vndingmchnj vndingmchnj_boom
	asimut -b -nores vndingmchnj_boom res051
	asimut -b -nores vndingmchnj_boom res105
	asimut -b -nores vndingmchnj_boom res050505
	asimut -b -nores vndingmchnj_boom res05051
	asimut -b -nores vndingmchnj_boom res11
	asimut -b -nores vndingmchnj_boom res1111  
	boog -l vparamfile vndingmchnj_boom vndingmchnj_boog 
	asimut -zd -nores vndingmchnj_boog res051
	asimut -zd -nores vndingmchnj_boog res105
	asimut -zd -nores vndingmchnj_boog res050505
	asimut -zd -nores vndingmchnj_boog res05051
	asimut -zd -nores vndingmchnj_boog res11
	asimut -zd -nores vndingmchnj_boog res1111  
	loon vndingmchnj_boog vndingmchnj_loon vparamfile 
	asimut -zd -nores vndingmchnj_loon res051
	asimut -zd -nores vndingmchnj_loon res105
	asimut -zd -nores vndingmchnj_loon res050505
	asimut -zd -nores vndingmchnj_loon res05051
	asimut -zd -nores vndingmchnj_loon res11
	asimut -zd -nores vndingmchnj_loon res1111 
	flatbeh vndingmchnj_loon vndingmchnj_fb 
	proof -d vndingmchnj vndingmchnj_fb
	scapin -VRB vndingmchnj_loon scan vndingmchnj_scan
	asimut -zd vndingmchnj_scan patScan resScan
	alliance-ocp -v -ring -ioc vndingmchn_scan vndingmchnj_scan vndingmchn_ocr
	nero -V -p vndingmchn_ocr vndingmchnj_scan vndingmchnj_scan
	export MBK_OUT_LO=al
	cougar -v vndingmchnj_scan vndingmchnj_ext
	export MBK_OUT_LO=vst
	cougar -v vndingmchnj_scan vndingmchnj_ext
	lvx vst vst vndingmchnj_scan vndingmchnj_ext
	#lvx vst al vndingmchnj_scan vndingmchnj_ext
	druc vndingmchnj_scan
	ring vndingmchnjx vndingmchnjx
	s2r -v -r vndingmchnjx
	@find . -type f | wc -l
	dreal -l vndingmchnjx

clean:
	@echo "---Oh!, it's messy in here, let me clean that up---"
	@rm -f *res*
	@rm -f *boom*
	@rm -f *loon*
	@rm -f *boog*
	@rm -f *.enc
	@rm -f *.ap
	@rm -f *.vbe
	@rm -f *vndingmchnj_fb*
	@rm -f *vndingmchnj_scan*
	@rm -f *vndingmchn_ocr*
	@rm -f *vndingmchnj_ext*
	@rm -f *.cif
	@echo "---All nice and clean!--"
	@find . -type f | wc -l

