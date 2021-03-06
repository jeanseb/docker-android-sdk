# Get base image
FROM openjdk:8

# Set environment variables
ENV ANDROID_SDK_ROOT /usr/local/android-sdk
ENV PATH $ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH

# Download Android command line tools
RUN \
  wget https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip

# Install Android command line tools
RUN \
  unzip commandlinetools-linux-6858069_latest.zip && \
  rm commandlinetools-linux-6858069_latest.zip && \
  mkdir latest && \
  mv cmdline-tools/* latest && \
  mv latest cmdline-tools && \
  mkdir -p $ANDROID_SDK_ROOT && \
  mv cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools && \
  mkdir ~/.android && \
  touch ~/.android/repositories.cfg

# Install Android API 30
RUN \
  yes | sdkmanager --licenses && \
  sdkmanager "build-tools;30.0.3" "platforms;android-30"
