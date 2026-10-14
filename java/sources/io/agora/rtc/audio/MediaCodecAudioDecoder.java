package io.agora.rtc.audio;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.common.base.Ascii;
import com.iflytek.cloud.ErrorCode;
import io.agora.rtc.internal.Logging;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class MediaCodecAudioDecoder {
    private static int HTTP_REQUEST_TIMEOUT = 400;
    private static int MAX_DECODER_RETRY_COUNT = 300;
    private ByteBuffer mDecodedRAWBuffer;
    private long mFileLength;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private Context mContext = null;
    private MediaCodec mMediaCodec = null;
    private MediaExtractor mExtractor = null;
    private MediaFormat mTrackFormat = null;
    private boolean mDecodedDataReady = false;
    private boolean eoInputStream = false;
    private boolean eoOutputStream = false;
    private int mSampleRate = 44100;
    private int mChannels = 2;
    private int mRetryCount = 0;
    private MediaCodec mAACDecoder = null;
    private ByteBuffer mAACOutputBuffer = ByteBuffer.allocateDirect(4096);
    private String TAG = "MediaCodec Audio Decoder";

    private boolean checkInfoChange() {
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        try {
            MediaFormat outputFormat = this.mMediaCodec.getOutputFormat();
            int integer = outputFormat.getInteger("sample-rate");
            if (integer == 22050) {
                integer = 22000;
            } else if (integer == 11025) {
                integer = ErrorCode.MSP_ERROR_LOGIN_SUCCESS;
            }
            int integer2 = outputFormat.getInteger("channel-count");
            boolean z = (this.mSampleRate == integer && this.mChannels == integer2) ? false : true;
            this.mSampleRate = integer;
            this.mChannels = integer2;
            return z;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when checking file's new format");
            e2.printStackTrace();
            return false;
        }
    }

    private void cloneByteBuffer(ByteBuffer byteBuffer) {
        try {
            ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
            if (byteBuffer2 == null || byteBuffer2.limit() != byteBuffer.limit()) {
                ByteBuffer byteBuffer3 = this.mDecodedRAWBuffer;
                if (byteBuffer3 != null) {
                    byteBuffer3.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(byteBuffer.limit());
            }
            this.mDecodedRAWBuffer.position(0);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void cloneByteBufferByLength(ByteBuffer byteBuffer, int i) {
        try {
            ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
            if (byteBuffer2 == null || byteBuffer2.capacity() < i) {
                ByteBuffer byteBuffer3 = this.mDecodedRAWBuffer;
                if (byteBuffer3 != null) {
                    byteBuffer3.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(i);
            }
            this.mDecodedRAWBuffer.position(0);
            byteBuffer.limit(i);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean checkAACSupported() {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                    if (!mediaCodecInfo.isEncoder() && mediaCodecInfo.getName().toLowerCase().contains("nvidia")) {
                        return false;
                    }
                }
            } else {
                int codecCount = MediaCodecList.getCodecCount();
                for (int i = 0; i < codecCount; i++) {
                    MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                    if (!codecInfoAt.isEncoder() && codecInfoAt.getName().toLowerCase().contains("nvidia")) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when checking aac codec availability");
            e2.printStackTrace();
            return false;
        }
    }

    public boolean createAACStreaming(int i) {
        try {
            this.mAACDecoder = MediaCodec.createDecoderByType("audio/mp4a-latm");
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, 1);
            mediaFormatCreateAudioFormat.setInteger("sample-rate", i);
            mediaFormatCreateAudioFormat.setInteger("channel-count", 1);
            mediaFormatCreateAudioFormat.setByteBuffer("csd-0", ByteBuffer.wrap(new byte[]{Ascii.DC2, -120}));
            this.mAACDecoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 0);
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when creating aac decode stream");
            e2.printStackTrace();
            return false;
        }
    }

    public boolean createStreaming(String str) {
        try {
            Logging.i(this.TAG, "Try to decode audio file : " + str);
            this.mRetryCount = 0;
            boolean zStartsWith = str.startsWith("/assets/");
            boolean zStartsWith2 = str.toLowerCase().startsWith("http");
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mExtractor = mediaExtractor;
            if (zStartsWith) {
                Context context = this.mContext;
                if (context == null) {
                    return false;
                }
                AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(str.substring(8));
                this.mExtractor.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
            } else if (zStartsWith2) {
                try {
                    try {
                        HttpURLConnection.setFollowRedirects(false);
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setConnectTimeout(HTTP_REQUEST_TIMEOUT);
                        httpURLConnection.setReadTimeout(HTTP_REQUEST_TIMEOUT);
                        httpURLConnection.connect();
                        if (httpURLConnection.getResponseCode() != 200) {
                            return false;
                        }
                        this.mExtractor.setDataSource(str);
                    } catch (IOException unused) {
                        Logging.e(this.TAG, "Connect IOException on URL : " + str);
                        return false;
                    }
                } catch (SocketTimeoutException unused2) {
                    Logging.e(this.TAG, "Connect timeout on URL : " + str);
                    return false;
                }
            } else {
                mediaExtractor.setDataSource(str);
            }
            int trackCount = this.mExtractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                this.mExtractor.unselectTrack(i);
            }
            for (int i2 = 0; i2 < trackCount; i2++) {
                MediaFormat trackFormat = this.mExtractor.getTrackFormat(i2);
                this.mTrackFormat = trackFormat;
                String string = trackFormat.getString("mime");
                if (string.contains("audio/")) {
                    this.mExtractor.selectTrack(i2);
                    MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(string);
                    this.mMediaCodec = mediaCodecCreateDecoderByType;
                    mediaCodecCreateDecoderByType.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 0);
                    break;
                }
            }
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            this.mChannels = this.mTrackFormat.getInteger("channel-count");
            int integer = this.mTrackFormat.getInteger("sample-rate");
            this.mSampleRate = integer;
            if (integer == 22050) {
                this.mSampleRate = 22000;
            } else if (integer == 11025) {
                this.mSampleRate = ErrorCode.MSP_ERROR_LOGIN_SUCCESS;
            }
            this.mFileLength = this.mTrackFormat.getLong("durationUs");
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when creating aac audio file decoder");
            e2.printStackTrace();
            return false;
        }
    }

    public int decodeAACFrame(byte[] bArr) {
        int i = Build.VERSION.SDK_INT;
        int i2 = 0;
        try {
            int iDequeueInputBuffer = this.mAACDecoder.dequeueInputBuffer(200L);
            if (iDequeueInputBuffer >= 0) {
                ByteBuffer inputBuffer = i >= 21 ? this.mAACDecoder.getInputBuffer(iDequeueInputBuffer) : this.mAACDecoder.getInputBuffers()[iDequeueInputBuffer];
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACDecoder.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACDecoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 || iDequeueOutputBuffer == -2 || iDequeueOutputBuffer == -1 || iDequeueOutputBuffer < 0) {
                return 0;
            }
            ByteBuffer outputBuffer = i >= 21 ? this.mAACDecoder.getOutputBuffer(iDequeueOutputBuffer) : this.mAACDecoder.getOutputBuffers()[iDequeueOutputBuffer];
            int i3 = bufferInfo.size;
            try {
                this.mAACOutputBuffer.position(0);
                outputBuffer.limit(i3);
                this.mAACOutputBuffer.put(outputBuffer);
                this.mAACDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i3;
            } catch (Exception e2) {
                i2 = i3;
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        Logging.e(this.TAG, "Error when decoding aac stream");
        e.printStackTrace();
        return i2;
    }

    public boolean decodeFrame() {
        int iDequeueInputBuffer;
        ByteBuffer inputBuffer;
        int i;
        int i2 = Build.VERSION.SDK_INT;
        try {
            if (!this.eoInputStream && (iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(0L)) >= 0) {
                if (i2 >= 21) {
                    inputBuffer = this.mMediaCodec.getInputBuffer(iDequeueInputBuffer);
                } else {
                    ByteBuffer[] inputBuffers = this.mMediaCodec.getInputBuffers();
                    this.mInputBuffers = inputBuffers;
                    inputBuffer = inputBuffers[iDequeueInputBuffer];
                }
                int sampleData = this.mExtractor.readSampleData(inputBuffer, 0);
                if (sampleData <= 0) {
                    this.eoInputStream = true;
                    i = 0;
                } else {
                    i = sampleData;
                }
                long sampleTime = this.mExtractor.getSampleTime();
                int sampleFlags = this.mExtractor.getSampleFlags();
                if (this.eoInputStream) {
                    sampleFlags |= 4;
                }
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, i, sampleTime, sampleFlags);
                this.mExtractor.advance();
            }
            if (!this.eoOutputStream) {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
                this.mDecodedDataReady = false;
                if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer != -2) {
                    if (iDequeueOutputBuffer != -1) {
                        this.mRetryCount = 0;
                        if (iDequeueOutputBuffer >= 0) {
                            if ((bufferInfo.flags & 4) == 4) {
                                this.eoOutputStream = true;
                            }
                            if (i2 >= 21) {
                                cloneByteBuffer(this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer));
                            } else {
                                ByteBuffer[] outputBuffers = this.mMediaCodec.getOutputBuffers();
                                this.mOutputBuffers = outputBuffers;
                                cloneByteBufferByLength(outputBuffers[iDequeueOutputBuffer], bufferInfo.size);
                            }
                            this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            this.mDecodedDataReady = true;
                        }
                    } else {
                        int i3 = this.mRetryCount + 1;
                        this.mRetryCount = i3;
                        if (i3 >= MAX_DECODER_RETRY_COUNT) {
                            Logging.e(this.TAG, "EAGAIN count=" + this.mRetryCount + " presentationTimeUs=" + bufferInfo.presentationTimeUs + " totalUs=" + this.mFileLength + " Force EOS");
                            this.eoOutputStream = true;
                        }
                    }
                }
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when decoding audio file stream");
            e2.printStackTrace();
        }
        return this.eoOutputStream;
    }

    public int getChannelCount() {
        return this.mChannels;
    }

    public long getCurrentFilePosition() {
        return this.mExtractor.getSampleTime();
    }

    public boolean getDecodeDataReadyFlag() {
        return this.mDecodedDataReady;
    }

    public long getFileLength() {
        return this.mFileLength;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACDecoder.release();
                this.mAACDecoder = null;
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when releasing aac decode stream");
            e2.printStackTrace();
        }
    }

    public void releaseStreaming() {
        try {
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            }
            MediaExtractor mediaExtractor = this.mExtractor;
            if (mediaExtractor != null) {
                mediaExtractor.release();
                this.mExtractor = null;
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when releasing audio file stream");
            e2.printStackTrace();
        }
        this.eoOutputStream = false;
        this.eoInputStream = false;
    }

    public void rewindStreaming() {
        try {
            this.mExtractor.seekTo(0L, 1);
            this.mMediaCodec.flush();
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when rewinding audio file stream");
            e2.printStackTrace();
        }
        this.eoInputStream = false;
        this.eoOutputStream = false;
        this.mDecodedDataReady = false;
    }

    public void setCurrentFilePosition(long j) {
        this.mExtractor.seekTo(j, 2);
    }
}
