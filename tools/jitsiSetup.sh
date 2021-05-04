cd /react-native-webrtc/tools
mkdir output

python build-webrtc.py --setup --android output
python build-webrtc.py --sync --android output

cd output/build_webrtc/webrtc/android/src/ 
git fetch titusOrigin
git checkout titusOrigin/feature/e2ee_add_encryptor_decryptor
cd ../../../../.. 

python build-webrtc.py --sync --android output

