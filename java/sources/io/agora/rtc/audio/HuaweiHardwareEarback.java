package io.agora.rtc.audio;

import android.content.Context;
import com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit;
import com.huawei.multimedia.audiokit.interfaces.HwAudioKit;
import com.huawei.multimedia.audiokit.interfaces.c;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes6.dex */
class HuaweiHardwareEarback implements IHardwareEarback {
    private static final String TAG = "HuaweiHardwareEarback";
    private Context mContext;
    private HwAudioKit mHwAudioKit = null;
    private HwAudioKaraokeFeatureKit mHwAudioKaraokeFeatureKit = null;
    private boolean mInited = false;
    private boolean mEarbackEnabled = false;
    private int latency = 0;
    private int volume = 0;

    public HuaweiHardwareEarback(Context context) {
        this.mContext = null;
        Logging.d(TAG, ">>ctor");
        this.mContext = context;
        initialize();
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void destroy() {
        Logging.d(TAG, ">>destroy");
        this.mHwAudioKaraokeFeatureKit.l();
        this.mHwAudioKit.m();
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int enableEarbackFeature(boolean z) {
        if (!this.mInited) {
            return -7;
        }
        Logging.d(TAG, ">>enableEarbackFeature " + z);
        if (!this.mHwAudioKaraokeFeatureKit.p()) {
            Logging.e(TAG, "karaoke not supported");
            return -1;
        }
        int iM = this.mHwAudioKaraokeFeatureKit.m(z);
        if (iM != 0) {
            Logging.e(TAG, "enableKaraokeFeature failed ret " + iM);
            return -1;
        }
        this.mEarbackEnabled = z;
        if (z) {
            this.latency = this.mHwAudioKaraokeFeatureKit.n();
            Logging.i(TAG, "latency " + this.latency);
        }
        return 0;
    }

    protected void finalize() throws Throwable {
        Logging.d(TAG, ">>finalize");
        destroy();
        super.finalize();
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void initialize() {
        if (this.mContext == null) {
            Logging.e(TAG, "mContext is null!");
            return;
        }
        Logging.d(TAG, ">>initialize");
        HwAudioKit hwAudioKit = new HwAudioKit(this.mContext, new c() { // from class: io.agora.rtc.audio.HuaweiHardwareEarback.1
            @Override // com.huawei.multimedia.audiokit.interfaces.c
            public void onResult(int i) {
                if (i == 0) {
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: HwAudioKit init success");
                    return;
                }
                if (i == 2) {
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: audio kit not installed");
                    return;
                }
                if (i == 1000) {
                    HuaweiHardwareEarback.this.mInited = true;
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: HwAudioKaraokeFeatureKit init success ");
                } else {
                    Logging.e(HuaweiHardwareEarback.TAG, "IAudioKitCallback: onResult error number " + i);
                }
            }
        });
        this.mHwAudioKit = hwAudioKit;
        hwAudioKit.n();
        this.mHwAudioKaraokeFeatureKit = (HwAudioKaraokeFeatureKit) this.mHwAudioKit.l(HwAudioKit.FeatureType.HWAUDIO_FEATURE_KARAOKE);
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public boolean isHardwareEarbackSupported() {
        if (!this.mInited) {
            return false;
        }
        Logging.d(TAG, ">>isHardwareEarbackSupported");
        boolean zP = this.mHwAudioKaraokeFeatureKit.p();
        Logging.d(TAG, "isSupported " + zP);
        return zP;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int setHardwareEarbackVolume(int i) {
        if (!this.mInited) {
            return -7;
        }
        Logging.d(TAG, ">>setHardwareEarbackVolume " + i);
        if (i < 0) {
            i = 0;
        } else if (i > 100) {
            i = 100;
        }
        int iS = this.mHwAudioKaraokeFeatureKit.s(HwAudioKaraokeFeatureKit.ParameName.CMD_SET_VOCAL_VOLUME_BASE, i);
        if (iS == 0) {
            this.volume = i;
            return 0;
        }
        Logging.e(TAG, "setParameter error number " + iS);
        return -1;
    }
}
