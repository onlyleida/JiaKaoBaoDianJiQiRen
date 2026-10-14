package io.agora.rtc.audio;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioRecordingConfiguration;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.MediaRouter;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.os.Build;
import android.os.LocaleList;
import android.os.Process;
import android.util.DisplayMetrics;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.iflytek.cloud.SpeechConstant;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes6.dex */
class AudioDevice {
    private AudioManager _audioManager;
    private Context _context;
    private ByteBuffer _playBuffer;
    private ByteBuffer _recBuffer;
    private byte[] _tempBufPlay;
    private byte[] _tempBufRec;
    final String TAG = "AudioDevice Java";
    private final int _MaxRecPlay10msBlocks = 4;
    private AudioTrack _audioTrack = null;
    private AudioRecord _audioRecord = null;
    private final ReentrantLock _playLock = new ReentrantLock();
    private final ReentrantLock _recLock = new ReentrantLock();
    private boolean _doPlayInit = true;
    private boolean _doRecInit = true;
    private boolean _isRecording = false;
    private boolean _isPlaying = false;
    private int _bufferedRecSamples = 0;
    private int _bufferedPlaySamples = 0;
    private int _playPosition = 0;
    private int _playbackSampleRate = 0;
    private int _playBufSize = 0;
    private int _playbackRestartCount = 0;
    private int _recordSampleRate = 0;
    private int _recordChannel = 0;
    private int _playChannel = 0;
    private int _recordBufSize = 0;
    private int _recordSource = 0;
    private int _recordRestartCount = 0;
    private boolean _renderStart = false;
    private long _firstRenderTS = 0;
    private int _playPreviousUnderrun = 0;
    private long _recDelay = 10;
    private long _lastRecDelay = 0;
    private long _recStartTS = 0;
    private int _recStartDelay = 0;
    private AcousticEchoCanceler aec = null;
    private boolean useBuiltInAEC = false;
    private int _streamType = 0;
    private int playWriten = 0;
    private int maxDelay = 0;
    private int totalDelay = 0;

