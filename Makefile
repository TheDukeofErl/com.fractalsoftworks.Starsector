INFO = echo [ .. ]
OK   = echo [ OK ]

.PHONY: flatpak
flatpak:
	@$(INFO) Building Starsector flatpak
	@flatpak-builder build-dir --force-clean --install --user com.fractalsoftworks.Starsector.yml
	@$(OK) Starsector Flatpak built successfully

run:
	@$(INFO) Running flatpak com.fractalsoftworks.Starsector
	@flatpak run com.fractalsoftworks.Starsector
