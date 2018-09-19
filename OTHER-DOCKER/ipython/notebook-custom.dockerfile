FROM localhost:5000/notebook

# Install libs
# For some reason i have to install last two twice
RUN pip3 install matplotlib && \
	pip3 install numpy && \
	pip3 install pandas && \
	pip3 install graphviz && \
	pip3 install pandas && \
	pip3 install graphviz && \
	pip3 check

