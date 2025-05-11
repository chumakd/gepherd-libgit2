help:
	@make -qpRr | grep -Ee '^[a-z].*:$$' | sed -e 's~:~~g' | sort

.PHONY: src-update
src-update:
	git subtree pull -P src https://github.com/libgit2/libgit2.git main

.PHONY: update
update:
	git fetch https://github.com/allyourcodebase/libgit2.git
