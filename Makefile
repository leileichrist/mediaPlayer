all: recorder player

recorder: recorder.c
	gcc recorder.c -o recorder `pkg-config --cflags --libs gstreamer-interfaces-0.10 gtk+-2.0 gstreamer-pbutils-0.10 gstreamer-0.10`

player: player.c
	gcc player.c -o player `pkg-config --cflags --libs gstreamer-interfaces-0.10 gtk+-2.0 gstreamer-pbutils-0.10 gstreamer-0.10` 

play:
	./player --sync

record:
	./recorder --sync

clean:
	rm -rf *o recorder player

