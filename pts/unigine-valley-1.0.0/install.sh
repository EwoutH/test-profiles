#!/bin/sh

chmod +x Unigine_Valley-1.0.run
./Unigine_Valley-1.0.run

echo "#!/bin/sh
cd Unigine_Valley-1.0-beta14-Pro/
export LD_LIBRARY_PATH=bin/:\$LD_LIBRARY_PATH

if [ \$OS_ARCH = \"x86_64\" ]
then
	export LD_LIBRARY_PATH=./bin/x64/:\$LD_LIBRARY_PATH
	./bin/valley_x64 -video_app opengl -data_path ../ -sound_app null -engine_config ../data/valley_1.0.cfg -system_script valley/unigine.cpp -video_mode -1 -video_fullscreen 1 -extern_define PHORONIX,RELEASE \$@ > \$LOG_FILE 2>&1
else
	export LD_LIBRARY_PATH=./bin/x86/:\$LD_LIBRARY_PATH
	./bin/valley_x86 -video_app opengl -data_path ../ -sound_app null -engine_config ../data/valley_1.0.cfg -system_script valley/unigine.cpp -video_mode -1 -video_fullscreen 1 -extern_define PHORONIX,RELEASE \$@ > \$LOG_FILE 2>&1
fi" > unigine-valley
chmod +x unigine-valley

