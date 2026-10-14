package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzpw implements zzqe {
    private final zzps zza;
    private final zzqv zzb;
    private final boolean zzc;
    private final zznz zzd;

    private zzpw(zzqv zzqvVar, zznz zznzVar, zzps zzpsVar) {
        this.zzb = zzqvVar;
        this.zzc = zznzVar.zzf(zzpsVar);
        this.zzd = zznzVar;
        this.zza = zzpsVar;
    }

    static zzpw zzc(zzqv zzqvVar, zznz zznzVar, zzps zzpsVar) {
        return new zzpw(zzqvVar, zznzVar, zzpsVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final int zza(Object obj) {
        zzqv zzqvVar = this.zzb;
        int iZzb = zzqvVar.zzb(zzqvVar.zzc(obj));
        return this.zzc ? iZzb + this.zzd.zzb(obj).zzb() : iZzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final int zzb(Object obj) {
        int iHashCode = this.zzb.zzc(obj).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zzb(obj).zza.hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final Object zze() {
        return this.zza.zzH().zzs();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzf(Object obj) {
        this.zzb.zzg(obj);
        this.zzd.zze(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzg(Object obj, Object obj2) {
        zzqg.zzF(this.zzb, obj, obj2);
        if (this.zzc) {
            zzqg.zzE(this.zzd, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bf A[EDGE_INSN: B:57:0x00bf->B:33:0x00bf BREAK  A[LOOP:1: B:18:0x0067->B:60:0x0067], SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzmx zzmxVar) throws IOException {
        zzon zzonVar = (zzon) obj;
        zzqw zzqwVarZze = zzonVar.zzc;
        if (zzqwVarZze == zzqw.zzc()) {
            zzqwVarZze = zzqw.zze();
            zzonVar.zzc = zzqwVarZze;
        }
        zzod zzodVarZzc = ((zzoj) obj).zzc();
        Object objZzd = null;
        while (i < i2) {
            int iZzj = zzmy.zzj(bArr, i, zzmxVar);
            int i3 = zzmxVar.zza;
            if (i3 == 11) {
                int i4 = 0;
                zznl zznlVar = null;
                while (iZzj < i2) {
                    iZzj = zzmy.zzj(bArr, iZzj, zzmxVar);
                    int i5 = zzmxVar.zza;
                    int i6 = i5 & 7;
                    int i7 = i5 >>> 3;
                    if (i7 == 2) {
                        if (i6 != 0) {
                            if (i5 != 12) {
                                break;
                                break;
                            }
                            iZzj = zzmy.zzn(i5, bArr, iZzj, i2, zzmxVar);
                        } else {
                            iZzj = zzmy.zzj(bArr, iZzj, zzmxVar);
                            i4 = zzmxVar.zza;
                            objZzd = this.zzd.zzd(zzmxVar.zzd, this.zza, i4);
                        }
                    } else {
                        if (i7 == 3) {
                            if (objZzd != null) {
                                zzol zzolVar = (zzol) objZzd;
                                iZzj = zzmy.zzd(zzqb.zza().zzb(zzolVar.zzc.getClass()), bArr, iZzj, i2, zzmxVar);
                                zzodVarZzc.zzj(zzolVar.zzd, zzmxVar.zzc);
                            } else if (i6 == 2) {
                                iZzj = zzmy.zza(bArr, iZzj, zzmxVar);
                                zznlVar = (zznl) zzmxVar.zzc;
                            }
                        }
                        if (i5 != 12) {
                            break;
                        } else {
                            iZzj = zzmy.zzn(i5, bArr, iZzj, i2, zzmxVar);
                        }
                    }
                }
                if (zznlVar != null) {
                    zzqwVarZze.zzh((i4 << 3) | 2, zznlVar);
                }
                i = iZzj;
            } else if ((i3 & 7) == 2) {
                Object objZzd2 = this.zzd.zzd(zzmxVar.zzd, this.zza, i3 >>> 3);
                if (objZzd2 != null) {
                    zzol zzolVar2 = (zzol) objZzd2;
                    i = zzmy.zzd(zzqb.zza().zzb(zzolVar2.zzc.getClass()), bArr, iZzj, i2, zzmxVar);
                    zzodVarZzc.zzj(zzolVar2.zzd, zzmxVar.zzc);
                } else {
                    i = zzmy.zzi(i3, bArr, iZzj, i2, zzqwVarZze, zzmxVar);
                }
                objZzd = objZzd2;
            } else {
                i = zzmy.zzn(i3, bArr, iZzj, i2, zzmxVar);
            }
        }
        if (i != i2) {
            throw zzov.zze();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final boolean zzi(Object obj, Object obj2) {
        if (!this.zzb.zzc(obj).equals(this.zzb.zzc(obj2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zzb(obj).equals(this.zzd.zzb(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final boolean zzj(Object obj) {
        return this.zzd.zzb(obj).zzl();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzm(Object obj, zznu zznuVar) throws IOException {
        Iterator itZzf = this.zzd.zzb(obj).zzf();
        if (!itZzf.hasNext()) {
            zzqv zzqvVar = this.zzb;
            zzqvVar.zzi(zzqvVar.zzc(obj), zznuVar);
        } else {
            zzoc zzocVar = (zzoc) ((Map.Entry) itZzf.next()).getKey();
            if (zzocVar.zzc() == zzrm.MESSAGE) {
                zzocVar.zze();
            }
            throw new IllegalStateException("Found invalid MessageSet item.");
        }
    }
}
