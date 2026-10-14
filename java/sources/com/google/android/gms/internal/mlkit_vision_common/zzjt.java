package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import androidx.core.os.c;
import androidx.core.os.d;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzjt {
    private static zzp zza;
    private static final zzr zzb = zzr.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    private final String zzc;
    private final String zzd;
    private final zzjs zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;
    private final Map zzk = new HashMap();
    private final Map zzl = new HashMap();

    public zzjt(Context context, final SharedPrefManager sharedPrefManager, zzjs zzjsVar, String str) {
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzjsVar;
        zzkg.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzjr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        sharedPrefManager.getClass();
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzjq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return sharedPrefManager.getMlSdkInstanceId();
            }
        });
        zzr zzrVar = zzb;
        this.zzj = zzrVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzrVar.get(str)) : -1;
    }

    private static synchronized zzp zzd() {
        zzp zzpVar = zza;
        if (zzpVar != null) {
            return zzpVar;
        }
        d dVarA = c.a(Resources.getSystem().getConfiguration());
        zzm zzmVar = new zzm();
        for (int i = 0; i < dVarA.d(); i++) {
            zzmVar.zzb(CommonUtils.languageTagFromLocale(dVarA.c(i)));
        }
        zzp zzpVarZzc = zzmVar.zzc();
        zza = zzpVarZzc;
        return zzpVarZzc;
    }

    final /* synthetic */ String zza() throws Exception {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    final /* synthetic */ void zzb(zzju zzjuVar, zzgz zzgzVar, String str) {
        zzjuVar.zzd(zzgzVar);
        String strZza = zzjuVar.zza();
        zzil zzilVar = new zzil();
        zzilVar.zzb(this.zzc);
        zzilVar.zzc(this.zzd);
        zzilVar.zzh(zzd());
        zzilVar.zzg(Boolean.TRUE);
        zzilVar.zzl(strZza);
        zzilVar.zzj(str);
        zzilVar.zzi(this.zzh.isSuccessful() ? (String) this.zzh.getResult() : this.zzf.getMlSdkInstanceId());
        zzilVar.zzd(10);
        zzilVar.zzk(Integer.valueOf(this.zzj));
        zzjuVar.zze(zzilVar);
        this.zze.zza(zzjuVar);
    }

    public final void zzc(zzkd zzkdVar, final zzgz zzgzVar) {
        zzgn zzgnVar;
        zzgs zzgsVar;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzk.get(zzgzVar) != null && jElapsedRealtime - ((Long) this.zzk.get(zzgzVar)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            return;
        }
        this.zzk.put(zzgzVar, Long.valueOf(jElapsedRealtime));
        int i = zzkdVar.zza;
        int i2 = zzkdVar.zzb;
        int i3 = zzkdVar.zzc;
        int i4 = zzkdVar.zzd;
        int i5 = zzkdVar.zze;
        long j = zzkdVar.zzf;
        int i6 = zzkdVar.zzg;
        zzgr zzgrVar = new zzgr();
        if (i == -1) {
            zzgnVar = zzgn.BITMAP;
        } else if (i == 35) {
            zzgnVar = zzgn.YUV_420_888;
        } else if (i == 842094169) {
            zzgnVar = zzgn.YV12;
        } else if (i != 16) {
            zzgnVar = i != 17 ? zzgn.UNKNOWN_FORMAT : zzgn.NV21;
        } else {
            zzgnVar = zzgn.NV16;
        }
        zzgrVar.zzd(zzgnVar);
        if (i2 == 1) {
            zzgsVar = zzgs.BITMAP;
        } else if (i2 == 2) {
            zzgsVar = zzgs.BYTEARRAY;
        } else if (i2 != 3) {
            zzgsVar = i2 != 4 ? zzgs.ANDROID_MEDIA_IMAGE : zzgs.FILEPATH;
        } else {
            zzgsVar = zzgs.BYTEBUFFER;
        }
        zzgrVar.zzf(zzgsVar);
        zzgrVar.zzc(Integer.valueOf(i3));
        zzgrVar.zze(Integer.valueOf(i4));
        zzgrVar.zzg(Integer.valueOf(i5));
        zzgrVar.zzb(Long.valueOf(j));
        zzgrVar.zzh(Integer.valueOf(i6));
        zzgu zzguVarZzj = zzgrVar.zzj();
        zzha zzhaVar = new zzha();
        zzhaVar.zzd(zzguVarZzj);
        final zzju zzjuVarZzc = zzju.zzc(zzhaVar);
        final String version = this.zzg.isSuccessful() ? (String) this.zzg.getResult() : LibraryVersion.getInstance().getVersion(this.zzi);
        final byte[] bArr = null;
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable(zzjuVarZzc, zzgzVar, version, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_common.zzjp
            public final /* synthetic */ zzgz zzb;
            public final /* synthetic */ String zzc;
            public final /* synthetic */ zzju zzd;

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzd, this.zzb, this.zzc);
            }
        });
    }
}
