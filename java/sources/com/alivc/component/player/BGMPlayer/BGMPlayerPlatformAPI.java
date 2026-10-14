package com.alivc.component.player.BGMPlayer;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.alivc.component.player.BGMPlayerEventJNI;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
class BGMPlayerPlatformAPI implements IBGMPlayer {
    private static final int AF_SAMPLE_FMT_S16 = 1;
    private static final long DECODE_TIME_OUT_US = 10000;
    private static final String TAG = "BGMPlayerPlatformAPI";
    private String audioUrl;
    private MediaExtractor mediaExtractor = null;
    private MediaCodec mediaCodec = null;
    private ByteBuffer[] mOutputBuffers = null;
    private ByteBuffer[] mInputBuffers = null;
    private boolean isAutoPlay = false;
    private volatile boolean isLoop = false;
    private volatile boolean isStopped = false;
    private volatile boolean isPaused = false;
    private Thread playerThread = null;
    private long inputAudioDuration = 0;
    private long lastPauseTime = 0;
    private long totalPauseDuration = 0;
    private int inputAudioSampleRate = 44100;
    private int inputAudioChannels = 2;
    private int inputAudioFormat = 2;

    BGMPlayerPlatformAPI(Context context) {
        isSDKReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPlay() {
        String str = "";
        int i = 0;
        while (true) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            while (!this.isStopped && this.mediaCodec != null) {
                if (this.isPaused) {
                    try {
                        TimeUnit.MILLISECONDS.sleep(1L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        i = -1;
                        str = "sleep failed";
                    }
                } else {
                    MediaCodec mediaCodec = this.mediaCodec;
                    long j = DECODE_TIME_OUT_US;
                    int iDequeueInputBuffer = mediaCodec.dequeueInputBuffer(DECODE_TIME_OUT_US);
                    if (iDequeueInputBuffer < 0) {
                        i = -2;
                        str = "dequeueInputBuffer failed";
                        break;
                    }
                    ByteBuffer inputBuffer = getInputBuffer(iDequeueInputBuffer);
                    if (inputBuffer != null) {
                        inputBuffer.clear();
                        int sampleData = this.mediaExtractor.readSampleData(inputBuffer, 0);
                        long sampleTime = this.mediaExtractor.getSampleTime();
                        if (sampleData <= 0) {
                            break;
                        }
                        this.mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, 0L, 0);
                        this.mediaExtractor.advance();
                        MediaCodec mediaCodec2 = this.mediaCodec;
                        while (true) {
                            int iDequeueOutputBuffer = mediaCodec2.dequeueOutputBuffer(bufferInfo, j);
                            if (iDequeueOutputBuffer >= 0 && bufferInfo.size > 0) {
                                ByteBuffer outputBuffer = getOutputBuffer(iDequeueOutputBuffer);
                                byte[] bArr = new byte[bufferInfo.size];
                                if (outputBuffer == null) {
                                    i = -4;
                                    str = "getOutputBuffer pcmData failed";
                                    break;
                                }
                                outputBuffer.get(bArr);
                                outputBuffer.clear();
                                long j2 = bufferInfo.presentationTimeUs;
                                long j3 = j2 != 0 ? j2 : sampleTime;
                                long j4 = j3 / 1000;
                                long jElapsedRealtime2 = j4 - ((SystemClock.elapsedRealtime() - jElapsedRealtime) - this.totalPauseDuration);
                                if (jElapsedRealtime2 > 0) {
                                    SystemClock.sleep(jElapsedRealtime2);
                                }
                                BGMPlayerEventJNI.onPlayProgressEvent(j4);
                                int i2 = bufferInfo.size;
                                int i3 = this.inputAudioChannels;
                                BGMPlayerEventJNI.onRenderAudioFrameEvent(new byte[][]{bArr}, j3, 1, (i2 / i3) / 2, i3, this.inputAudioSampleRate);
                                this.mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                mediaCodec2 = this.mediaCodec;
                                j = DECODE_TIME_OUT_US;
                            } else {
                                break;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            MediaCodec mediaCodec3 = this.mediaCodec;
            if (mediaCodec3 != null) {
                mediaCodec3.stop();
                this.mediaCodec.release();
                this.mediaCodec = null;
            }
            if (i != 0) {
                BGMPlayerEventJNI.onErrorEvent(i, str, "");
                break;
            } else if (!this.isLoop || this.isStopped) {
                break;
            } else {
                resetPlayer();
            }
        }
        if (this.isStopped || i == 0) {
            return;
        }
        BGMPlayerEventJNI.onStateChangedEvent(6);
    }

    private ByteBuffer getInputBuffer(int i) {
        return Build.VERSION.SDK_INT >= 21 ? this.mediaCodec.getInputBuffer(i) : this.mInputBuffers[i];
    }

    private ByteBuffer getOutputBuffer(int i) {
        return Build.VERSION.SDK_INT >= 21 ? this.mediaCodec.getOutputBuffer(i) : this.mOutputBuffers[i];
    }

    private boolean initMediaCodec() {
        String message;
        String localizedMessage;
        try {
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(this.audioUrl);
            String string = null;
            MediaFormat trackFormat = null;
            int i = 0;
            while (true) {
                if (i >= this.mediaExtractor.getTrackCount()) {
                    i = -1;
                    break;
                }
                trackFormat = this.mediaExtractor.getTrackFormat(i);
                if (trackFormat.containsKey("mime")) {
                    string = trackFormat.getString("mime");
                }
                if (trackFormat.containsKey("durationUs")) {
                    this.inputAudioDuration = trackFormat.getLong("durationUs") / 1000;
                }
                if (trackFormat.containsKey("channel-count")) {
                    this.inputAudioChannels = trackFormat.getInteger("channel-count");
                }
                if (trackFormat.containsKey("sample-rate")) {
                    this.inputAudioSampleRate = trackFormat.getInteger("sample-rate");
                }
                if (trackFormat.containsKey("pcm-encoding")) {
                    this.inputAudioFormat = trackFormat.getInteger("pcm-encoding");
                }
                if (string.startsWith("audio")) {
                    Log.d(TAG, "Found audio index " + i);
                    break;
                }
                i++;
            }
            if (i == -1) {
                Log.e(TAG, "initAudioDecoder: Not found audio track");
                BGMPlayerEventJNI.onErrorEvent(-1, "No audio track found in this data source", "");
                return false;
            }
            this.mediaExtractor.selectTrack(i);
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(string);
            this.mediaCodec = mediaCodecCreateDecoderByType;
            mediaCodecCreateDecoderByType.configure(trackFormat, (Surface) null, (MediaCrypto) null, 0);
            this.mediaCodec.start();
            this.mOutputBuffers = this.mediaCodec.getOutputBuffers();
            this.mInputBuffers = this.mediaCodec.getInputBuffers();
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            Log.e(TAG, "Exception occurred, error=" + e2.toString());
            message = e2.getMessage();
            localizedMessage = e2.getLocalizedMessage();
            BGMPlayerEventJNI.onErrorEvent(-1, message, localizedMessage);
            return false;
        } catch (Exception e3) {
            e3.printStackTrace();
            Log.e(TAG, "Exception occurred, error=" + e3.toString());
            message = e3.getMessage();
            localizedMessage = e3.getLocalizedMessage();
            BGMPlayerEventJNI.onErrorEvent(-1, message, localizedMessage);
            return false;
        }
    }

    private void playAudio() {
        Thread thread = this.playerThread;
        if (thread != null) {
            try {
                thread.join();
                this.playerThread = null;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                Log.e(TAG, "player thread joined failed");
                BGMPlayerEventJNI.onErrorEvent(-1, "Thread joined failed", "");
            }
        }
        if (!resetPlayer()) {
            Log.e(TAG, "reset player failed");
            return;
        }
        Thread thread2 = new Thread(new Runnable() { // from class: com.alivc.component.player.BGMPlayer.BGMPlayerPlatformAPI.1
            @Override // java.lang.Runnable
            public void run() {
                BGMPlayerEventJNI.onStateChangedEvent(3);
                try {
                    BGMPlayerPlatformAPI.this.doPlay();
                } catch (Exception e3) {
                    e3.printStackTrace();
                    Log.e(BGMPlayerPlatformAPI.TAG, "player thread joined failed");
                    BGMPlayerEventJNI.onErrorEvent(-1, e3.getMessage(), e3.getLocalizedMessage());
                }
            }
        }, TAG);
        this.playerThread = thread2;
        thread2.start();
    }

    private boolean resetPlayer() {
        this.isPaused = false;
        this.isStopped = false;
        this.lastPauseTime = 0L;
        this.totalPauseDuration = 0L;
        return initMediaCodec();
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public long getDuration() {
        return this.inputAudioDuration;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public boolean isSDKReady() {
        return true;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void pause() {
        this.isPaused = true;
        this.lastPauseTime = SystemClock.elapsedRealtime();
        BGMPlayerEventJNI.onStateChangedEvent(4);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void prepare() {
        if (this.isAutoPlay) {
            playAudio();
        }
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void release() {
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setAutoPlay(boolean z) {
        this.isAutoPlay = z;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setListenerHandler(long j) {
        BGMPlayerEventJNI.setListenerHandler(j);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setLoop(boolean z) {
        this.isLoop = z;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setUrlSource(String str) {
        this.audioUrl = str;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void start() {
        if (!this.isPaused) {
            playAudio();
            return;
        }
        this.isPaused = false;
        this.totalPauseDuration += SystemClock.elapsedRealtime() - this.lastPauseTime;
        BGMPlayerEventJNI.onStateChangedEvent(3);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void stop() {
        this.isPaused = false;
        this.lastPauseTime = 0L;
        this.totalPauseDuration = 0L;
        this.isStopped = true;
        BGMPlayerEventJNI.onStateChangedEvent(5);
    }
}
