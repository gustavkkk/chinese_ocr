prerequisites:
	@pip install numpy scipy matplotlib pillow
	@pip install easydict opencv-python h5py PyYAML
	@pip install cython==0.24
	@pip install keras==2.1.5

install.gpu: prerequisites
	@pip install tensorflow-gpu==1.3.0
	@chmod +x ./ctpn/lib/utils/make.sh
	@cd ./ctpn/lib/utils/ && ./make.sh

install.cpu: prerequisites
	@pip install tensorflow==1.5.0
	@chmod +x ./ctpn/lib/utils/make_cpu.sh
	@cd ./ctpn/lib/utils/ && ./make_cpu.sh