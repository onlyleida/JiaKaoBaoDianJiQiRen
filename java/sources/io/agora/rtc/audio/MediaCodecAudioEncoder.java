package io.agora.rtc.audio;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.util.MimeTypes;
import io.agora.rtc.internal.Logging;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class MediaCodecAudioEncoder {
    private ByteBuffer[] mAACInputBuffers;
    private ByteBuffer[] mAACOutputBuffers;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private MediaCodec mMediaCodec = null;
    private MediaFormat mTrackFormat = null;
    private String mCodecString = null;
    private File outputFile = null;
    private BufferedOutputStream outputStream = null;
    private MediaCodec mAACEncoder = null;
    private MediaFormat mAACFormat = null;
    private ByteBuffer mAACEncodedBuffer = ByteBuffer.allocateDirect(1024);
    private String TAG = "MediaCodec Audio Encoder";

    private void addADTStoPacket(byte[] bArr, int i) {
        bArr[0] = -1;
        bArr[1] = -7;
        bArr[2] = (byte) 84;
        bArr[3] = (byte) (64 + (i >> 11));
        bArr[4] = (byte) ((i & 2047) >> 3);
        bArr[5] = (byte) (((i & 7) << 5) + 31);
        bArr[6] = -4;
    }

    private void touch(File file) {
        try {
            if (file.exists()) {
                return;
            }
            file.createNewFile();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean createAACStreaming(int i, int i2, int i3) {
        try {
            Logging.i(this.TAG, "Encoding aac with fs = " + i + ", bitrate = " + i3);
            this.mAACEncoder = MediaCodec.createEncoderByType("audio/mp4a-latm");
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
            this.mAACFormat = mediaFormatCreateAudioFormat;
            mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
            this.mAACFormat.setInteger("sample-rate", i);
            this.mAACFormat.setInteger("channel-count", i2);
            this.mAACFormat.setInteger("bitrate", i3);
            this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when creating aac encode stream");
            e2.printStackTrace();
            return false;
        }
    }

    public boolean createStreaming(String str, int i, int i2, int i3) {
        try {
            Logging.i(this.TAG, "Recording aac with fs = " + i + ", ch = " + i2 + ", quality = " + i3);
            String strSubstring = str.substring(str.length() - 3);
            int i4 = 16000;
            if (strSubstring.equalsIgnoreCase("3gp") || strSubstring.equalsIgnoreCase("amr")) {
                if (i == 8000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AMR_NB);
                    MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AMR_NB, i, i2);
                    this.mTrackFormat = mediaFormatCreateAudioFormat;
                    mediaFormatCreateAudioFormat.setInteger("bitrate", 12200);
                    this.mCodecString = MimeTypes.AUDIO_AMR_NB;
                } else if (i == 16000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AMR_WB);
                    MediaFormat mediaFormatCreateAudioFormat2 = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AMR_WB, i, i2);
                    this.mTrackFormat = mediaFormatCreateAudioFormat2;
                    mediaFormatCreateAudioFormat2.setInteger("bitrate", 23850);
                    this.mCodecString = MimeTypes.AUDIO_AMR_WB;
                }
            } else {
                if (!strSubstring.equalsIgnoreCase("aac")) {
                    return false;
                }
                if (i3 != 0) {
                    i4 = i3 != 1 ? 50000 : 25000;
                }
                this.mMediaCodec = MediaCodec.createEncoderByType("audio/mp4a-latm");
                MediaFormat mediaFormatCreateAudioFormat3 = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
                this.mTrackFormat = mediaFormatCreateAudioFormat3;
                mediaFormatCreateAudioFormat3.setInteger("aac-profile", 2);
                this.mTrackFormat.setInteger("sample-rate", i);
                this.mTrackFormat.setInteger("channel-count", i2);
                this.mTrackFormat.setInteger("bitrate", i4);
                this.mCodecString = "audio/mp4a-latm";
            }
            this.mMediaCodec.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 1);
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            File file = new File(str);
            this.outputFile = file;
            touch(file);
            try {
                this.outputStream = new BufferedOutputStream(new FileOutputStream(this.outputFile));
                Logging.i(this.TAG, "outputStream initialized");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            String str2 = this.mCodecString;
            if (str2 == MimeTypes.AUDIO_AMR_NB) {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 10});
            } else if (str2 == MimeTypes.AUDIO_AMR_WB) {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 45, 87, 66, 10});
            }
            return true;
        } catch (Exception e3) {
            Logging.e(this.TAG, "Error when creating aac file encoder");
            e3.printStackTrace();
            return false;
        }
    }

    public int encodeAACFrame(byte[] bArr) {
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        int i = Build.VERSION.SDK_INT;
        int i2 = 0;
        try {
            int iDequeueInputBuffer = this.mAACEncoder.dequeueInputBuffer(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            if (iDequeueInputBuffer != -1) {
                if (i >= 21) {
                    inputBuffer = this.mAACEncoder.getInputBuffer(iDequeueInputBuffer);
                } else {
                    ByteBuffer[] inputBuffers = this.mAACEncoder.getInputBuffers();
                    this.mAACInputBuffers = inputBuffers;
                    inputBuffer = inputBuffers[iDequeueInputBuffer];
                }
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACEncoder.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACEncoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer < 0) {
                return 0;
            }
            int i3 = bufferInfo.size;
            if (i >= 21) {
                outputBuffer = this.mAACEncoder.getOutputBuffer(iDequeueOutputBuffer);
            } else {
                ByteBuffer[] outputBuffers = this.mAACEncoder.getOutputBuffers();
                this.mAACOutputBuffers = outputBuffers;
                outputBuffer = outputBuffers[iDequeueOutputBuffer];
            }
            int i4 = (bufferInfo.flags & 2) == 2 ? 0 : bufferInfo.size;
            try {
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i3);
                this.mAACEncodedBuffer.position(0);
                this.mAACEncodedBuffer.put(outputBuffer);
                this.mAACEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i4;
            } catch (Exception e2) {
                e = e2;
                i2 = i4;
            }
        } catch (Exception e3) {
            e = e3;
        }
        Logging.e(this.TAG, "Error when encoding aac stream");
        e.printStackTrace();
        return i2;
    }

    public void encodeFrame(byte[] bArr) {
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        int i = Build.VERSION.SDK_INT;
        try {
            int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            if (iDequeueInputBuffer != -1) {
                if (i >= 21) {
                    inputBuffer = this.mMediaCodec.getInputBuffer(iDequeueInputBuffer);
                } else {
                    ByteBuffer[] inputBuffers = this.mMediaCodec.getInputBuffers();
                    this.mInputBuffers = inputBuffers;
                    inputBuffer = inputBuffers[iDequeueInputBuffer];
                }
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            while (iDequeueOutputBuffer >= 0) {
                int i2 = bufferInfo.size;
                if (i >= 21) {
                    outputBuffer = this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer);
                } else {
                    ByteBuffer[] outputBuffers = this.mMediaCodec.getOutputBuffers();
                    this.mOutputBuffers = outputBuffers;
                    outputBuffer = outputBuffers[iDequeueOutputBuffer];
                }
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i2);
                String str = this.mCodecString;
                if (str == "audio/mp4a-latm") {
                    int i3 = i2 + 7;
                    byte[] bArr2 = new byte[i3];
                    addADTStoPacket(bArr2, i3);
                    outputBuffer.get(bArr2, 7, i2);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr2, 0, i3);
                } else if (str == MimeTypes.AUDIO_AMR_NB || str == MimeTypes.AUDIO_AMR_WB) {
                    byte[] bArr3 = new byte[i2];
                    outputBuffer.get(bArr3, 0, i2);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr3, 0, i2);
                }
                this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when encoding aac file");
            e2.printStackTrace();
        }
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACEncoder.release();
                this.mAACEncoder = null;
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when releasing aac encode stream");
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
            BufferedOutputStream bufferedOutputStream = this.outputStream;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                this.outputStream.close();
                this.outputStream = null;
            }
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when releasing aac file encoder");
            e2.printStackTrace();
        }
    }

    public boolean setAACEncodeBitrate(int i) {
        Logging.w(this.TAG, "Set hw aac bitrate = " + i);
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACFormat.setInteger("bitrate", i);
                this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
                this.mAACEncoder.start();
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when setting aac encode bitrate");
            e2.printStackTrace();
            return false;
        }
    }

    public void setChannelCount(int i) {
        try {
            this.mTrackFormat.setInteger("channel-count", i);
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when setting aac file encoder channel count");
            e2.printStackTrace();
        }
    }

    public void setSampleRate(int i) {
        try {
            this.mTrackFormat.setInteger("sample-rate", i);
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when setting aac file encoder sample rate");
            e2.printStackTrace();
        }
    }
}
