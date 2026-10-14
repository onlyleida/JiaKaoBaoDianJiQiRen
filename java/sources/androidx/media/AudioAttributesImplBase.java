package androidx.media;

import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1542a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1543d;

    static class a implements AudioAttributesImpl.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1544a = 0;
        private int b = 0;
        private int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1545d = -1;

        a() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private a b(int i) {
            switch (i) {
                case 0:
                    this.b = 1;
                    break;
                case 1:
                    this.b = 4;
                    break;
                case 2:
                    this.b = 4;
                    break;
                case 3:
                    this.b = 2;
                    break;
                case 4:
                    this.b = 4;
                    break;
                case 5:
                    this.b = 4;
                    break;
                case 6:
                    this.b = 1;
                    this.c |= 4;
                    break;
                case 7:
                    this.c = 1 | this.c;
                    this.b = 4;
                    break;
                case 8:
                    this.b = 4;
                    break;
                case 9:
                    this.b = 4;
                    break;
                case 10:
                    this.b = 1;
                    break;
                default:
                    Log.e("AudioAttributesCompat", "Invalid stream type " + i + " for AudioAttributesCompat");
                    break;
            }
            this.f1544a = AudioAttributesImplBase.e(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public /* bridge */ /* synthetic */ AudioAttributesImpl.a a(int i) {
            c(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public AudioAttributesImpl build() {
            return new AudioAttributesImplBase(this.b, this.c, this.f1544a, this.f1545d);
        }

        public a c(int i) {
            if (i == 10) {
                throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
            }
            this.f1545d = i;
            b(i);
            return this;
        }
    }

    public AudioAttributesImplBase() {
        this.f1542a = 0;
        this.b = 0;
        this.c = 0;
        this.f1543d = -1;
    }

    static int e(int i) {
        switch (i) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    @Override // androidx.media.AudioAttributesImpl
    public int a() {
        int i = this.f1543d;
        return i != -1 ? i : AudioAttributesCompat.b(false, this.c, this.f1542a);
    }

    public int b() {
        return this.b;
    }

    public int c() {
        int i = this.c;
        int iA = a();
        if (iA == 6) {
            i |= 4;
        } else if (iA == 7) {
            i |= 1;
        }
        return i & 273;
    }

    public int d() {
        return this.f1542a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.b == audioAttributesImplBase.b() && this.c == audioAttributesImplBase.c() && this.f1542a == audioAttributesImplBase.d() && this.f1543d == audioAttributesImplBase.f1543d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.f1542a), Integer.valueOf(this.f1543d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f1543d != -1) {
            sb.append(" stream=");
            sb.append(this.f1543d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.c(this.f1542a));
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.c).toUpperCase());
        return sb.toString();
    }

    AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.f1542a = 0;
        this.b = 0;
        this.c = 0;
        this.f1543d = -1;
        this.b = i;
        this.c = i2;
        this.f1542a = i3;
        this.f1543d = i4;
    }
}
