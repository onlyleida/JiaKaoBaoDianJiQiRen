package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributes f1540a;
    public int b;

    static class a implements AudioAttributesImpl.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AudioAttributes.Builder f1541a = new AudioAttributes.Builder();

        a() {
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public /* bridge */ /* synthetic */ AudioAttributesImpl.a a(int i) {
            b(i);
            return this;
        }

        public a b(int i) {
            this.f1541a.setLegacyStreamType(i);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.a
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi21(this.f1541a.build());
        }
    }

    public AudioAttributesImplApi21() {
        this.b = -1;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int a() {
        int i = this.b;
        return i != -1 ? i : AudioAttributesCompat.b(false, b(), c());
    }

    public int b() {
        return this.f1540a.getFlags();
    }

    public int c() {
        return this.f1540a.getUsage();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f1540a.equals(((AudioAttributesImplApi21) obj).f1540a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1540a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f1540a;
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
        this.b = -1;
        this.f1540a = audioAttributes;
        this.b = i;
    }
}
