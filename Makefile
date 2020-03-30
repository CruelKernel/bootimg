
view: android_img.svg
	xdg-open $<

android_img.svg: android_img.dot
	dot -Tsvg $< -o $@

android_img.dot: android_img.ksy
	kaitai-struct-compiler $< -t graphviz

.PHONY: view
