DOXY_EXEC_PATH = D:/University/ca-A00269349/Doxygen Config
DOXYFILE = D:/University/ca-A00269349/Doxygen Config/-
DOXYDOCS_PM = D:/University/ca-A00269349/Documentation/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = D:/University/ca-A00269349/Documentation/perlmod/DoxyStructure.pm
DOXYRULES = D:/University/ca-A00269349/Documentation/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"
