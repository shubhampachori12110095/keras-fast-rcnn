#!/bin/bash
echo "HOSTNAME:"
echo ${HOSTNAME}

export PATH="/nfs/isicvlnas01/share/anaconda/bin/:/nfs/isicvlnas01/users/zekunl/zlib/caffe/:/usr/local/cuda/bin:~/bin:/usr/local/bin:/usr/ucb/:/sbin:/usr/sbin:/usr/local/sbin:/usr/hosts:/usr/games"

export  LD_LIBRARY_PATH="/usr/local/cuda/lib64/:/nfs/isicvlnas01/share/SGE_ROOT/lib/linux-x64/:/nfs/isicvlnas01/share/cudnn-7.5-linux-x64-v5.0-ga/lib64/"

# if gpu not allocated. avoid if possible

cd /nfs/isicvlnas01/users/zekunl/projects/keras-fast-rcnn/fast-rcnn/

# remember to modify fastrcnn.py and pool.py in keras-model/ 
time python tools/train_net.py  --imdb voc_2012_train --data /nfs/isicvlnas01/users/zekunl/datastore/VOCdevkit/VOC2012
