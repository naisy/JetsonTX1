########################################
# bazel-0.10.1 ビルド # for Tensorflow r1.6.0 -
########################################
mkdir -p /mnt/Jetson-SSD500/compile \
&& cd /mnt/Jetson-SSD500/compile \
&& wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/0.10.1/bazel-0.10.1-dist.zip \
&& unzip bazel-0.10.1-dist.zip -d bazel-0.10.1 \
&& cd bazel-0.10.1 \
&& ./compile.sh \
&& cp -f output/bazel /usr/local/bin/

#real	18m22.574s
#user	77m53.804s
#sys	2m48.840s
