
keepalived-check: keepalived-check.rb phraser.rb
	echo "#!/usr/bin/env ruby" > $@.tmp
	cat phraser.rb >> $@.tmp
	grep -v "require 'phraser'" < keepalived-check.rb >> $@.tmp
	chmod 755 $@.tmp
	mv $@.tmp $@

.PHONY: clean
clean:
	rm -rf keepalived-check
