package com.google.android.gms.internal.mlkit_vision_face_bundled;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class zzow {
    public static final zzow zza;
    public static final zzow zzb;
    public static final zzow zzc;
    public static final zzow zzd;
    public static final zzow zze;
    public static final zzow zzf;
    public static final zzow zzg;
    public static final zzow zzh;
    public static final zzow zzi;
    public static final zzow zzj;
    private static final /* synthetic */ zzow[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzow zzowVar = new zzow("VOID", 0, Void.class, Void.class, null);
        zza = zzowVar;
        Class cls = Integer.TYPE;
        zzow zzowVar2 = new zzow("INT", 1, cls, Integer.class, 0);
        zzb = zzowVar2;
        zzow zzowVar3 = new zzow("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzowVar3;
        zzow zzowVar4 = new zzow("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(BitmapDescriptorFactory.HUE_RED));
        zzd = zzowVar4;
        zzow zzowVar5 = new zzow("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzowVar5;
        zzow zzowVar6 = new zzow("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzowVar6;
        zzow zzowVar7 = new zzow("STRING", 6, String.class, String.class, "");
        zzg = zzowVar7;
        zzow zzowVar8 = new zzow("BYTE_STRING", 7, zznl.class, zznl.class, zznl.zzb);
        zzh = zzowVar8;
        zzow zzowVar9 = new zzow("ENUM", 8, cls, Integer.class, null);
        zzi = zzowVar9;
        zzow zzowVar10 = new zzow("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzowVar10;
        zzk = new zzow[]{zzowVar, zzowVar2, zzowVar3, zzowVar4, zzowVar5, zzowVar6, zzowVar7, zzowVar8, zzowVar9, zzowVar10};
    }

    private zzow(String str, int i, Class cls, Class cls2, Object obj) {
        super(str, i);
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzow[] values() {
        return (zzow[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
