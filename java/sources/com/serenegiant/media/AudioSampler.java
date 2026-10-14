package com.serenegiant.media;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class AudioSampler extends IAudioSampler {
    private static final int AUDIO_FORMAT = 2;
    private static final String TAG = "AudioSampler";
    private final int AUDIO_SOURCE;
    private final int BUFFER_SIZE;
    private final int CHANNEL_COUNT;
    private final int SAMPLES_PER_FRAME;
    private final int SAMPLING_RATE;
    private AudioThread mAudioThread;

    protected static final class AudioRecordRec {
        AudioRecord audioRecord;
        int bufferSize;

        protected AudioRecordRec() {
        }
    }

    private final class AudioThread extends Thread {
        public AudioThread() {
            super("AudioThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            int i;
            Process.setThreadPriority(-16);
            int i2 = 3;
            while (AudioSampler.this.mIsCapturing && i2 > 0) {
                AudioRecord audioRecordCreateAudioRecord = IAudioSampler.createAudioRecord(AudioSampler.this.AUDIO_SOURCE, AudioSampler.this.SAMPLING_RATE, AudioSampler.this.CHANNEL_COUNT, 2, AudioSampler.this.BUFFER_SIZE);
                if (audioRecordCreateAudioRecord != null) {
                    try {
                        try {
                            if (AudioSampler.this.mIsCapturing) {
                                audioRecordCreateAudioRecord.startRecording();
                                while (true) {
                                    i = 0;
                                    while (true) {
                                        try {
                                            if (!AudioSampler.this.mIsCapturing) {
                                                break;
                                            }
                                            MediaData mediaDataObtain = AudioSampler.this.obtain();
                                            if (mediaDataObtain != null) {
                                                int recordingState = audioRecordCreateAudioRecord.getRecordingState();
                                                if (recordingState == 3) {
                                                    ByteBuffer byteBuffer = mediaDataObtain.mBuffer;
                                                    byteBuffer.clear();
                                                    try {
                                                        int i3 = audioRecordCreateAudioRecord.read(byteBuffer, AudioSampler.this.SAMPLES_PER_FRAME);
                                                        if (i3 > 0) {
                                                            try {
                                                                mediaDataObtain.presentationTimeUs = AudioSampler.this.getInputPTSUs();
                                                                mediaDataObtain.size = i3;
                                                                byteBuffer.position(i3);
                                                                byteBuffer.flip();
                                                                AudioSampler.this.addMediaData(mediaDataObtain);
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                i = 0;
                                                            }
                                                        } else if (i3 == 0) {
                                                            AudioSampler.this.recycle(mediaDataObtain);
                                                        } else {
                                                            if (i3 == -1) {
                                                                if (i == 0) {
                                                                    Log.e(AudioSampler.TAG, "Read error ERROR");
                                                                }
                                                            } else if (i3 == -2) {
                                                                if (i == 0) {
                                                                    Log.e(AudioSampler.TAG, "Read error ERROR_BAD_VALUE");
                                                                }
                                                            } else if (i3 != -3) {
                                                                if (i3 == -6) {
                                                                    Log.e(AudioSampler.TAG, "Read error ERROR_DEAD_OBJECT");
                                                                    i++;
                                                                    i2--;
                                                                    AudioSampler.this.recycle(mediaDataObtain);
                                                                    break;
                                                                }
                                                                if (i3 < 0 && i == 0) {
                                                                    Log.e(AudioSampler.TAG, "Read returned unknown err " + i3);
                                                                }
                                                            } else if (i == 0) {
                                                                Log.e(AudioSampler.TAG, "Read error ERROR_INVALID_OPERATION");
                                                            }
                                                            i++;
                                                            AudioSampler.this.recycle(mediaDataObtain);
                                                        }
                                                    } catch (Exception e2) {
                                                        Log.e(AudioSampler.TAG, "AudioRecord#read failed:" + e2);
                                                        i++;
                                                        i2 += -1;
                                                        AudioSampler.this.recycle(mediaDataObtain);
                                                        AudioSampler.this.callOnError(e2);
                                                        break;
                                                    }
                                                } else {
                                                    if (i == 0) {
                                                        Log.e(AudioSampler.TAG, "not a recording state," + recordingState);
                                                    }
                                                    i++;
                                                    AudioSampler.this.recycle(mediaDataObtain);
                                                    if (i > 20) {
                                                        i2--;
                                                        break;
                                                    }
                                                    Thread.sleep(100L);
                                                }
                                                audioRecordCreateAudioRecord.stop();
                                                throw th;
                                            }
                                            if (i > 10) {
                                                i2--;
                                                break;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    }
                                }
                                try {
                                    audioRecordCreateAudioRecord.stop();
                                } catch (Exception e3) {
                                    e = e3;
                                    i2--;
                                    AudioSampler.this.callOnError(e);
                                }
                            } else {
                                i = 0;
                            }
                        } catch (Throwable th3) {
                            audioRecordCreateAudioRecord.release();
                            throw th3;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        i = 0;
                    }
                    audioRecordCreateAudioRecord.release();
                    if (AudioSampler.this.mIsCapturing && i > 0 && i2 > 0) {
                        for (int i4 = 0; AudioSampler.this.mIsCapturing && i4 < 5; i4++) {
                            try {
                                Thread.sleep(100L);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                } else {
                    AudioSampler.this.callOnError(new RuntimeException("AudioRecord failed to initialize"));
                    i2 = 0;
                }
            }
            AudioSampler.this.stop();
        }
    }

    public AudioSampler(int i, int i2, int i3, int i4, int i5) {
        this.AUDIO_SOURCE = i;
        this.CHANNEL_COUNT = i2;
        this.SAMPLING_RATE = i3;
        this.SAMPLES_PER_FRAME = i4 * i2;
        this.BUFFER_SIZE = getAudioBufferSize(i2, i3, i4, i5);
    }

    public static int getAudioBufferSize(int i, int i2, int i3, int i4) {
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i == 1 ? 16 : 12, 2);
        int i5 = i4 * i3;
        return i5 < minBufferSize ? ((minBufferSize / i3) + 1) * i3 * 2 * i : i5;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public int getAudioSource() {
        return this.AUDIO_SOURCE;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public int getBitResolution() {
        return 16;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public int getBufferSize() {
        return this.SAMPLES_PER_FRAME;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public int getChannels() {
        return this.CHANNEL_COUNT;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public int getSamplingFrequency() {
        return this.SAMPLING_RATE;
    }

    @Override // com.serenegiant.media.IAudioSampler
    public synchronized void start() {
        super.start();
        if (this.mAudioThread == null) {
            init_pool(this.SAMPLES_PER_FRAME);
            AudioThread audioThread = new AudioThread();
            this.mAudioThread = audioThread;
            audioThread.start();
        }
    }

    @Override // com.serenegiant.media.IAudioSampler
    public synchronized void stop() {
        this.mIsCapturing = false;
        this.mAudioThread = null;
        super.stop();
    }
}
