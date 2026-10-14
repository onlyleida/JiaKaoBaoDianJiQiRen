package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesCompat implements androidx.versionedparcelable.c {
    private static final SparseIntArray b;
    static boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f1538a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AudioAttributesImpl.a f1539a;

        public a() {
            if (AudioAttributesCompat.c) {
                this.f1539a = new AudioAttributesImplBase.a();
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                this.f1539a = new AudioAttributesImplApi26.a();
            } else if (i >= 21) {
                this.f1539a = new AudioAttributesImplApi21.a();
            } else {
                this.f1539a = new AudioAttributesImplBase.a();
            }
        }

        public AudioAttributesCompat a() {
            return new AudioAttributesCompat(this.f1539a.build());
        }

        public a b(int i) {
            this.f1539a.a(i);
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        b = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    static int b(boolean z, int i, int i2) {
        if ((i & 1) == 1) {
            return z ? 1 : 7;
        }
        if ((i & 4) == 4) {
            return z ? 0 : 6;
        }
        switch (i2) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                return 0;
            case 3:
                return z ? 0 : 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                if (!z) {
                    return 3;
                }
                throw new IllegalArgumentException("Unknown usage value " + i2 + " in audio attributes");
        }
    }

    static String c(int i) {
        switch (i) {
            case 0:
                return "USAGE_UNKNOWN";
            case 1:
                return "USAGE_MEDIA";
            case 2:
                return "USAGE_VOICE_COMMUNICATION";
            case 3:
                return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
            case 4:
                return "USAGE_ALARM";
            case 5:
                return "USAGE_NOTIFICATION";
            case 6:
                return "USAGE_NOTIFICATION_RINGTONE";
            case 7:
                return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
            case 8:
                return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
            case 9:
                return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
            case 10:
                return "USAGE_NOTIFICATION_EVENT";
            case 11:
                return "USAGE_ASSISTANCE_ACCESSIBILITY";
            case 12:
                return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
            case 13:
                return "USAGE_ASSISTANCE_SONIFICATION";
            case 14:
                return "USAGE_GAME";
            case 15:
            default:
                return "unknown usage " + i;
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    public static AudioAttributesCompat d(Object obj) {
        if (c) {
            return null;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
        }
        if (i >= 21) {
            return new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
        }
        return null;
    }

    public int a() {
        return this.f1538a.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f1538a;
        if (audioAttributesImpl == null) {
            return audioAttributesCompat.f1538a == null;
        }
        return audioAttributesImpl.equals(audioAttributesCompat.f1538a);
    }

    public int hashCode() {
        return this.f1538a.hashCode();
    }

    public String toString() {
        return this.f1538a.toString();
    }

    AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f1538a = audioAttributesImpl;
    }
}
