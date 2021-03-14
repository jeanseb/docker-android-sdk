# Get base image
FROM openjdk:8

# Install Android command line tools
ENV ANDROID_SDK_ROOT /opt/android-sdk
WORKDIR $ANDROID_SDK_ROOT
RUN curl -L https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip --output android.zip && \
    unzip android.zip && \
    rm android.zip && \
    mkdir latest && \
    mv cmdline-tools/* latest && \
    mv latest cmdline-tools
ENV PATH $ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH

# Install Android API 30
RUN yes | sdkmanager --licenses && \
    sdkmanager "build-tools;30.0.3" "platforms;android-30"

WORKDIR /app
