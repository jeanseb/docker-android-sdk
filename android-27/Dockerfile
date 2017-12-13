# Get base image
FROM openjdk:8

# Set environment variables
ENV ANDROID_HOME /usr/local/android-sdk
ENV PATH $ANDROID_HOME/tools/bin:$PATH

# Download SDK tools
RUN wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip

# Install Android SDK
RUN \
  unzip sdk-tools-linux-3859397.zip -d $ANDROID_HOME && \
  rm -rf sdk-tools-linux-3859397.zip && \
  echo y | sdkmanager "build-tools;27.0.2" "platforms;android-27"