    AudioDevice() {
        try {
            this._playBuffer = ByteBuffer.allocateDirect(7680);
            this._recBuffer = ByteBuffer.allocateDirect(7680);
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "failed to allocate bytebuffer", e2);
        }
        this._tempBufPlay = new byte[7680];
        this._tempBufRec = new byte[7680];
        Context context = this._context;
        if (context != null) {
            HardwareEarbackController.getInstance(context);
        }
    }

    private boolean BuiltInAECIsAvailable() {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                return AcousticEchoCanceler.isAvailable();
            }
            return false;
        } catch (Exception unused) {
            Logging.e("AudioDevice Java", "Unable to query Audio Effect: Acoustic Echo Cancellation");
            return false;
        } catch (ExceptionInInitializerError e2) {
            Logging.e("AudioDevice Java", "Unable to create AEC object ", e2);
            return false;
        }
    }

    private boolean BuiltInAECIsEnabled() {
        return this.useBuiltInAEC;
    }

    private int CheckAudioStatus(int i) {
        int i2 = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            if (this._audioManager == null) {
                Context context = this._context;
                if (context == null) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus error");
                    return -1;
                }
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            if (i == 0) {
                if (this._context.checkPermission("android.permission.RECORD_AUDIO", Process.myPid(), Process.myUid()) != 0) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus Microphone Permission denied");
                    return 1027;
                }
                if (this._audioManager == null) {
                    Logging.e("AudioDevice Java", "CheckAudioStatus unkonwn error");
                    return -1;
                }
                AudioRecord audioRecord = this._audioRecord;
                int audioSessionId = audioRecord != null ? audioRecord.getAudioSessionId() : -1;
                Iterator<AudioRecordingConfiguration> it = this._audioManager.getActiveRecordingConfigurations().iterator();
                while (it.hasNext()) {
                    if (it.next().getClientAudioSessionId() != audioSessionId) {
                        i2 = 1033;
                    }
                }
            }
        }
        return i2;
    }

    private boolean EnableBuiltInAEC(boolean z) {
        if (Build.VERSION.SDK_INT <= 18) {
            return false;
        }
        this.useBuiltInAEC = z;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler == null) {
            return true;
        }
        if (acousticEchoCanceler.setEnabled(z) != 0) {
            Logging.e("AudioDevice Java", "AcousticEchoCanceler.setEnabled failed");
            return false;
        }
        Logging.e("AudioDevice Java", "AcousticEchoCanceler.getEnabled: " + this.aec.getEnabled());
        return true;
    }

    private int GetAudioMode() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getMode();
        }
        Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
        return -1;
    }

    private int GetNativePlayDelay() {
        if (this._recDelay < 0) {
            this._recDelay = -1L;
        }
        if (this.totalDelay < 0) {
            this.totalDelay = -1;
        }
        return this.totalDelay + ((int) this._recDelay);
    }

    private int GetNativeSampleRate() {
        String property;
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.w("AudioDevice Java", "Could not set audio mode - no audio manager");
            return 44100;
        }
        if (Build.VERSION.SDK_INT < 17 || (property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE")) == null) {
            return 44100;
        }
        return Integer.parseInt(property);
    }

    private int GetPlayoutMaxVolume() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getStreamMaxVolume(this._streamType);
        }
        return -1;
    }

    private int GetPlayoutVolume() {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager != null) {
            return audioManager.getStreamVolume(this._streamType);
        }
        return -1;
    }

    private int GetPreferedSampleRate() {
        int i;
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            i = Integer.parseInt(this._audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "GetPreferedSampleRate error", e2);
            i = 0;
        }
        if (i == 0) {
            return 16000;
        }
        return i;
    }

    private int GetUnderrunCount() {
        return Build.VERSION.SDK_INT >= 24 ? GetUnderrunCountOnNougatOrHigher() : GetUnderrunCountOnLowerThanNougat();
    }

    private int GetUnderrunCountOnLowerThanNougat() {
        return -1;
    }

    @TargetApi(24)
    private int GetUnderrunCountOnNougatOrHigher() {
        int underrunCount;
        int i = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                underrunCount = this._audioTrack.getUnderrunCount();
            } catch (Exception e2) {
                Logging.e("AudioDevice Java", "getUnderrun fail ", e2);
                underrunCount = 0;
            }
            int i2 = underrunCount - this._playPreviousUnderrun;
            i = i2 >= 0 ? i2 : 0;
            this._playPreviousUnderrun = underrunCount;
            if (i > 0) {
                Logging.d("AudioDevice Java", "Android AudioTrack underrun count: " + i);
            }
        }
        return i;
    }

    private int InitPlayback(int i, int i2, int i3, int i4) {
        Context context;
        this._streamType = i3;
        int i5 = (((i4 * i) * i2) * 2) / 1000;
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2 == 2 ? 12 : 4, 2);
        Logging.d("AudioDevice Java", "Java minimum playback buffer size is " + minBufferSize + ", profiledMiniOutBufferSize is " + i5 + " stream type " + this._streamType);
        int i6 = minBufferSize < i5 ? i5 : minBufferSize;
        this._bufferedPlaySamples = 0;
        Logging.d("AudioDevice Java", "Java playback buffer size is " + i6 + ", duration is " + ((i6 * 1000) / ((i * i2) * 2)) + " ms");
        AudioTrack audioTrack = this._audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this._audioTrack = null;
        }
        try {
            AudioTrack audioTrack2 = new AudioTrack(this._streamType, i, i2 == 2 ? 12 : 4, 2, i6, 1);
            this._audioTrack = audioTrack2;
            this._playbackSampleRate = i;
            this._playChannel = i2;
            this._playBufSize = i6;
            this._playbackRestartCount = 0;
            if (audioTrack2.getState() != 1) {
                Logging.e("AudioDevice Java", "Java playback not initialized " + i);
                return -1;
            }
            Logging.d("AudioDevice Java", "Java play sample rate is set to " + i);
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            AudioManager audioManager = this._audioManager;
            if (audioManager == null) {
                return 0;
            }
            return audioManager.getStreamMaxVolume(this._streamType);
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "Unable to new AudioTrack: ", e2);
            return -1;
        }
    }

    private int InitRecording(int i, int i2, int i3) {
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i3 == 2 ? 12 : 16, 2);
        Logging.d("AudioDevice Java", "Java minimum recording buffer size is " + minBufferSize);
        this._bufferedRecSamples = (i2 * 5) / 200;
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.aec = null;
        }
        AudioRecord audioRecord = this._audioRecord;
        if (audioRecord != null) {
            audioRecord.release();
            this._audioRecord = null;
        }
        try {
            AudioRecord audioRecord2 = new AudioRecord(i, i2, i3 == 2 ? 12 : 16, 2, minBufferSize);
            this._audioRecord = audioRecord2;
            if (audioRecord2.getState() != 1) {
                Logging.e("AudioDevice Java", "Java recording not initialized " + i2);
                return -2;
            }
            this._recordSampleRate = i2;
            this._recordChannel = i3;
            this._recordSource = i;
            this._recordBufSize = minBufferSize;
            this._recordRestartCount = 0;
            Logging.d("AudioDevice Java", "Java recording sample rate set to " + i2);
            Logging.d("AudioDevice Java", "AcousticEchoCanceler.isAvailable: " + BuiltInAECIsAvailable());
            if (!BuiltInAECIsAvailable()) {
                return this._bufferedRecSamples;
            }
            AcousticEchoCanceler acousticEchoCancelerCreate = AcousticEchoCanceler.create(this._audioRecord.getAudioSessionId());
            this.aec = acousticEchoCancelerCreate;
            if (acousticEchoCancelerCreate == null) {
                Logging.e("AudioDevice Java", "AcousticEchoCanceler.create failed");
            } else {
                AudioEffect.Descriptor descriptor = acousticEchoCancelerCreate.getDescriptor();
                if (descriptor == null) {
                    Logging.e("AudioDevice Java", "getDescriptor() failed");
                } else {
                    Logging.d("AudioDevice Java", "AcousticEchoCanceler name: " + descriptor.name + ", implementor: " + descriptor.implementor + ", uuid: " + descriptor.uuid);
                }
                EnableBuiltInAEC(this.useBuiltInAEC);
            }
            return this._bufferedRecSamples;
        } catch (Exception e2) {
            Logging.e("AudioDevice Java", "Unable to new AudioRecord: ", e2);
            return -1;
        }
    }

    private int PlayAudio(int i) {
        this._playLock.lock();
        int i2 = 0;
        try {
            try {
                if (this._audioTrack == null) {
                    return -2;
                }
                if (this._doPlayInit) {
                    try {
                        Process.setThreadPriority(-19);
                    } catch (Exception e2) {
                        Logging.e("AudioDevice Java", "Set play thread priority failed: ", e2);
                    }
                    this._doPlayInit = false;
                }
                this._playBuffer.get(this._tempBufPlay);
                int iWrite = this._audioTrack.write(this._tempBufPlay, 0, i);
                this._playBuffer.rewind();
                this._bufferedPlaySamples += iWrite >> 1;
                this.playWriten += iWrite;
                int playbackHeadPosition = this._audioTrack.getPlaybackHeadPosition() * this._playChannel;
                int i3 = this.playWriten;
                int i4 = (((i3 / 2) - playbackHeadPosition) / 2) / 48;
                int i5 = this.maxDelay;
                if (i4 > i5) {
                    i5 = (((i3 / 2) - playbackHeadPosition) / 2) / 48;
                }
                this.maxDelay = i5;
                if (this._firstRenderTS == 0) {
                    this._firstRenderTS = System.currentTimeMillis();
                }
                if (playbackHeadPosition > 0 && !this._renderStart) {
                    this._firstRenderTS = System.currentTimeMillis() - this._firstRenderTS;
                    Logging.e("AudioDevice Java", "caculated the first render TS = " + this._firstRenderTS + " pos = " + ((playbackHeadPosition / 2) / 48) + "ms delay " + (this._firstRenderTS + ((long) this.maxDelay)));
                    this._renderStart = true;
                }
                if (this._renderStart) {
                    this.totalDelay = ((int) this._firstRenderTS) + this.maxDelay;
                }
                if (playbackHeadPosition < this._playPosition) {
                    this._playPosition = 0;
                }
                int i6 = this._bufferedPlaySamples - (playbackHeadPosition - this._playPosition);
                this._bufferedPlaySamples = i6;
                this._playPosition = playbackHeadPosition;
                i2 = this._isRecording ? 0 : i6;
                if (iWrite != i) {
                    if (this._playbackRestartCount <= 20) {
                        Logging.e("AudioDevice Java", "Error writing AudioTrack! Restart AudioTrack " + this._playbackRestartCount);
                        this._playbackRestartCount = this._playbackRestartCount + 1;
                        this._audioTrack.stop();
                        this._audioTrack.release();
                        this._audioTrack = null;
                        try {
                            AudioTrack audioTrack = new AudioTrack(this._streamType, this._playbackSampleRate, this._playChannel == 2 ? 12 : 4, 2, this._playBufSize, 1);
                            this._audioTrack = audioTrack;
                            audioTrack.play();
                        } catch (Exception e3) {
                            Logging.e("AudioDevice Java", "restart audio fail", e3);
                        }
                    }
                    return iWrite;
                }
            } catch (Exception e4) {
                Logging.e("AudioDevice Java", "PlayAudio got fatal error ", e4);
            }
            return i2;
        } finally {
            this._playLock.unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00b2 A[RETURN] */
    private int QuerySpeakerStatus() {
        int i;
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                MediaRouter.RouteInfo selectedRoute = ((MediaRouter) this._context.getSystemService("media_router")).getSelectedRoute(1);
                selectedRoute.getName().toString().compareToIgnoreCase("phone");
                Configuration configuration = this._context.getResources().getConfiguration();
                LocaleList locales = configuration.getLocales();
                DisplayMetrics displayMetrics = this._context.getResources().getDisplayMetrics();
                configuration.setLocale(Locale.ENGLISH);
                this._context.getResources().updateConfiguration(configuration, displayMetrics);
                if (selectedRoute.getName(this._context).toString().compareToIgnoreCase("phone") == 0) {
                    Logging.e("AudioDevice Java", "speaker");
                } else {
                    if (selectedRoute.getName(this._context).toString().compareToIgnoreCase("headset") == 0) {
                        Logging.e("AudioDevice Java", "headset");
                        i = 0;
                    } else if (selectedRoute.getName(this._context).toString().compareToIgnoreCase(SpeechConstant.BLUETOOTH) == 0) {
                        Logging.e("AudioDevice Java", SpeechConstant.BLUETOOTH);
                        i = 5;
                    }
                    configuration.setLocales(locales);
                    this._context.getResources().updateConfiguration(configuration, displayMetrics);
                    if (i != -1) {
                        return i;
                    }
                }
                i = -1;
                configuration.setLocales(locales);
                this._context.getResources().updateConfiguration(configuration, displayMetrics);
                if (i != -1) {
                    return i;
                }
            }
        } catch (Exception e2) {
            Logging.e("error in Query audio route ");
            e2.printStackTrace();
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.e("AudioDevice Java", "Could not get audio routing - no audio manager");
            return -1;
        }
        if (audioManager.isBluetoothA2dpOn()) {
            return 5;
        }
        if (this._audioManager.isSpeakerphoneOn()) {
            return 3;
        }
        if (this._audioManager.isBluetoothScoOn()) {
            return 5;
        }
        return this._audioManager.isWiredHeadsetOn() ? 0 : 1;
    }

    private int RecordAudio(int i) {
        int i2 = Build.VERSION.SDK_INT;
        this._recLock.lock();
        int i3 = this._bufferedPlaySamples;
        try {
            try {
                if (this._audioRecord == null) {
                    return -4;
                }
                if (this._doRecInit) {
                    try {
                        Process.setThreadPriority(-19);
                    } catch (Exception e2) {
                        Logging.e("AudioDevice Java", "Set rec thread priority failed: ", e2);
                    }
                    this._doRecInit = false;
                }
                this._recBuffer.rewind();
                int i4 = this._audioRecord.read(this._tempBufRec, 0, i);
                this._recBuffer.put(this._tempBufRec);
                if (this._recDelay == 10) {
                    if (i2 >= 24) {
                        AudioTimestamp audioTimestamp = new AudioTimestamp();
                        this._audioRecord.getTimestamp(audioTimestamp, 0);
                        long jNanoTime = ((System.nanoTime() - audioTimestamp.nanoTime) / 1000) / 1000;
                        this._recDelay = jNanoTime;
                        if (jNanoTime > 50) {
                            this._recDelay = 10L;
                        }
                    } else {
                        this._recDelay = 10L;
                    }
                    if (this._recStartDelay == 0) {
                        this._recStartDelay = (((int) (System.nanoTime() - this._recStartTS)) / 1000) / 1000;
                    }
                    this._recDelay += (long) this._recStartDelay;
                }
                if (this._lastRecDelay != this._recDelay) {
                    if (i2 >= 23) {
                        int bufferSizeInFrames = this._audioRecord.getBufferSizeInFrames();
                        Logging.i("AudioDevice Java", "frames  " + bufferSizeInFrames + " recDelay " + this._recDelay + " caculated frames delay " + (bufferSizeInFrames / (this._audioRecord.getSampleRate() / 1000)));
                    } else {
                        Logging.i("AudioDevice Java", "_recDelay: " + this._recDelay);
                    }
                    this._lastRecDelay = this._recDelay;
                }
                if (i4 != i) {
                    if (this._recordRestartCount % 10 == 0) {
                        Logging.e("AudioDevice Java", "Error reading AudioRecord! AudioRecord.read returns " + i4);
                    }
                    this._recordRestartCount++;
                    this._audioRecord.stop();
                    this._audioRecord.release();
                    this._audioRecord = null;
                    AudioRecord audioRecord = new AudioRecord(this._recordSource, this._recordSampleRate, this._recordChannel == 2 ? 12 : 16, 2, this._recordBufSize);
                    this._audioRecord = audioRecord;
                    audioRecord.startRecording();
                    this._recStartTS = System.nanoTime();
                    this._recStartDelay = 0;
                    return i4;
                }
            } catch (Exception e3) {
                i3 = -10;
                Logging.e("AudioDevice Java", "RecordAudio try failed: ", e3);
            }
            return i3;
        } finally {
            this._recLock.unlock();
        }
    }

    private int SetAudioMode(int i) {
        int i2;
        Context context;
        try {
            if (this._audioManager == null && (context = this._context) != null) {
                this._audioManager = (AudioManager) context.getSystemService("audio");
            }
            AudioManager audioManager = this._audioManager;
            if (audioManager == null) {
                Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
                return -1;
            }
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = this._audioManager.getStreamVolume(3);
            int streamMaxVolume2 = this._audioManager.getStreamMaxVolume(0);
            int streamVolume2 = this._audioManager.getStreamVolume(0);
            int i3 = streamMaxVolume - streamMaxVolume2;
            double d2 = ((double) streamMaxVolume2) / ((double) streamMaxVolume);
            if (this._audioManager.getMode() == i) {
                return 0;
            }
            if (this._isPlaying) {
                Logging.e("AudioDevice Java", "_audioManager.getMode() = " + this._audioManager.getMode() + " target mode = " + i + "factorX = " + i3 + "mMediaMaxVolume=" + streamMaxVolume + "mCommMaxVolume=" + streamMaxVolume2 + "mCurrMediaVolume=" + streamVolume + "mCurrCommVolume=" + streamVolume2 + "delta" + d2);
                if (i == 3) {
                    if (i3 < 12) {
                        i2 = streamVolume - i3;
                        if (i2 < 1) {
                            i2 = 1;
                        }
                    } else {
                        i2 = (int) ((((double) streamVolume) * d2) + 0.5d);
                    }
                    if (i2 < 1) {
                        i2 = 1;
                    }
                    Logging.d("[Java AudioDevice] set voice call vol = " + i2);
                    this._audioManager.setStreamVolume(0, i2, 0);
                } else if (i == 0) {
                    if (i3 < 12) {
                        int i4 = streamVolume2 + i3;
                        if (i4 < streamMaxVolume) {
                            streamMaxVolume = i4;
                        }
                    } else {
                        streamMaxVolume = (int) ((((double) streamVolume2) / d2) + 0.5d);
                    }
                    if (streamMaxVolume < 1) {
                        streamMaxVolume = 1;
                    }
                    this._audioManager.setStreamVolume(3, streamMaxVolume, 0);
                    Logging.d("[Java AudioDevice] set music vol = " + streamMaxVolume);
                }
            }
            if (i == 0) {
                this._audioManager.setMode(0);
            } else if (i == 1) {
                this._audioManager.setMode(1);
            } else if (i == 2) {
                this._audioManager.setMode(2);
            } else if (i != 3) {
                this._audioManager.setMode(0);
            } else {
                this._audioManager.setMode(3);
            }
            return 0;
        } catch (Exception unused) {
            Logging.e("AudioDevice Java", "set audio mode failed! ");
        }
    }

    private int SetPlayoutSpeaker(boolean z) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            Logging.e("AudioDevice Java", "Could not change audio routing - no audio manager");
            return -1;
        }
        audioManager.setSpeakerphoneOn(z);
        return 0;
    }

    private int SetPlayoutVolume(int i) {
        Context context;
        if (this._audioManager == null && (context = this._context) != null) {
            this._audioManager = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this._audioManager;
        if (audioManager == null) {
            return -1;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(this._streamType);
        if (i < 255) {
            streamMaxVolume = (i * streamMaxVolume) / 255;
        }
        this._audioManager.setStreamVolume(this._streamType, streamMaxVolume, 0);
        return 0;
    }

    private int StartPlayback() {
        this._firstRenderTS = 0L;
        this._renderStart = false;
        try {
            this.playWriten = 0;
            this._audioTrack.play();
            this.maxDelay = 0;
            this.totalDelay = 0;
            this._isPlaying = true;
            return 0;
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            return -1;
        } catch (Exception e3) {
            Logging.e("AudioDevice Java", "startplayback fail", e3);
            return -1;
        }
    }

    private int StartRecording() {
        try {
            AudioRecord audioRecord = this._audioRecord;
            if (audioRecord == null) {
                return -2;
            }
            audioRecord.startRecording();
            Logging.e("AudioDevice Java", "Recording start time " + System.nanoTime());
            this._recStartTS = System.nanoTime();
            this._recStartDelay = 0;
            this._recDelay = 10L;
            this._isRecording = true;
            return 0;
        } catch (IllegalStateException e2) {
            Logging.e("AudioDevice Java", "failed to startRecording", e2);
            return -1;
        } catch (Exception e3) {
            Logging.e("AudioDevice Java", "failed to startRecording Exception", e3);
            return -2;
        }
    }

    private int StopPlayback() {
        this._firstRenderTS = 0L;
        this._playLock.lock();
        try {
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    this._audioTrack.setVolume(BitmapDescriptorFactory.HUE_RED);
                } else {
                    this._audioTrack.setStereoVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                if (this._audioTrack.getPlayState() == 3) {
                    this._audioTrack.stop();
                    this._audioTrack.flush();
                }
                this._audioTrack.release();
                this._audioTrack = null;
            } catch (IllegalStateException e2) {
                Logging.e("AudioDevice Java", "Unable to stop playback: ", e2);
                AudioTrack audioTrack = this._audioTrack;
                if (audioTrack != null) {
                    audioTrack.flush();
                    this._audioTrack.release();
                    this._audioTrack = null;
                }
                this._doPlayInit = true;
                this._playLock.unlock();
                return -1;
            } catch (Exception e3) {
                Logging.e("AudioDevice Java", "Stop playback fail", e3);
                AudioTrack audioTrack2 = this._audioTrack;
                if (audioTrack2 != null) {
                    audioTrack2.flush();
                    this._audioTrack.release();
                    this._audioTrack = null;
                }
            }
            this._doPlayInit = true;
            this._playLock.unlock();
            this._isPlaying = false;
            return 0;
        } catch (Throwable th) {
            AudioTrack audioTrack3 = this._audioTrack;
            if (audioTrack3 != null) {
                audioTrack3.flush();
                this._audioTrack.release();
                this._audioTrack = null;
            }
            this._doPlayInit = true;
            this._playLock.unlock();
            throw th;
        }
    }

    private int StopRecording() {
        this._recLock.lock();
        try {
            try {
                if (this._audioRecord.getRecordingState() == 3) {
                    this._audioRecord.stop();
                }
                AcousticEchoCanceler acousticEchoCanceler = this.aec;
                if (acousticEchoCanceler != null) {
                    acousticEchoCanceler.release();
                    this.aec = null;
                }
                this._audioRecord.release();
                this._audioRecord = null;
            } catch (Exception e2) {
                Logging.e("AudioDevice Java", "error in StopRecording ", e2);
                AudioRecord audioRecord = this._audioRecord;
                if (audioRecord != null) {
                    audioRecord.release();
                    this._audioRecord = null;
                }
            }
            this._doRecInit = true;
            this._recLock.unlock();
            this._isRecording = false;
            return 0;
        } catch (Throwable th) {
            AudioRecord audioRecord2 = this._audioRecord;
            if (audioRecord2 != null) {
                audioRecord2.release();
                this._audioRecord = null;
            }
            this._doRecInit = true;
            this._recLock.unlock();
            throw th;
        }
    }

    private int enableHardwareEarback(boolean z) {
        Logging.i("AudioDevice Java", "enableHardwareEarback " + z);
        int iEnableHardwareEarback = HardwareEarbackController.getInstance(this._context).enableHardwareEarback(z);
        Logging.i("AudioDevice Java", "enableHardwareEarback " + z + " ret " + iEnableHardwareEarback);
        return iEnableHardwareEarback;
    }

    private boolean isHardwareEarbackSupported() {
        Context context = this._context;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).isHardwareEarbackSupported();
        }
        return false;
    }

    private int setHardwareEarbackVolume(int i) {
        Context context = this._context;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).setHardwareEarbackVolume(i);
        }
        return -1;
    }
}
