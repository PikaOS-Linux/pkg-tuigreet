all:
	true

install:
	mkdir -p $(DESTDIR)/usr/bin/
	cargo build --release
	install target/release/tuigreet $(DESTDIR)/usr/bin/tuigreet
	chmod 755 $(DESTDIR)/usr/bin/tuigreet
