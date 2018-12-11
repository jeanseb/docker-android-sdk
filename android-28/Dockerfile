# Get base image
FROM openjdk:8

# Set environment variables
ENV ANDROID_HOME /usr/local/android-sdk
ENV PATH $ANDROID_HOME/tools/bin:$PATH

# Install Android SDK
RUN \
  wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
  unzip sdk-tools-linux-4333796.zip -d $ANDROID_HOME && \
  rm -rf sdk-tools-linux-4333796.zip && \
  mkdir ~/.android && touch ~/.android/repositories.cfg && \
  yes | sdkmanager --licenses && \
  sdkmanager "build-tools;28.0.3" "platforms;android-28"
