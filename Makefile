# written by junying
# 2020-01-28
# ctpn was built in python2, it doesn't work in python3
#
# numpy==1.16.2
# opencv-python==4.1.2.30
# opencv-python=4.1.2.30
# scipy==1.2.2
# matplotlib==2.2.4
# pillow==6.2.1
# easydict==1.9
# h5py==2.10.0
# PyYAML==5.1.1
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
