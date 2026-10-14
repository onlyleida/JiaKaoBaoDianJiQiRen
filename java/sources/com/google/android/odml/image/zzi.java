package com.google.android.odml.image;

import android.media.Image;
import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
final class zzi implements zzg {
    private final Image zza;
    private final ImageProperties zzb;

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    public zzi(Image image) {
        int i;
        this.zza = image;
        zzb zzbVar = new zzb();
        zzbVar.zzb(3);
        int format = image.getFormat();
        if (Build.VERSION.SDK_INT < 23) {
            if (format != 35) {
                i = 7;
            } else if (format != 256) {
                i = 0;
            } else {
                i = 9;
            }
        } else if (format == 42) {
            i = 1;
        } else if (format == 41) {
            i = 2;
        } else if (format != 35) {
            i = 7;
        } else if (format != 256) {
            i = 0;
        } else {
            i = 9;
        }
        zzbVar.zza(i);
        this.zzb = zzbVar.zzc();
    }

    public final Image zza() {
        return this.zza;
    }

    @Override // com.google.android.odml.image.zzg
    public final ImageProperties zzb() {
        return this.zzb;
    }

    @Override // com.google.android.odml.image.zzg
    public final void zzc() {
        this.zza.close();
    }
}
