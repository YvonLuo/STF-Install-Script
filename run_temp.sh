echo "Installing ZeroMQ, Please wait..."
cd /opt
wget http://download.zeromq.org/zeromq-4.1.2.tar.gz \
&& tar -zxvf zeromq-4.1.2.tar.gz \
&& cd zeromq-4.1.2 \
&& ./configure --without-libsodium \
&& make \
&& make install \
|| OwnError "Unable to install ZeroMQ, exit status = " $?

echo "Setup Protocol Buffers, Please wait..."
cd /opt \
&& git clone https://github.com/google/protobuf.git \
&& cd protobuf \
&& ./autogen.sh \
&& ./configure \
&& make \
&& make install \
|| OwnError "Unable to Setup Protocol Buffers, exit status = " $?

echo "Setup Yasm, Please wait..."


echo "Installing STF, Please wait..."
npm install -g stf --unsafe-perm --allow-root \
|| OwnError "Unable to Installing STF, exit status = " $?
