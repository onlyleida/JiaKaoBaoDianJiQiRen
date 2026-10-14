package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f1542a = versionedParcel.p(audioAttributesImplBase.f1542a, 1);
        audioAttributesImplBase.b = versionedParcel.p(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.c = versionedParcel.p(audioAttributesImplBase.c, 3);
        audioAttributesImplBase.f1543d = versionedParcel.p(audioAttributesImplBase.f1543d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.F(audioAttributesImplBase.f1542a, 1);
        versionedParcel.F(audioAttributesImplBase.b, 2);
        versionedParcel.F(audioAttributesImplBase.c, 3);
        versionedParcel.F(audioAttributesImplBase.f1543d, 4);
    }
}
