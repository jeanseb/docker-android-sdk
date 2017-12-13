# Get base image
FROM openjdk:8

# Set environment variables
ENV ANDROID_HOME /usr/local/android-sdk
ENV PATH $ANDROID_HOME/tools/bin:$PATH

# Install Android SDK
RUN \
  wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip && \
  unzip sdk-tools-linux-3859397.zip -d $ANDROID_HOME && \
  rm -rf sdk-tools-linux-3859397.zip && \
  mkdir ~/.android && touch ~/.android/repositories.cfg && \
  yes | sdkmanager --licenses && \
  sdkmanager "build-tools;27.0.2" "platforms;android-27"
