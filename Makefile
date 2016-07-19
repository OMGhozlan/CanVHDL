ENC = A J M O R

all :
	@for FILE in $(ENC)                ;\
        do $(MAKE) -C $$FILE                    ;\
        if [ $$? -ne 0 ]                        ;\
          then  exit 1                                  ;\
        fi                                      ;\
        done

clean :
	cd ./A && $(MAKE) clean
	cd ./M && $(MAKE) clean
	cd ./J && $(MAKE) clean
	cd ./O && $(MAKE) clean
	cd ./R && $(MAKE) clean

