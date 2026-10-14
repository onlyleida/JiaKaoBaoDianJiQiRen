package com.google.android.gms.internal.mlkit_vision_face_bundled;

import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzot {
    static final Charset zza = Charset.forName(C.ASCII_NAME);
    static final Charset zzb = Charset.forName("UTF-8");
    static final Charset zzc = Charset.forName(C.ISO88591_NAME);
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zznp zzf;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        int i = zznp.zza;
        zznn zznnVar = new zznn(bArr, 0, 0, false, null);
        try {
            zznnVar.zza(0);
            zzf = zznnVar;
        } catch (zzov e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzb(byte[] bArr) {
        int length = bArr.length;
        int iZzd = zzd(length, bArr, 0, length);
        if (iZzd == 0) {
            return 1;
        }
        return iZzd;
    }

    public static int zzc(long j) {
        return (int) (j ^ (j >>> 32));
    }

    static int zzd(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    static Object zze(Object obj) {
        Objects.requireNonNull(obj);
        return obj;
    }

    static Object zzf(Object obj, String str) {
        Objects.requireNonNull(obj, str);
        return obj;
    }

    static Object zzg(Object obj, Object obj2) {
        return ((zzps) obj).zzI().zzn((zzps) obj2).zzs();
    }

    public static String zzh(byte[] bArr) {
        return new String(bArr, zzb);
    }

    static boolean zzi(zzps zzpsVar) {
        if (!(zzpsVar instanceof zzmu)) {
            return false;
        }
        throw null;
    }

    public static boolean zzj(byte[] bArr) {
        return zzrk.zze(bArr);
    }
}
