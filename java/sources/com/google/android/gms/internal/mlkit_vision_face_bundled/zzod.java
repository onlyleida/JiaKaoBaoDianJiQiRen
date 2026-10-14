package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzod {
    private static final zzod zzb = new zzod(true);
    final zzqr zza = new zzqh(16);
    private boolean zzc;

    private zzod() {
    }

    public static int zza(zzoc zzocVar, Object obj) {
        zzrl zzrlVarZzb = zzocVar.zzb();
        zzocVar.zza();
        zzocVar.zze();
        zzocVar.zzd();
        int i = 0;
        for (Object obj2 : (List) obj) {
            int iZzC = zznt.zzC(202056002);
            if (zzrlVarZzb == zzrl.zzj) {
                zzot.zzi((zzps) obj2);
                iZzC += iZzC;
            }
            zzrm zzrmVar = zzrm.INT;
            int iZzE = 4;
            switch (zzrlVarZzb.ordinal()) {
                case 0:
                    ((Double) obj2).doubleValue();
                    break;
                case 1:
                    ((Float) obj2).floatValue();
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 2:
                    iZzE = zznt.zzE(((Long) obj2).longValue());
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 3:
                    iZzE = zznt.zzE(((Long) obj2).longValue());
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 4:
                    iZzE = zznt.zzx(((Integer) obj2).intValue());
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 5:
                    ((Long) obj2).longValue();
                    break;
                case 6:
                    ((Integer) obj2).intValue();
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 7:
                    ((Boolean) obj2).booleanValue();
                    iZzE = 1;
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 8:
                    if (obj2 instanceof zznl) {
                        iZzE = zznt.zzu((zznl) obj2);
                        continue;
                    } else {
                        iZzE = zznt.zzB((String) obj2);
                    }
                    i += iZzC + iZzE;
                    break;
                case 9:
                    iZzE = zznt.zzw((zzps) obj2);
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 10:
                    if (obj2 instanceof zzox) {
                        iZzE = zznt.zzy((zzox) obj2);
                        continue;
                    } else {
                        iZzE = zznt.zzz((zzps) obj2);
                    }
                    i += iZzC + iZzE;
                    break;
                case 11:
                    if (obj2 instanceof zznl) {
                        iZzE = zznt.zzu((zznl) obj2);
                        continue;
                    } else {
                        iZzE = zznt.zzt((byte[]) obj2);
                    }
                    i += iZzC + iZzE;
                    break;
                case 12:
                    iZzE = zznt.zzD(((Integer) obj2).intValue());
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 13:
                    if (obj2 instanceof zzop) {
                        iZzE = zznt.zzx(((zzop) obj2).zza());
                        continue;
                    } else {
                        iZzE = zznt.zzx(((Integer) obj2).intValue());
                    }
                    i += iZzC + iZzE;
                    break;
                case 14:
                    ((Integer) obj2).intValue();
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 15:
                    ((Long) obj2).longValue();
                    break;
                case 16:
                    int iIntValue = ((Integer) obj2).intValue();
                    iZzE = zznt.zzD((iIntValue >> 31) ^ (iIntValue + iIntValue));
                    continue;
                    i += iZzC + iZzE;
                    break;
                case 17:
                    long jLongValue = ((Long) obj2).longValue();
                    iZzE = zznt.zzE((jLongValue >> 63) ^ (jLongValue + jLongValue));
                    continue;
                    i += iZzC + iZzE;
                    break;
                default:
                    throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
            }
            iZzE = 8;
            i += iZzC + iZzE;
        }
        return i;
    }

    public static zzod zzd() {
        return zzb;
    }

    private final void zzm(Map.Entry entry) {
        zzoc zzocVar = (zzoc) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzox) {
            throw null;
        }
        zzocVar.zze();
        Object objZze = zze(zzocVar);
        if (objZze == null) {
            objZze = new ArrayList();
        }
        for (Object objZzc : (List) value) {
            List list = (List) objZze;
            if (objZzc instanceof zzpx) {
                objZzc = ((zzpx) objZzc).zzc();
            } else if (objZzc instanceof byte[]) {
                byte[] bArr = (byte[]) objZzc;
                int length = bArr.length;
                Object obj = new byte[length];
                System.arraycopy(bArr, 0, obj, 0, length);
                objZzc = obj;
            }
            list.add(objZzc);
        }
        this.zza.put(zzocVar, objZze);
    }

    private static boolean zzn(Map.Entry entry) {
        zzoc zzocVar = (zzoc) entry.getKey();
        if (zzocVar.zzc() != zzrm.MESSAGE) {
            return true;
        }
        zzocVar.zze();
        for (Object obj : (List) entry.getValue()) {
            if (obj instanceof zzpt) {
                if (!((zzpt) obj).zzv()) {
                    return false;
                }
            } else if (!(obj instanceof zzox)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static final int zzo(Map.Entry entry) {
        zzoc zzocVar = (zzoc) entry.getKey();
        Object value = entry.getValue();
        if (zzocVar.zzc() == zzrm.MESSAGE) {
            zzocVar.zze();
        }
        return zza(zzocVar, value);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private static final void zzp(zzoc zzocVar, Object obj) {
        boolean z;
        zzocVar.zzb();
        zzot.zze(obj);
        zzrl zzrlVar = zzrl.zza;
        zzrm zzrmVar = zzrm.INT;
        switch (r0.zza()) {
            case INT:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case LONG:
                z = obj instanceof Long;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case FLOAT:
                z = obj instanceof Float;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case DOUBLE:
                z = obj instanceof Double;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case BOOLEAN:
                z = obj instanceof Boolean;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case STRING:
                z = obj instanceof String;
                if (z) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof zznl) || (obj instanceof byte[])) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof zzop)) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof zzps) || (obj instanceof zzox)) {
                    return;
                }
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
            default:
                zzocVar.zza();
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 202056002, zzocVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzod) {
            return this.zza.equals(((zzod) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzb() {
        int iZzo = 0;
        for (int i = 0; i < this.zza.zzb(); i++) {
            iZzo += zzo(this.zza.zzg(i));
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            iZzo += zzo((Map.Entry) it.next());
        }
        return iZzo;
    }

    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzod clone() {
        zzod zzodVar = new zzod();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry entryZzg = this.zza.zzg(i);
            zzodVar.zzj((zzoc) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzodVar.zzj((zzoc) entry.getKey(), entry.getValue());
        }
        return zzodVar;
    }

    public final Object zze(zzoc zzocVar) {
        Object obj = this.zza.get(zzocVar);
        if (!(obj instanceof zzox)) {
            return obj;
        }
        throw null;
    }

    public final Iterator zzf() {
        return this.zza.entrySet().iterator();
    }

    public final void zzg(zzoc zzocVar, Object obj) {
        List arrayList;
        zzp(zzocVar, obj);
        Object objZze = zze(zzocVar);
        if (objZze == null) {
            arrayList = new ArrayList();
            this.zza.put(zzocVar, arrayList);
        } else {
            arrayList = (List) objZze;
        }
        arrayList.add(obj);
    }

    public final void zzh() {
        if (this.zzc) {
            return;
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzi(zzod zzodVar) {
        for (int i = 0; i < zzodVar.zza.zzb(); i++) {
            zzm(zzodVar.zza.zzg(i));
        }
        Iterator it = zzodVar.zza.zzc().iterator();
        while (it.hasNext()) {
            zzm((Map.Entry) it.next());
        }
    }

    public final void zzj(zzoc zzocVar, Object obj) {
        zzocVar.zze();
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll((List) obj);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zzp(zzocVar, arrayList.get(i));
        }
        this.zza.put(zzocVar, arrayList);
    }

    public final boolean zzk() {
        return this.zzc;
    }

    public final boolean zzl() {
        for (int i = 0; i < this.zza.zzb(); i++) {
            if (!zzn(this.zza.zzg(i))) {
                return false;
            }
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            if (!zzn((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private zzod(boolean z) {
        zzh();
        zzh();
    }
}
