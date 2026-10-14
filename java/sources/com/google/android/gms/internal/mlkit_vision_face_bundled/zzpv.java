package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzpv<T> implements zzqe<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzrf.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzps zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzpg zzm;
    private final zzqv zzn;
    private final zznz zzo;
    private final zzpy zzp;
    private final zzpn zzq;

    private zzpv(int[] iArr, Object[] objArr, int i, int i2, zzps zzpsVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzpy zzpyVar, zzpg zzpgVar, zzqv zzqvVar, zznz zznzVar, zzpn zzpnVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zznzVar != null && zznzVar.zzf(zzpsVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzpyVar;
        this.zzm = zzpgVar;
        this.zzn = zzqvVar;
        this.zzo = zznzVar;
        this.zzg = zzpsVar;
        this.zzq = zzpnVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzrf.zzf(obj, j)).longValue();
    }

    private final zzor zzD(int i) {
        int i2 = i / 3;
        return (zzor) this.zzd[i2 + i2 + 1];
    }

    private final zzqe zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzqe zzqeVar = (zzqe) this.zzd[i3];
        if (zzqeVar != null) {
            return zzqeVar;
        }
        zzqe zzqeVarZzb = zzqb.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzqeVarZzb;
        return zzqeVarZzb;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        long jZzB = zzB(i) & 1048575;
        if (zzM(obj2, i)) {
            Object objZzf = zzrf.zzf(obj, jZzB);
            Object objZzf2 = zzrf.zzf(obj2, jZzB);
            if (objZzf != null && objZzf2 != null) {
                zzrf.zzs(obj, jZzB, zzot.zzg(objZzf, objZzf2));
                zzJ(obj, i);
            } else if (objZzf2 != null) {
                zzrf.zzs(obj, jZzB, objZzf2);
                zzJ(obj, i);
            }
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int iZzB = zzB(i);
        int i2 = this.zzc[i];
        long j = iZzB & 1048575;
        if (zzP(obj2, i2, i)) {
            Object objZzf = zzP(obj, i2, i) ? zzrf.zzf(obj, j) : null;
            Object objZzf2 = zzrf.zzf(obj2, j);
            if (objZzf != null && objZzf2 != null) {
                zzrf.zzs(obj, j, zzot.zzg(objZzf, objZzf2));
                zzK(obj, i2, i);
            } else if (objZzf2 != null) {
                zzrf.zzs(obj, j, objZzf2);
                zzK(obj, i2, i);
            }
        }
    }

    private final void zzJ(Object obj, int i) {
        int iZzy = zzy(i);
        long j = 1048575 & iZzy;
        if (j == 1048575) {
            return;
        }
        zzrf.zzq(obj, j, (1 << (iZzy >>> 20)) | zzrf.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzrf.zzq(obj, zzy(i2) & 1048575, i);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzM(obj, i) == zzM(obj2, i);
    }

    private final boolean zzM(Object obj, int i) {
        int iZzy = zzy(i);
        long j = iZzy & 1048575;
        if (j != 1048575) {
            return (zzrf.zzc(obj, j) & (1 << (iZzy >>> 20))) != 0;
        }
        int iZzB = zzB(i);
        long j2 = iZzB & 1048575;
        switch (zzA(iZzB)) {
            case 0:
                return Double.doubleToRawLongBits(zzrf.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzrf.zzb(obj, j2)) != 0;
            case 2:
                return zzrf.zzd(obj, j2) != 0;
            case 3:
                return zzrf.zzd(obj, j2) != 0;
            case 4:
                return zzrf.zzc(obj, j2) != 0;
            case 5:
                return zzrf.zzd(obj, j2) != 0;
            case 6:
                return zzrf.zzc(obj, j2) != 0;
            case 7:
                return zzrf.zzw(obj, j2);
            case 8:
                Object objZzf = zzrf.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zznl) {
                    return !zznl.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzrf.zzf(obj, j2) != null;
            case 10:
                return !zznl.zzb.equals(zzrf.zzf(obj, j2));
            case 11:
                return zzrf.zzc(obj, j2) != 0;
            case 12:
                return zzrf.zzc(obj, j2) != 0;
            case 13:
                return zzrf.zzc(obj, j2) != 0;
            case 14:
                return zzrf.zzd(obj, j2) != 0;
            case 15:
                return zzrf.zzc(obj, j2) != 0;
            case 16:
                return zzrf.zzd(obj, j2) != 0;
            case 17:
                return zzrf.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzN(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzM(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzO(Object obj, int i, zzqe zzqeVar) {
        return zzqeVar.zzj(zzrf.zzf(obj, i & 1048575));
    }

    private final boolean zzP(Object obj, int i, int i2) {
        return zzrf.zzc(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private static boolean zzQ(Object obj, long j) {
        return ((Boolean) zzrf.zzf(obj, j)).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:101:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:102:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:103:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:104:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:105:0x0312  */
    /* JADX WARN: Code duplicated, block: B:106:0x0321  */
    /* JADX WARN: Code duplicated, block: B:107:0x0331  */
    /* JADX WARN: Code duplicated, block: B:108:0x0341  */
    /* JADX WARN: Code duplicated, block: B:109:0x0351  */
    /* JADX WARN: Code duplicated, block: B:110:0x0361  */
    /* JADX WARN: Code duplicated, block: B:111:0x0371  */
    /* JADX WARN: Code duplicated, block: B:112:0x0381  */
    /* JADX WARN: Code duplicated, block: B:113:0x0391  */
    /* JADX WARN: Code duplicated, block: B:114:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:116:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:117:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:119:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:120:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:122:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:123:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:125:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:126:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:128:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:129:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:131:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:132:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:134:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:135:0x0400  */
    /* JADX WARN: Code duplicated, block: B:137:0x0404  */
    /* JADX WARN: Code duplicated, block: B:138:0x040f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0413  */
    /* JADX WARN: Code duplicated, block: B:141:0x0420  */
    /* JADX WARN: Code duplicated, block: B:143:0x0424  */
    /* JADX WARN: Code duplicated, block: B:144:0x042c  */
    /* JADX WARN: Code duplicated, block: B:146:0x0430  */
    /* JADX WARN: Code duplicated, block: B:147:0x0438  */
    /* JADX WARN: Code duplicated, block: B:149:0x043c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0444  */
    /* JADX WARN: Code duplicated, block: B:152:0x0448  */
    /* JADX WARN: Code duplicated, block: B:153:0x0450  */
    /* JADX WARN: Code duplicated, block: B:155:0x0454  */
    /* JADX WARN: Code duplicated, block: B:156:0x045c  */
    /* JADX WARN: Code duplicated, block: B:158:0x0460  */
    /* JADX WARN: Code duplicated, block: B:159:0x0468  */
    /* JADX WARN: Code duplicated, block: B:161:0x046c  */
    /* JADX WARN: Code duplicated, block: B:162:0x0474  */
    /* JADX WARN: Code duplicated, block: B:164:0x0478  */
    /* JADX WARN: Code duplicated, block: B:165:0x0480  */
    /* JADX WARN: Code duplicated, block: B:167:0x0484  */
    /* JADX WARN: Code duplicated, block: B:179:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x048b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0084  */
    /* JADX WARN: Code duplicated, block: B:29:0x008a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0096  */
    /* JADX WARN: Code duplicated, block: B:32:0x009c  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:53:0x0100  */
    /* JADX WARN: Code duplicated, block: B:54:0x010d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0113  */
    /* JADX WARN: Code duplicated, block: B:57:0x011c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0122  */
    /* JADX WARN: Code duplicated, block: B:60:0x012b  */
    /* JADX WARN: Code duplicated, block: B:62:0x0131  */
    /* JADX WARN: Code duplicated, block: B:63:0x013a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0140  */
    /* JADX WARN: Code duplicated, block: B:66:0x0149  */
    /* JADX WARN: Code duplicated, block: B:68:0x014f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0158  */
    /* JADX WARN: Code duplicated, block: B:71:0x015e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0167  */
    /* JADX WARN: Code duplicated, block: B:74:0x016d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0176  */
    /* JADX WARN: Code duplicated, block: B:77:0x017c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0185  */
    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    /* JADX WARN: Code duplicated, block: B:80:0x018b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0194  */
    /* JADX WARN: Code duplicated, block: B:82:0x019d  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:84:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:86:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:88:0x0200  */
    /* JADX WARN: Code duplicated, block: B:89:0x0210  */
    /* JADX WARN: Code duplicated, block: B:90:0x0220  */
    /* JADX WARN: Code duplicated, block: B:91:0x0230  */
    /* JADX WARN: Code duplicated, block: B:92:0x0240  */
    /* JADX WARN: Code duplicated, block: B:93:0x0250  */
    /* JADX WARN: Code duplicated, block: B:94:0x0260  */
    /* JADX WARN: Code duplicated, block: B:95:0x0270  */
    /* JADX WARN: Code duplicated, block: B:96:0x0280  */
    /* JADX WARN: Code duplicated, block: B:97:0x0290  */
    /* JADX WARN: Code duplicated, block: B:98:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:99:0x02b0  */
    private final void zzR(Object obj, zznu zznuVar) throws IOException {
        Iterator itZzf;
        Map.Entry entry;
        int i;
        long j;
        if (this.zzh) {
            zzod zzodVarZzb = this.zzo.zzb(obj);
            if (zzodVarZzb.zza.isEmpty()) {
                itZzf = null;
                entry = null;
            } else {
                itZzf = zzodVarZzb.zzf();
                entry = (Map.Entry) itZzf.next();
            }
        } else {
            itZzf = null;
            entry = null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iZzB = zzB(i4);
            int[] iArr = this.zzc;
            int i5 = iArr[i4];
            int iZzA = zzA(iZzB);
            if (iZzA <= 17) {
                int i6 = iArr[i4 + 2];
                int i7 = i6 & 1048575;
                if (i7 != i2) {
                    i3 = unsafe.getInt(obj, i7);
                    i2 = i7;
                }
                i = 1 << (i6 >>> 20);
            } else {
                i = 0;
            }
            while (entry != null) {
                this.zzo.zza(entry);
                if (i5 >= 202056002) {
                    this.zzo.zzg(zznuVar, entry);
                    entry = itZzf.hasNext() ? (Map.Entry) itZzf.next() : null;
                } else {
                    j = iZzB & 1048575;
                    switch (iZzA) {
                        case 0:
                            if ((i & i3) != 0) {
                                zznuVar.zzf(i5, zzrf.zza(obj, j));
                                continue;
                                continue;
                            }
                            break;
                        case 1:
                            if ((i & i3) != 0) {
                                zznuVar.zzo(i5, zzrf.zzb(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 2:
                            if ((i & i3) != 0) {
                                zznuVar.zzt(i5, unsafe.getLong(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 3:
                            if ((i & i3) != 0) {
                                zznuVar.zzK(i5, unsafe.getLong(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 4:
                            if ((i & i3) != 0) {
                                zznuVar.zzr(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 5:
                            if ((i & i3) != 0) {
                                zznuVar.zzm(i5, unsafe.getLong(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 6:
                            if ((i & i3) != 0) {
                                zznuVar.zzk(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 7:
                            if ((i & i3) != 0) {
                                zznuVar.zzb(i5, zzrf.zzw(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 8:
                            if ((i & i3) != 0) {
                                zzT(i5, unsafe.getObject(obj, j), zznuVar);
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 9:
                            if ((i & i3) != 0) {
                                zznuVar.zzv(i5, unsafe.getObject(obj, j), zzE(i4));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 10:
                            if ((i & i3) != 0) {
                                zznuVar.zzd(i5, (zznl) unsafe.getObject(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 11:
                            if ((i & i3) != 0) {
                                zznuVar.zzI(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 12:
                            if ((i & i3) != 0) {
                                zznuVar.zzi(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 13:
                            if ((i & i3) != 0) {
                                zznuVar.zzx(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 14:
                            if ((i & i3) != 0) {
                                zznuVar.zzz(i5, unsafe.getLong(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 15:
                            if ((i & i3) != 0) {
                                zznuVar.zzB(i5, unsafe.getInt(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 16:
                            if ((i & i3) != 0) {
                                zznuVar.zzD(i5, unsafe.getLong(obj, j));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 17:
                            if ((i & i3) != 0) {
                                zznuVar.zzq(i5, unsafe.getObject(obj, j), zzE(i4));
                            } else {
                                continue;
                                continue;
                            }
                            break;
                        case 18:
                            zzqg.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 19:
                            zzqg.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 20:
                            zzqg.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 21:
                            zzqg.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 22:
                            zzqg.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 23:
                            zzqg.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 24:
                            zzqg.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 25:
                            zzqg.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 26:
                            zzqg.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar);
                            break;
                        case 27:
                            zzqg.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, zzE(i4));
                            break;
                        case 28:
                            zzqg.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar);
                            break;
                        case 29:
                            zzqg.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 30:
                            zzqg.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 31:
                            zzqg.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 32:
                            zzqg.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 33:
                            zzqg.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 34:
                            zzqg.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                            break;
                        case 35:
                            zzqg.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 36:
                            zzqg.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 37:
                            zzqg.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 38:
                            zzqg.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 39:
                            zzqg.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 40:
                            zzqg.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 41:
                            zzqg.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 42:
                            zzqg.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 43:
                            zzqg.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 44:
                            zzqg.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 45:
                            zzqg.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 46:
                            zzqg.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 47:
                            zzqg.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 48:
                            zzqg.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                            break;
                        case 49:
                            zzqg.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, zzE(i4));
                            break;
                        case 50:
                            zzS(zznuVar, i5, unsafe.getObject(obj, j), i4);
                            break;
                        case 51:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzf(i5, zzn(obj, j));
                            }
                            break;
                        case 52:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzo(i5, zzo(obj, j));
                            }
                            break;
                        case 53:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzt(i5, zzC(obj, j));
                            }
                            break;
                        case 54:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzK(i5, zzC(obj, j));
                            }
                            break;
                        case 55:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzr(i5, zzr(obj, j));
                            }
                            break;
                        case 56:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzm(i5, zzC(obj, j));
                            }
                            break;
                        case 57:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzk(i5, zzr(obj, j));
                            }
                            break;
                        case 58:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzb(i5, zzQ(obj, j));
                            }
                            break;
                        case 59:
                            if (zzP(obj, i5, i4)) {
                                zzT(i5, unsafe.getObject(obj, j), zznuVar);
                            }
                            break;
                        case 60:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzv(i5, unsafe.getObject(obj, j), zzE(i4));
                            }
                            break;
                        case 61:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzd(i5, (zznl) unsafe.getObject(obj, j));
                            }
                            break;
                        case 62:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzI(i5, zzr(obj, j));
                            }
                            break;
                        case 63:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzi(i5, zzr(obj, j));
                            }
                            break;
                        case 64:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzx(i5, zzr(obj, j));
                            }
                            break;
                        case 65:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzz(i5, zzC(obj, j));
                            }
                            break;
                        case 66:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzB(i5, zzr(obj, j));
                            }
                            break;
                        case 67:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzD(i5, zzC(obj, j));
                            }
                            break;
                        case 68:
                            if (zzP(obj, i5, i4)) {
                                zznuVar.zzq(i5, unsafe.getObject(obj, j), zzE(i4));
                            }
                            break;
                    }
                }
            }
            j = iZzB & 1048575;
            switch (iZzA) {
                case 0:
                    if ((i & i3) != 0) {
                        zznuVar.zzf(i5, zzrf.zza(obj, j));
                        continue;
                        continue;
                    }
                    break;
                case 1:
                    if ((i & i3) != 0) {
                        zznuVar.zzo(i5, zzrf.zzb(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 2:
                    if ((i & i3) != 0) {
                        zznuVar.zzt(i5, unsafe.getLong(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 3:
                    if ((i & i3) != 0) {
                        zznuVar.zzK(i5, unsafe.getLong(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 4:
                    if ((i & i3) != 0) {
                        zznuVar.zzr(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 5:
                    if ((i & i3) != 0) {
                        zznuVar.zzm(i5, unsafe.getLong(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 6:
                    if ((i & i3) != 0) {
                        zznuVar.zzk(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 7:
                    if ((i & i3) != 0) {
                        zznuVar.zzb(i5, zzrf.zzw(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 8:
                    if ((i & i3) != 0) {
                        zzT(i5, unsafe.getObject(obj, j), zznuVar);
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 9:
                    if ((i & i3) != 0) {
                        zznuVar.zzv(i5, unsafe.getObject(obj, j), zzE(i4));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 10:
                    if ((i & i3) != 0) {
                        zznuVar.zzd(i5, (zznl) unsafe.getObject(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 11:
                    if ((i & i3) != 0) {
                        zznuVar.zzI(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 12:
                    if ((i & i3) != 0) {
                        zznuVar.zzi(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 13:
                    if ((i & i3) != 0) {
                        zznuVar.zzx(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 14:
                    if ((i & i3) != 0) {
                        zznuVar.zzz(i5, unsafe.getLong(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 15:
                    if ((i & i3) != 0) {
                        zznuVar.zzB(i5, unsafe.getInt(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 16:
                    if ((i & i3) != 0) {
                        zznuVar.zzD(i5, unsafe.getLong(obj, j));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 17:
                    if ((i & i3) != 0) {
                        zznuVar.zzq(i5, unsafe.getObject(obj, j), zzE(i4));
                    } else {
                        continue;
                        continue;
                    }
                    break;
                case 18:
                    zzqg.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 19:
                    zzqg.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 20:
                    zzqg.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 21:
                    zzqg.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 22:
                    zzqg.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 23:
                    zzqg.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 24:
                    zzqg.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 25:
                    zzqg.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 26:
                    zzqg.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar);
                    break;
                case 27:
                    zzqg.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, zzE(i4));
                    break;
                case 28:
                    zzqg.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar);
                    break;
                case 29:
                    zzqg.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 30:
                    zzqg.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 31:
                    zzqg.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 32:
                    zzqg.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 33:
                    zzqg.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 34:
                    zzqg.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, false);
                    break;
                case 35:
                    zzqg.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 36:
                    zzqg.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 37:
                    zzqg.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 38:
                    zzqg.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 39:
                    zzqg.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 40:
                    zzqg.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 41:
                    zzqg.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 42:
                    zzqg.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 43:
                    zzqg.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 44:
                    zzqg.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 45:
                    zzqg.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 46:
                    zzqg.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 47:
                    zzqg.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 48:
                    zzqg.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, true);
                    break;
                case 49:
                    zzqg.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zznuVar, zzE(i4));
                    break;
                case 50:
                    zzS(zznuVar, i5, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzf(i5, zzn(obj, j));
                    }
                    break;
                case 52:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzo(i5, zzo(obj, j));
                    }
                    break;
                case 53:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzt(i5, zzC(obj, j));
                    }
                    break;
                case 54:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzK(i5, zzC(obj, j));
                    }
                    break;
                case 55:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzr(i5, zzr(obj, j));
                    }
                    break;
                case 56:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzm(i5, zzC(obj, j));
                    }
                    break;
                case 57:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzk(i5, zzr(obj, j));
                    }
                    break;
                case 58:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzb(i5, zzQ(obj, j));
                    }
                    break;
                case 59:
                    if (zzP(obj, i5, i4)) {
                        zzT(i5, unsafe.getObject(obj, j), zznuVar);
                    }
                    break;
                case 60:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzv(i5, unsafe.getObject(obj, j), zzE(i4));
                    }
                    break;
                case 61:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzd(i5, (zznl) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzI(i5, zzr(obj, j));
                    }
                    break;
                case 63:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzi(i5, zzr(obj, j));
                    }
                    break;
                case 64:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzx(i5, zzr(obj, j));
                    }
                    break;
                case 65:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzz(i5, zzC(obj, j));
                    }
                    break;
                case 66:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzB(i5, zzr(obj, j));
                    }
                    break;
                case 67:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzD(i5, zzC(obj, j));
                    }
                    break;
                case 68:
                    if (zzP(obj, i5, i4)) {
                        zznuVar.zzq(i5, unsafe.getObject(obj, j), zzE(i4));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzo.zzg(zznuVar, entry);
            entry = itZzf.hasNext() ? (Map.Entry) itZzf.next() : null;
        }
        zzqv zzqvVar = this.zzn;
        zzqvVar.zzj(zzqvVar.zzc(obj), zznuVar);
    }

    private final void zzS(zznu zznuVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private static final void zzT(int i, Object obj, zznu zznuVar) throws IOException {
        if (obj instanceof String) {
            zznuVar.zzG(i, (String) obj);
        } else {
            zznuVar.zzd(i, (zznl) obj);
        }
    }

    static zzqw zzd(Object obj) {
        zzon zzonVar = (zzon) obj;
        zzqw zzqwVar = zzonVar.zzc;
        if (zzqwVar != zzqw.zzc()) {
            return zzqwVar;
        }
        zzqw zzqwVarZze = zzqw.zze();
        zzonVar.zzc = zzqwVarZze;
        return zzqwVarZze;
    }

    static zzpv zzk(Class cls, zzpp zzppVar, zzpy zzpyVar, zzpg zzpgVar, zzqv zzqvVar, zznz zznzVar, zzpn zzpnVar) {
        if (zzppVar instanceof zzqd) {
            return zzl((zzqd) zzppVar, zzpyVar, zzpgVar, zzqvVar, zznzVar, zzpnVar);
        }
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x025d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0260  */
    /* JADX WARN: Code duplicated, block: B:127:0x0278  */
    /* JADX WARN: Code duplicated, block: B:128:0x027b  */
    /* JADX WARN: Code duplicated, block: B:162:0x032b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0378  */
    /* JADX WARN: Code duplicated, block: B:180:0x0385  */
    static zzpv zzl(zzqd zzqdVar, zzpy zzpyVar, zzpg zzpgVar, zzqv zzqvVar, zznz zznzVar, zzpn zzpnVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt;
        int i7;
        char cCharAt2;
        int i8;
        char cCharAt3;
        int i9;
        char cCharAt4;
        int i10;
        char cCharAt5;
        int i11;
        char cCharAt6;
        int i12;
        char cCharAt7;
        int i13;
        char cCharAt8;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int i19;
        int iObjectFieldOffset2;
        int i20;
        Field fieldZzG;
        char cCharAt9;
        int i21;
        int i22;
        int i23;
        int i24;
        Object obj;
        Field fieldZzG2;
        int i25;
        Object obj2;
        Field fieldZzG3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        boolean z = zzqdVar.zzc() == 2;
        String strZzd = zzqdVar.zzd();
        int length = strZzd.length();
        char c = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i30 = 1;
            while (true) {
                i = i30 + 1;
                if (strZzd.charAt(i30) < 55296) {
                    break;
                }
                i30 = i;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int iCharAt4 = strZzd.charAt(i);
        if (iCharAt4 >= 55296) {
            int i32 = iCharAt4 & 8191;
            int i33 = 13;
            while (true) {
                i29 = i31 + 1;
                cCharAt13 = strZzd.charAt(i31);
                if (cCharAt13 < 55296) {
                    break;
                }
                i32 |= (cCharAt13 & 8191) << i33;
                i33 += 13;
                i31 = i29;
            }
            iCharAt4 = i32 | (cCharAt13 << i33);
            i31 = i29;
        }
        if (iCharAt4 == 0) {
            iArr = zza;
            i3 = 0;
            iCharAt = 0;
            i5 = 0;
            iCharAt2 = 0;
            i4 = 0;
            iCharAt3 = 0;
            i2 = 0;
        } else {
            int i34 = i31 + 1;
            int iCharAt5 = strZzd.charAt(i31);
            if (iCharAt5 >= 55296) {
                int i35 = iCharAt5 & 8191;
                int i36 = 13;
                while (true) {
                    i13 = i34 + 1;
                    cCharAt8 = strZzd.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i13;
                }
                iCharAt5 = i35 | (cCharAt8 << i36);
                i34 = i13;
            }
            int i37 = i34 + 1;
            int iCharAt6 = strZzd.charAt(i34);
            if (iCharAt6 >= 55296) {
                int i38 = iCharAt6 & 8191;
                int i39 = 13;
                while (true) {
                    i12 = i37 + 1;
                    cCharAt7 = strZzd.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i12;
                }
                iCharAt6 = i38 | (cCharAt7 << i39);
                i37 = i12;
            }
            int i40 = i37 + 1;
            iCharAt = strZzd.charAt(i37);
            if (iCharAt >= 55296) {
                int i41 = iCharAt & 8191;
                int i42 = 13;
                while (true) {
                    i11 = i40 + 1;
                    cCharAt6 = strZzd.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i11;
                }
                iCharAt = i41 | (cCharAt6 << i42);
                i40 = i11;
            }
            int i43 = i40 + 1;
            int iCharAt7 = strZzd.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i10 = i43 + 1;
                    cCharAt5 = strZzd.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i10;
                }
                iCharAt7 = i44 | (cCharAt5 << i45);
                i43 = i10;
            }
            int i46 = i43 + 1;
            iCharAt2 = strZzd.charAt(i43);
            if (iCharAt2 >= 55296) {
                int i47 = iCharAt2 & 8191;
                int i48 = 13;
                while (true) {
                    i9 = i46 + 1;
                    cCharAt4 = strZzd.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i9;
                }
                iCharAt2 = i47 | (cCharAt4 << i48);
                i46 = i9;
            }
            int i49 = i46 + 1;
            int iCharAt8 = strZzd.charAt(i46);
            if (iCharAt8 >= 55296) {
                int i50 = iCharAt8 & 8191;
                int i51 = 13;
                while (true) {
                    i8 = i49 + 1;
                    cCharAt3 = strZzd.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i8;
                }
                iCharAt8 = i50 | (cCharAt3 << i51);
                i49 = i8;
            }
            int i52 = i49 + 1;
            int iCharAt9 = strZzd.charAt(i49);
            if (iCharAt9 >= 55296) {
                int i53 = iCharAt9 & 8191;
                int i54 = 13;
                while (true) {
                    i7 = i52 + 1;
                    cCharAt2 = strZzd.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i7;
                }
                iCharAt9 = i53 | (cCharAt2 << i54);
                i52 = i7;
            }
            int i55 = i52 + 1;
            iCharAt3 = strZzd.charAt(i52);
            if (iCharAt3 >= 55296) {
                int i56 = iCharAt3 & 8191;
                int i57 = 13;
                while (true) {
                    i6 = i55 + 1;
                    cCharAt = strZzd.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i6;
                }
                iCharAt3 = i56 | (cCharAt << i57);
                i55 = i6;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i2 = iCharAt5 + iCharAt5 + iCharAt6;
            i3 = iCharAt5;
            i31 = i55;
            int i58 = iCharAt8;
            i4 = iCharAt7;
            i5 = i58;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzqdVar.zze();
        Class<?> cls = zzqdVar.zza().getClass();
        int[] iArr2 = new int[iCharAt2 * 3];
        Object[] objArr = new Object[iCharAt2 + iCharAt2];
        int i59 = iCharAt3 + i5;
        int i60 = iCharAt3;
        int i61 = i59;
        int i62 = 0;
        int i63 = 0;
        while (i31 < length) {
            int i64 = i31 + 1;
            int iCharAt10 = strZzd.charAt(i31);
            if (iCharAt10 >= c) {
                int i65 = iCharAt10 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i28 = i66 + 1;
                    cCharAt12 = strZzd.charAt(i66);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i65 |= (cCharAt12 & 8191) << i67;
                    i67 += 13;
                    i66 = i28;
                }
                iCharAt10 = i65 | (cCharAt12 << i67);
                i14 = i28;
            } else {
                i14 = i64;
            }
            int i68 = i14 + 1;
            int iCharAt11 = strZzd.charAt(i14);
            if (iCharAt11 >= c) {
                int i69 = iCharAt11 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i27 = i70 + 1;
                    cCharAt11 = strZzd.charAt(i70);
                    i15 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i69 |= (cCharAt11 & 8191) << i71;
                    i71 += 13;
                    i70 = i27;
                    length = i15;
                }
                iCharAt11 = i69 | (cCharAt11 << i71);
                i16 = i27;
            } else {
                i15 = length;
                i16 = i68;
            }
            int i72 = iCharAt11 & 255;
            int i73 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i63] = i62;
                i63++;
            }
            if (i72 >= 51) {
                int i74 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i75 = iCharAt12 & 8191;
                    int i76 = i74;
                    int i77 = 13;
                    while (true) {
                        i26 = i76 + 1;
                        cCharAt10 = strZzd.charAt(i76);
                        i17 = i4;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i75 |= (cCharAt10 & 8191) << i77;
                        i77 += 13;
                        i76 = i26;
                        i4 = i17;
                    }
                    iCharAt12 = i75 | (cCharAt10 << i77);
                    i22 = i26;
                } else {
                    i17 = i4;
                    i22 = i74;
                }
                int i78 = i72 - 51;
                i19 = i22;
                if (i78 == 9 || i78 == 17) {
                    int i79 = i62 / 3;
                    i23 = i2 + 1;
                    objArr[i79 + i79 + 1] = objArrZze[i2];
                } else {
                    if (i78 == 12 && !z) {
                        int i80 = i62 / 3;
                        i23 = i2 + 1;
                        objArr[i80 + i80 + 1] = objArrZze[i2];
                    }
                    i24 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i24];
                    if (obj instanceof Field) {
                        fieldZzG2 = (Field) obj;
                    } else {
                        fieldZzG2 = zzG(cls, (String) obj);
                        objArrZze[i24] = fieldZzG2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzG2);
                    i25 = i24 + 1;
                    obj2 = objArrZze[i25];
                    if (obj2 instanceof Field) {
                        fieldZzG3 = (Field) obj2;
                    } else {
                        fieldZzG3 = zzG(cls, (String) obj2);
                        objArrZze[i25] = fieldZzG3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzG3);
                    strZzd = strZzd;
                    cls = cls;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i20 = 0;
                }
                i2 = i23;
                i24 = iCharAt12 + iCharAt12;
                obj = objArrZze[i24];
                if (obj instanceof Field) {
                    fieldZzG2 = (Field) obj;
                } else {
                    fieldZzG2 = zzG(cls, (String) obj);
                    objArrZze[i24] = fieldZzG2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldZzG2);
                i25 = i24 + 1;
                obj2 = objArrZze[i25];
                if (obj2 instanceof Field) {
                    fieldZzG3 = (Field) obj2;
                } else {
                    fieldZzG3 = zzG(cls, (String) obj2);
                    objArrZze[i25] = fieldZzG3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldZzG3);
                strZzd = strZzd;
                cls = cls;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                iObjectFieldOffset = iObjectFieldOffset5;
                i20 = 0;
            } else {
                i17 = i4;
                int i81 = i2 + 1;
                Field fieldZzG4 = zzG(cls, (String) objArrZze[i2]);
                if (i72 == 9 || i72 == 17) {
                    int i82 = i62 / 3;
                    objArr[i82 + i82 + 1] = fieldZzG4.getType();
                } else {
                    if (i72 == 27 || i72 == 49) {
                        int i83 = i62 / 3;
                        i21 = i81 + 1;
                        objArr[i83 + i83 + 1] = objArrZze[i81];
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        if (!z) {
                            int i84 = i62 / 3;
                            i21 = i81 + 1;
                            objArr[i84 + i84 + 1] = objArrZze[i81];
                        }
                    } else if (i72 == 50) {
                        int i85 = i60 + 1;
                        iArr[i60] = i62;
                        int i86 = i62 / 3;
                        int i87 = i86 + i86;
                        int i88 = i81 + 1;
                        objArr[i87] = objArrZze[i81];
                        if ((iCharAt11 & 2048) != 0) {
                            i81 = i88 + 1;
                            objArr[i87 + 1] = objArrZze[i88];
                            i60 = i85;
                        } else {
                            i60 = i85;
                            i18 = i88;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                        if ((iCharAt11 & 4096) == 4096 || i72 > 17) {
                            i19 = i16;
                            iObjectFieldOffset2 = 1048575;
                            i20 = 0;
                        } else {
                            int i89 = i16 + 1;
                            int iCharAt13 = strZzd.charAt(i16);
                            if (iCharAt13 >= 55296) {
                                int i90 = iCharAt13 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i19 = i89 + 1;
                                    cCharAt9 = strZzd.charAt(i89);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i90 |= (cCharAt9 & 8191) << i91;
                                    i91 += 13;
                                    i89 = i19;
                                }
                                iCharAt13 = i90 | (cCharAt9 << i91);
                            } else {
                                i19 = i89;
                            }
                            int i92 = i3 + i3 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i92];
                            if (obj3 instanceof Field) {
                                fieldZzG = (Field) obj3;
                            } else {
                                fieldZzG = zzG(cls, (String) obj3);
                                objArrZze[i92] = fieldZzG;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzG);
                            i20 = iCharAt13 % 32;
                        }
                        if (i72 >= 18 && i72 <= 49) {
                            iArr[i61] = iObjectFieldOffset;
                            i61++;
                        }
                        i2 = i18;
                    }
                    i18 = i21;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                    if ((iCharAt11 & 4096) == 4096) {
                        i19 = i16;
                        iObjectFieldOffset2 = 1048575;
                        i20 = 0;
                    } else {
                        i19 = i16;
                        iObjectFieldOffset2 = 1048575;
                        i20 = 0;
                    }
                    if (i72 >= 18) {
                        iArr[i61] = iObjectFieldOffset;
                        i61++;
                    }
                    i2 = i18;
                }
                i18 = i81;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                if ((iCharAt11 & 4096) == 4096) {
                    i19 = i16;
                    iObjectFieldOffset2 = 1048575;
                    i20 = 0;
                } else {
                    i19 = i16;
                    iObjectFieldOffset2 = 1048575;
                    i20 = 0;
                }
                if (i72 >= 18) {
                    iArr[i61] = iObjectFieldOffset;
                    i61++;
                }
                i2 = i18;
            }
            int i93 = i62 + 1;
            iArr2[i62] = iCharAt10;
            int i94 = i93 + 1;
            iArr2[i93] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i72 << 20) | iObjectFieldOffset;
            i62 = i94 + 1;
            iArr2[i94] = (i20 << 20) | iObjectFieldOffset2;
            cls = cls;
            iCharAt = iCharAt;
            iCharAt3 = i73;
            i31 = i19;
            length = i15;
            objArr = objArr;
            strZzd = strZzd;
            iArr2 = iArr2;
            i4 = i17;
            c = 55296;
        }
        return new zzpv(iArr2, objArr, iCharAt, i4, zzqdVar.zza(), z, false, iArr, iCharAt3, i59, zzpyVar, zzpgVar, zzqvVar, zznzVar, zzpnVar, null);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzrf.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzrf.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzp(Object obj) {
        int i;
        int iZzD;
        int iZzD2;
        int iZzD3;
        int iZzE;
        int iZzD4;
        int iZzx;
        int iZzD5;
        int iZzD6;
        int iZzd;
        int iZzD7;
        int i2;
        int iZzu;
        int iZzi;
        int iZzC;
        int iZzD8;
        int iZzD9;
        int iZzD10;
        int iZzD11;
        int iZzD12;
        int iZzE2;
        int iZzD13;
        int iZzd2;
        int iZzD14;
        int i3;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 0;
        int iZzD15 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i5 < this.zzc.length) {
            int iZzB = zzB(i5);
            int[] iArr = this.zzc;
            int i8 = iArr[i5];
            int iZzA = zzA(iZzB);
            if (iZzA <= 17) {
                int i9 = iArr[i5 + 2];
                int i10 = i9 & i4;
                i = 1 << (i9 >>> 20);
                if (i10 != i7) {
                    i6 = unsafe.getInt(obj, i10);
                    i7 = i10;
                }
            } else {
                i = 0;
            }
            long j = iZzB & i4;
            switch (iZzA) {
                case 0:
                    if ((i6 & i) != 0) {
                        iZzD = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD + 8;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 1:
                    if ((i6 & i) != 0) {
                        iZzD2 = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD2 + 4;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 2:
                    if ((i6 & i) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzD3 = zznt.zzD(i8 << 3);
                        iZzE = zznt.zzE(j2);
                        iZzD15 += iZzD3 + iZzE;
                    }
                    break;
                case 3:
                    if ((i6 & i) != 0) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzD3 = zznt.zzD(i8 << 3);
                        iZzE = zznt.zzE(j3);
                        iZzD15 += iZzD3 + iZzE;
                    }
                    break;
                case 4:
                    if ((i6 & i) != 0) {
                        int i11 = unsafe.getInt(obj, j);
                        iZzD4 = zznt.zzD(i8 << 3);
                        iZzx = zznt.zzx(i11);
                        i2 = iZzD4 + iZzx;
                        iZzD15 += i2;
                    }
                    break;
                case 5:
                    if ((i6 & i) != 0) {
                        iZzD = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD + 8;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 6:
                    if ((i6 & i) != 0) {
                        iZzD2 = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD2 + 4;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 7:
                    if ((i6 & i) != 0) {
                        iZzD5 = zznt.zzD(i8 << 3) + 1;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 8:
                    if ((i6 & i) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zznl) {
                            iZzD6 = zznt.zzD(i8 << 3);
                            iZzd = ((zznl) object).zzd();
                            iZzD7 = zznt.zzD(iZzd);
                            i2 = iZzD6 + iZzD7 + iZzd;
                            iZzD15 += i2;
                        } else {
                            iZzD4 = zznt.zzD(i8 << 3);
                            iZzx = zznt.zzB((String) object);
                            i2 = iZzD4 + iZzx;
                            iZzD15 += i2;
                        }
                    }
                    break;
                case 9:
                    if ((i6 & i) != 0) {
                        iZzD5 = zzqg.zzo(i8, unsafe.getObject(obj, j), zzE(i5));
                        iZzD15 += iZzD5;
                    }
                    break;
                case 10:
                    if ((i6 & i) != 0) {
                        zznl zznlVar = (zznl) unsafe.getObject(obj, j);
                        iZzD6 = zznt.zzD(i8 << 3);
                        iZzd = zznlVar.zzd();
                        iZzD7 = zznt.zzD(iZzd);
                        i2 = iZzD6 + iZzD7 + iZzd;
                        iZzD15 += i2;
                    }
                    break;
                case 11:
                    if ((i6 & i) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzD4 = zznt.zzD(i8 << 3);
                        iZzx = zznt.zzD(i12);
                        i2 = iZzD4 + iZzx;
                        iZzD15 += i2;
                    }
                    break;
                case 12:
                    if ((i6 & i) != 0) {
                        int i13 = unsafe.getInt(obj, j);
                        iZzD4 = zznt.zzD(i8 << 3);
                        iZzx = zznt.zzx(i13);
                        i2 = iZzD4 + iZzx;
                        iZzD15 += i2;
                    }
                    break;
                case 13:
                    if ((i6 & i) != 0) {
                        iZzD2 = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD2 + 4;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 14:
                    if ((i6 & i) != 0) {
                        iZzD = zznt.zzD(i8 << 3);
                        iZzD5 = iZzD + 8;
                        iZzD15 += iZzD5;
                    }
                    break;
                case 15:
                    if ((i6 & i) != 0) {
                        int i14 = unsafe.getInt(obj, j);
                        iZzD4 = zznt.zzD(i8 << 3);
                        iZzx = zznt.zzD((i14 >> 31) ^ (i14 + i14));
                        i2 = iZzD4 + iZzx;
                        iZzD15 += i2;
                    }
                    break;
                case 16:
                    if ((i & i6) != 0) {
                        long j4 = unsafe.getLong(obj, j);
                        iZzD15 += zznt.zzD(i8 << 3) + zznt.zzE((j4 >> 63) ^ (j4 + j4));
                    }
                    break;
                case 17:
                    if ((i6 & i) != 0) {
                        iZzD5 = zznt.zzv(i8, (zzps) unsafe.getObject(obj, j), zzE(i5));
                        iZzD15 += iZzD5;
                    }
                    break;
                case 18:
                    iZzD5 = zzqg.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 19:
                    iZzD5 = zzqg.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 20:
                    iZzD5 = zzqg.zzm(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 21:
                    iZzD5 = zzqg.zzx(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 22:
                    iZzD5 = zzqg.zzk(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 23:
                    iZzD5 = zzqg.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 24:
                    iZzD5 = zzqg.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 25:
                    iZzD5 = zzqg.zza(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzD5;
                    break;
                case 26:
                    iZzu = zzqg.zzu(i8, (List) unsafe.getObject(obj, j));
                    iZzD15 += iZzu;
                    break;
                case 27:
                    iZzu = zzqg.zzp(i8, (List) unsafe.getObject(obj, j), zzE(i5));
                    iZzD15 += iZzu;
                    break;
                case 28:
                    iZzu = zzqg.zzc(i8, (List) unsafe.getObject(obj, j));
                    iZzD15 += iZzu;
                    break;
                case 29:
                    iZzu = zzqg.zzv(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 30:
                    iZzu = zzqg.zzd(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 31:
                    iZzu = zzqg.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 32:
                    iZzu = zzqg.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 33:
                    iZzu = zzqg.zzq(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 34:
                    iZzu = zzqg.zzs(i8, (List) unsafe.getObject(obj, j), false);
                    iZzD15 += iZzu;
                    break;
                case 35:
                    iZzi = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 36:
                    iZzi = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 37:
                    iZzi = zzqg.zzn((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 38:
                    iZzi = zzqg.zzy((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 39:
                    iZzi = zzqg.zzl((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 40:
                    iZzi = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 41:
                    iZzi = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 42:
                    iZzi = zzqg.zzb((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 43:
                    iZzi = zzqg.zzw((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 44:
                    iZzi = zzqg.zze((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 45:
                    iZzi = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 46:
                    iZzi = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 47:
                    iZzi = zzqg.zzr((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 48:
                    iZzi = zzqg.zzt((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzC = zznt.zzC(i8);
                        iZzD8 = zznt.zzD(iZzi);
                        iZzD9 = iZzC + iZzD8;
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 49:
                    iZzu = zzqg.zzj(i8, (List) unsafe.getObject(obj, j), zzE(i5));
                    iZzD15 += iZzu;
                    break;
                case 50:
                    zzpn.zza(i8, unsafe.getObject(obj, j), zzF(i5));
                    break;
                case 51:
                    if (zzP(obj, i8, i5)) {
                        iZzD10 = zznt.zzD(i8 << 3);
                        iZzu = iZzD10 + 8;
                        iZzD15 += iZzu;
                    }
                    break;
                case 52:
                    if (zzP(obj, i8, i5)) {
                        iZzD11 = zznt.zzD(i8 << 3);
                        iZzu = iZzD11 + 4;
                        iZzD15 += iZzu;
                    }
                    break;
                case 53:
                    if (zzP(obj, i8, i5)) {
                        long jZzC = zzC(obj, j);
                        iZzD12 = zznt.zzD(i8 << 3);
                        iZzE2 = zznt.zzE(jZzC);
                        iZzD15 += iZzD12 + iZzE2;
                    }
                    break;
                case 54:
                    if (zzP(obj, i8, i5)) {
                        long jZzC2 = zzC(obj, j);
                        iZzD12 = zznt.zzD(i8 << 3);
                        iZzE2 = zznt.zzE(jZzC2);
                        iZzD15 += iZzD12 + iZzE2;
                    }
                    break;
                case 55:
                    if (zzP(obj, i8, i5)) {
                        int iZzr = zzr(obj, j);
                        iZzD9 = zznt.zzD(i8 << 3);
                        iZzi = zznt.zzx(iZzr);
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 56:
                    if (zzP(obj, i8, i5)) {
                        iZzD10 = zznt.zzD(i8 << 3);
                        iZzu = iZzD10 + 8;
                        iZzD15 += iZzu;
                    }
                    break;
                case 57:
                    if (zzP(obj, i8, i5)) {
                        iZzD11 = zznt.zzD(i8 << 3);
                        iZzu = iZzD11 + 4;
                        iZzD15 += iZzu;
                    }
                    break;
                case 58:
                    if (zzP(obj, i8, i5)) {
                        iZzu = zznt.zzD(i8 << 3) + 1;
                        iZzD15 += iZzu;
                    }
                    break;
                case 59:
                    if (zzP(obj, i8, i5)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zznl) {
                            iZzD13 = zznt.zzD(i8 << 3);
                            iZzd2 = ((zznl) object2).zzd();
                            iZzD14 = zznt.zzD(iZzd2);
                            i3 = iZzD13 + iZzD14 + iZzd2;
                            iZzD15 += i3;
                        } else {
                            iZzD9 = zznt.zzD(i8 << 3);
                            iZzi = zznt.zzB((String) object2);
                            i3 = iZzD9 + iZzi;
                            iZzD15 += i3;
                        }
                    }
                    break;
                case 60:
                    if (zzP(obj, i8, i5)) {
                        iZzu = zzqg.zzo(i8, unsafe.getObject(obj, j), zzE(i5));
                        iZzD15 += iZzu;
                    }
                    break;
                case 61:
                    if (zzP(obj, i8, i5)) {
                        zznl zznlVar2 = (zznl) unsafe.getObject(obj, j);
                        iZzD13 = zznt.zzD(i8 << 3);
                        iZzd2 = zznlVar2.zzd();
                        iZzD14 = zznt.zzD(iZzd2);
                        i3 = iZzD13 + iZzD14 + iZzd2;
                        iZzD15 += i3;
                    }
                    break;
                case 62:
                    if (zzP(obj, i8, i5)) {
                        int iZzr2 = zzr(obj, j);
                        iZzD9 = zznt.zzD(i8 << 3);
                        iZzi = zznt.zzD(iZzr2);
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 63:
                    if (zzP(obj, i8, i5)) {
                        int iZzr3 = zzr(obj, j);
                        iZzD9 = zznt.zzD(i8 << 3);
                        iZzi = zznt.zzx(iZzr3);
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 64:
                    if (zzP(obj, i8, i5)) {
                        iZzD11 = zznt.zzD(i8 << 3);
                        iZzu = iZzD11 + 4;
                        iZzD15 += iZzu;
                    }
                    break;
                case 65:
                    if (zzP(obj, i8, i5)) {
                        iZzD10 = zznt.zzD(i8 << 3);
                        iZzu = iZzD10 + 8;
                        iZzD15 += iZzu;
                    }
                    break;
                case 66:
                    if (zzP(obj, i8, i5)) {
                        int iZzr4 = zzr(obj, j);
                        iZzD9 = zznt.zzD(i8 << 3);
                        iZzi = zznt.zzD((iZzr4 >> 31) ^ (iZzr4 + iZzr4));
                        i3 = iZzD9 + iZzi;
                        iZzD15 += i3;
                    }
                    break;
                case 67:
                    if (zzP(obj, i8, i5)) {
                        long jZzC3 = zzC(obj, j);
                        iZzD15 += zznt.zzD(i8 << 3) + zznt.zzE((jZzC3 >> 63) ^ (jZzC3 + jZzC3));
                    }
                    break;
                case 68:
                    if (zzP(obj, i8, i5)) {
                        iZzu = zznt.zzv(i8, (zzps) unsafe.getObject(obj, j), zzE(i5));
                        iZzD15 += iZzu;
                    }
                    break;
                default:
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        int iZza = 0;
        zzqv zzqvVar = this.zzn;
        int iZza2 = iZzD15 + zzqvVar.zza(zzqvVar.zzc(obj));
        if (!this.zzh) {
            return iZza2;
        }
        zzod zzodVarZzb = this.zzo.zzb(obj);
        for (int i15 = 0; i15 < zzodVarZzb.zza.zzb(); i15++) {
            Map.Entry entryZzg = zzodVarZzb.zza.zzg(i15);
            iZza += zzod.zza((zzoc) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry : zzodVarZzb.zza.zzc()) {
            iZza += zzod.zza((zzoc) entry.getKey(), entry.getValue());
        }
        return iZza2 + iZza;
    }

    private final int zzq(Object obj) {
        int iZzD;
        int iZzD2;
        int iZzD3;
        int iZzE;
        int iZzD4;
        int iZzx;
        int iZzD5;
        int iZzD6;
        int iZzd;
        int iZzD7;
        int iZzo;
        int iZzC;
        int iZzD8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzB = zzB(i3);
            int iZzA = zzA(iZzB);
            int i4 = this.zzc[i3];
            long j = iZzB & 1048575;
            if (iZzA >= zzoe.zzJ.zza() && iZzA <= zzoe.zzW.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (iZzA) {
                case 0:
                    if (zzM(obj, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 1:
                    if (zzM(obj, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 2:
                    if (zzM(obj, i3)) {
                        long jZzd = zzrf.zzd(obj, j);
                        iZzD3 = zznt.zzD(i4 << 3);
                        iZzE = zznt.zzE(jZzd);
                        i2 += iZzD3 + iZzE;
                    }
                    break;
                case 3:
                    if (zzM(obj, i3)) {
                        long jZzd2 = zzrf.zzd(obj, j);
                        iZzD3 = zznt.zzD(i4 << 3);
                        iZzE = zznt.zzE(jZzd2);
                        i2 += iZzD3 + iZzE;
                    }
                    break;
                case 4:
                    if (zzM(obj, i3)) {
                        int iZzc = zzrf.zzc(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzx(iZzc);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 5:
                    if (zzM(obj, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 6:
                    if (zzM(obj, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 7:
                    if (zzM(obj, i3)) {
                        iZzD5 = zznt.zzD(i4 << 3);
                        iZzo = iZzD5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 8:
                    if (zzM(obj, i3)) {
                        Object objZzf = zzrf.zzf(obj, j);
                        if (objZzf instanceof zznl) {
                            iZzD6 = zznt.zzD(i4 << 3);
                            iZzd = ((zznl) objZzf).zzd();
                            iZzD7 = zznt.zzD(iZzd);
                            i = iZzD6 + iZzD7 + iZzd;
                            i2 += i;
                        } else {
                            iZzD4 = zznt.zzD(i4 << 3);
                            iZzx = zznt.zzB((String) objZzf);
                            i = iZzD4 + iZzx;
                            i2 += i;
                        }
                    }
                    break;
                case 9:
                    if (zzM(obj, i3)) {
                        iZzo = zzqg.zzo(i4, zzrf.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 10:
                    if (zzM(obj, i3)) {
                        zznl zznlVar = (zznl) zzrf.zzf(obj, j);
                        iZzD6 = zznt.zzD(i4 << 3);
                        iZzd = zznlVar.zzd();
                        iZzD7 = zznt.zzD(iZzd);
                        i = iZzD6 + iZzD7 + iZzd;
                        i2 += i;
                    }
                    break;
                case 11:
                    if (zzM(obj, i3)) {
                        int iZzc2 = zzrf.zzc(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzD(iZzc2);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 12:
                    if (zzM(obj, i3)) {
                        int iZzc3 = zzrf.zzc(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzx(iZzc3);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 13:
                    if (zzM(obj, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 14:
                    if (zzM(obj, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 15:
                    if (zzM(obj, i3)) {
                        int iZzc4 = zzrf.zzc(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzD((iZzc4 >> 31) ^ (iZzc4 + iZzc4));
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 16:
                    if (zzM(obj, i3)) {
                        long jZzd3 = zzrf.zzd(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzE((jZzd3 >> 63) ^ (jZzd3 + jZzd3));
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 17:
                    if (zzM(obj, i3)) {
                        iZzo = zznt.zzv(i4, (zzps) zzrf.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 18:
                    iZzo = zzqg.zzh(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 19:
                    iZzo = zzqg.zzf(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 20:
                    iZzo = zzqg.zzm(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 21:
                    iZzo = zzqg.zzx(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 22:
                    iZzo = zzqg.zzk(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 23:
                    iZzo = zzqg.zzh(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 24:
                    iZzo = zzqg.zzf(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 25:
                    iZzo = zzqg.zza(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 26:
                    iZzo = zzqg.zzu(i4, (List) zzrf.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 27:
                    iZzo = zzqg.zzp(i4, (List) zzrf.zzf(obj, j), zzE(i3));
                    i2 += iZzo;
                    break;
                case 28:
                    iZzo = zzqg.zzc(i4, (List) zzrf.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 29:
                    iZzo = zzqg.zzv(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 30:
                    iZzo = zzqg.zzd(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 31:
                    iZzo = zzqg.zzf(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 32:
                    iZzo = zzqg.zzh(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 33:
                    iZzo = zzqg.zzq(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 34:
                    iZzo = zzqg.zzs(i4, (List) zzrf.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 35:
                    iZzx = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 36:
                    iZzx = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 37:
                    iZzx = zzqg.zzn((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 38:
                    iZzx = zzqg.zzy((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 39:
                    iZzx = zzqg.zzl((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 40:
                    iZzx = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 41:
                    iZzx = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 42:
                    iZzx = zzqg.zzb((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 43:
                    iZzx = zzqg.zzw((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 44:
                    iZzx = zzqg.zze((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 45:
                    iZzx = zzqg.zzg((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 46:
                    iZzx = zzqg.zzi((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 47:
                    iZzx = zzqg.zzr((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 48:
                    iZzx = zzqg.zzt((List) unsafe.getObject(obj, j));
                    if (iZzx > 0) {
                        iZzC = zznt.zzC(i4);
                        iZzD8 = zznt.zzD(iZzx);
                        iZzD4 = iZzC + iZzD8;
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 49:
                    iZzo = zzqg.zzj(i4, (List) zzrf.zzf(obj, j), zzE(i3));
                    i2 += iZzo;
                    break;
                case 50:
                    zzpn.zza(i4, zzrf.zzf(obj, j), zzF(i3));
                    break;
                case 51:
                    if (zzP(obj, i4, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 52:
                    if (zzP(obj, i4, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 53:
                    if (zzP(obj, i4, i3)) {
                        long jZzC = zzC(obj, j);
                        iZzD3 = zznt.zzD(i4 << 3);
                        iZzE = zznt.zzE(jZzC);
                        i2 += iZzD3 + iZzE;
                    }
                    break;
                case 54:
                    if (zzP(obj, i4, i3)) {
                        long jZzC2 = zzC(obj, j);
                        iZzD3 = zznt.zzD(i4 << 3);
                        iZzE = zznt.zzE(jZzC2);
                        i2 += iZzD3 + iZzE;
                    }
                    break;
                case 55:
                    if (zzP(obj, i4, i3)) {
                        int iZzr = zzr(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzx(iZzr);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 56:
                    if (zzP(obj, i4, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 57:
                    if (zzP(obj, i4, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 58:
                    if (zzP(obj, i4, i3)) {
                        iZzD5 = zznt.zzD(i4 << 3);
                        iZzo = iZzD5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 59:
                    if (zzP(obj, i4, i3)) {
                        Object objZzf2 = zzrf.zzf(obj, j);
                        if (objZzf2 instanceof zznl) {
                            iZzD6 = zznt.zzD(i4 << 3);
                            iZzd = ((zznl) objZzf2).zzd();
                            iZzD7 = zznt.zzD(iZzd);
                            i = iZzD6 + iZzD7 + iZzd;
                            i2 += i;
                        } else {
                            iZzD4 = zznt.zzD(i4 << 3);
                            iZzx = zznt.zzB((String) objZzf2);
                            i = iZzD4 + iZzx;
                            i2 += i;
                        }
                    }
                    break;
                case 60:
                    if (zzP(obj, i4, i3)) {
                        iZzo = zzqg.zzo(i4, zzrf.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 61:
                    if (zzP(obj, i4, i3)) {
                        zznl zznlVar2 = (zznl) zzrf.zzf(obj, j);
                        iZzD6 = zznt.zzD(i4 << 3);
                        iZzd = zznlVar2.zzd();
                        iZzD7 = zznt.zzD(iZzd);
                        i = iZzD6 + iZzD7 + iZzd;
                        i2 += i;
                    }
                    break;
                case 62:
                    if (zzP(obj, i4, i3)) {
                        int iZzr2 = zzr(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzD(iZzr2);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 63:
                    if (zzP(obj, i4, i3)) {
                        int iZzr3 = zzr(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzx(iZzr3);
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 64:
                    if (zzP(obj, i4, i3)) {
                        iZzD2 = zznt.zzD(i4 << 3);
                        iZzo = iZzD2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 65:
                    if (zzP(obj, i4, i3)) {
                        iZzD = zznt.zzD(i4 << 3);
                        iZzo = iZzD + 8;
                        i2 += iZzo;
                    }
                    break;
                case 66:
                    if (zzP(obj, i4, i3)) {
                        int iZzr4 = zzr(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzD((iZzr4 >> 31) ^ (iZzr4 + iZzr4));
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 67:
                    if (zzP(obj, i4, i3)) {
                        long jZzC3 = zzC(obj, j);
                        iZzD4 = zznt.zzD(i4 << 3);
                        iZzx = zznt.zzE((jZzC3 >> 63) ^ (jZzC3 + jZzC3));
                        i = iZzD4 + iZzx;
                        i2 += i;
                    }
                    break;
                case 68:
                    if (zzP(obj, i4, i3)) {
                        iZzo = zznt.zzv(i4, (zzps) zzrf.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
            }
        }
        zzqv zzqvVar = this.zzn;
        return i2 + zzqvVar.zza(zzqvVar.zzc(obj));
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzrf.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzmx zzmxVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzpm) object).zze()) {
            zzpm zzpmVarZzb = zzpm.zza().zzb();
            zzpn.zzb(zzpmVarZzb, object);
            unsafe.putObject(obj, j, zzpmVarZzb);
        }
        throw null;
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzmx zzmxVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzmy.zzo(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzmy.zzb(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iZzm = zzmy.zzm(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, Long.valueOf(zzmxVar.zzb));
                unsafe.putInt(obj, j2, i4);
                return iZzm;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iZzj = zzmy.zzj(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzmxVar.zza));
                unsafe.putInt(obj, j2, i4);
                return iZzj;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(zzmy.zzo(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(zzmy.zzb(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iZzm2 = zzmy.zzm(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, Boolean.valueOf(zzmxVar.zzb != 0));
                unsafe.putInt(obj, j2, i4);
                return iZzm2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZzj2 = zzmy.zzj(bArr, i, zzmxVar);
                int i9 = zzmxVar.zza;
                if (i9 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & 536870912) != 0 && !zzrk.zzf(bArr, iZzj2, iZzj2 + i9)) {
                        throw zzov.zzc();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzj2, i9, zzot.zzb));
                    iZzj2 += i9;
                }
                unsafe.putInt(obj, j2, i4);
                return iZzj2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZzd = zzmy.zzd(zzE(i8), bArr, i, i2, zzmxVar);
                Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object == null) {
                    unsafe.putObject(obj, j, zzmxVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzot.zzg(object, zzmxVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzd;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzmy.zza(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, zzmxVar.zzc);
                unsafe.putInt(obj, j2, i4);
                return iZza;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZzj3 = zzmy.zzj(bArr, i, zzmxVar);
                int i10 = zzmxVar.zza;
                zzor zzorVarZzD = zzD(i8);
                if (zzorVarZzD == null || zzorVarZzD.zza(i10)) {
                    unsafe.putObject(obj, j, Integer.valueOf(i10));
                    unsafe.putInt(obj, j2, i4);
                } else {
                    zzd(obj).zzh(i3, Long.valueOf(i10));
                }
                return iZzj3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iZzj4 = zzmy.zzj(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, Integer.valueOf(zznp.zzb(zzmxVar.zza)));
                unsafe.putInt(obj, j2, i4);
                return iZzj4;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iZzm3 = zzmy.zzm(bArr, i, zzmxVar);
                unsafe.putObject(obj, j, Long.valueOf(zznp.zzc(zzmxVar.zzb)));
                unsafe.putInt(obj, j2, i4);
                return iZzm3;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                int iZzc = zzmy.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzmxVar);
                Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j, zzmxVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzot.zzg(object2, zzmxVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzc;
            default:
                return i;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02e9 A[PHI: r0 r26 r27 r28
      0x02e9: PHI (r0v16 int) = (r0v11 int), (r0v14 int), (r0v18 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02e9: PHI (r26v3 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02e9: PHI (r27v2 int) = (r27v0 int), (r27v0 int), (r27v3 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02e9: PHI (r28v3 sun.misc.Unsafe) = (r28v1 sun.misc.Unsafe), (r28v1 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:102:0x02fd A[PHI: r0 r26 r27 r28
      0x02fd: PHI (r0v15 int) = (r0v11 int), (r0v14 int), (r0v18 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02fd: PHI (r26v2 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02fd: PHI (r27v1 int) = (r27v0 int), (r27v0 int), (r27v3 int) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02fd: PHI (r28v2 sun.misc.Unsafe) = (r28v1 sun.misc.Unsafe), (r28v1 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe) binds: [B:113:0x0351, B:108:0x032e, B:100:0x02e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0090. Please report as an issue. */
    private final int zzu(Object obj, byte[] bArr, int i, int i2, zzmx zzmxVar) throws IOException {
        int i3;
        int iZzk;
        int i4;
        int i5;
        int i6;
        int i7;
        Unsafe unsafe;
        int i8;
        int i9;
        Unsafe unsafe2;
        int i10;
        int i11;
        int i12;
        Unsafe unsafe3;
        Unsafe unsafe4;
        this = this;
        obj = obj;
        bArr = bArr;
        i2 = i2;
        zzmxVar = zzmxVar;
        Unsafe unsafe5 = zzb;
        int i13 = -1;
        int i14 = 1048575;
        int iZzt = i;
        int i15 = -1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (iZzt < i2) {
            int i19 = iZzt + 1;
            byte b = bArr[iZzt];
            if (b < 0) {
                iZzk = zzmy.zzk(b, bArr, i19, zzmxVar);
                i3 = zzmxVar.zza;
            } else {
                i3 = b;
                iZzk = i19;
            }
            int i20 = i3 >>> 3;
            int i21 = i3 & 7;
            int iZzx = i20 > i15 ? this.zzx(i20, i16 / 3) : this.zzw(i20);
            if (iZzx == i13) {
                i9 = iZzk;
                i4 = i20;
                unsafe = unsafe5;
                i5 = 0;
            } else {
                int[] iArr = this.zzc;
                int i22 = iArr[iZzx + 1];
                int iZzA = zzA(i22);
                Unsafe unsafe6 = unsafe5;
                long j = i22 & i14;
                if (iZzA <= 17) {
                    int i23 = iArr[iZzx + 2];
                    int i24 = 1 << (i23 >>> 20);
                    int i25 = i23 & 1048575;
                    if (i25 != i18) {
                        if (i18 != 1048575) {
                            long j2 = i18;
                            unsafe4 = unsafe6;
                            unsafe4.putInt(obj, j2, i17);
                        } else {
                            unsafe4 = unsafe6;
                        }
                        if (i25 != 1048575) {
                            i17 = unsafe4.getInt(obj, i25);
                        }
                        unsafe2 = unsafe4;
                        i18 = i25;
                    } else {
                        unsafe2 = unsafe6;
                    }
                    switch (iZzA) {
                        case 0:
                            i10 = iZzk;
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 1) {
                                zzrf.zzo(obj, j, Double.longBitsToDouble(zzmy.zzo(bArr, i10)));
                                iZzt = i10 + 8;
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 1:
                            i10 = iZzk;
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 5) {
                                zzrf.zzp(obj, j, Float.intBitsToFloat(zzmy.zzb(bArr, i10)));
                                iZzt = i10 + 4;
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 2:
                        case 3:
                            i10 = iZzk;
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 0) {
                                int iZzm = zzmy.zzm(bArr, i10, zzmxVar);
                                unsafe3.putLong(obj, j, zzmxVar.zzb);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                iZzt = iZzm;
                                i18 = i11;
                                i15 = i4;
                            }
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 4:
                        case 11:
                            i10 = iZzk;
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 0) {
                                iZzt = zzmy.zzj(bArr, i10, zzmxVar);
                                unsafe3.putInt(obj, j, zzmxVar.zza);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 5:
                        case 14:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 1) {
                                unsafe3.putLong(obj, j, zzmy.zzo(bArr, iZzk));
                                iZzt = iZzk + 8;
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 6:
                        case 13:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 5) {
                                unsafe3.putInt(obj, j, zzmy.zzb(bArr, iZzk));
                                iZzt = iZzk + 4;
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 7:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 0) {
                                iZzt = zzmy.zzm(bArr, iZzk, zzmxVar);
                                zzrf.zzm(obj, j, zzmxVar.zzb != 0);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 8:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 2) {
                                iZzt = (i22 & 536870912) == 0 ? zzmy.zzg(bArr, iZzk, zzmxVar) : zzmy.zzh(bArr, iZzk, zzmxVar);
                                unsafe3.putObject(obj, j, zzmxVar.zzc);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 9:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 2) {
                                iZzt = zzmy.zzd(this.zzE(i12), bArr, iZzk, i2, zzmxVar);
                                Object object = unsafe3.getObject(obj, j);
                                if (object == null) {
                                    unsafe3.putObject(obj, j, zzmxVar.zzc);
                                } else {
                                    unsafe3.putObject(obj, j, zzot.zzg(object, zzmxVar.zzc));
                                }
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 10:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 2) {
                                iZzt = zzmy.zza(bArr, iZzk, zzmxVar);
                                unsafe3.putObject(obj, j, zzmxVar.zzc);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 12:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 0) {
                                iZzt = zzmy.zzj(bArr, iZzk, zzmxVar);
                                unsafe3.putInt(obj, j, zzmxVar.zza);
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 15:
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            if (i21 == 0) {
                                iZzt = zzmy.zzj(bArr, iZzk, zzmxVar);
                                unsafe3.putInt(obj, j, zznp.zzb(zzmxVar.zza));
                                i17 |= i24;
                                unsafe5 = unsafe3;
                                i16 = i12;
                                i18 = i11;
                                i15 = i4;
                            }
                            i10 = iZzk;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                        case 16:
                            if (i21 != 0) {
                                i11 = i18;
                                i4 = i20;
                                unsafe3 = unsafe2;
                                i10 = iZzk;
                                i12 = iZzx;
                                i9 = i10;
                                unsafe = unsafe3;
                                i5 = i12;
                                i18 = i11;
                            } else {
                                int iZzm2 = zzmy.zzm(bArr, iZzk, zzmxVar);
                                i11 = i18;
                                i4 = i20;
                                unsafe2.putLong(obj, j, zznp.zzc(zzmxVar.zzb));
                                i17 |= i24;
                                unsafe5 = unsafe2;
                                i16 = iZzx;
                                iZzt = iZzm2;
                                i18 = i11;
                                i15 = i4;
                            }
                            break;
                        default:
                            i10 = iZzk;
                            i11 = i18;
                            i12 = iZzx;
                            i4 = i20;
                            unsafe3 = unsafe2;
                            i9 = i10;
                            unsafe = unsafe3;
                            i5 = i12;
                            i18 = i11;
                            break;
                    }
                } else {
                    i4 = i20;
                    int i26 = iZzk;
                    int i27 = i18;
                    if (iZzA != 27) {
                        i5 = iZzx;
                        if (iZzA <= 49) {
                            i7 = i17;
                            i8 = i27;
                            unsafe = unsafe6;
                            iZzt = zzv(obj, bArr, i26, i2, i3, i4, i21, i5, i22, iZzA, j, zzmxVar);
                            if (iZzt != i26) {
                                i15 = i4;
                                i16 = i5;
                                i17 = i7;
                                i18 = i8;
                            } else {
                                i9 = iZzt;
                                i17 = i7;
                                i18 = i8;
                            }
                        } else {
                            i6 = i26;
                            i7 = i17;
                            unsafe = unsafe6;
                            i8 = i27;
                            if (iZzA == 50) {
                                if (i21 == 2) {
                                    iZzt = zzs(obj, bArr, i6, i2, i5, j, zzmxVar);
                                    if (iZzt != i6) {
                                        i15 = i4;
                                        i16 = i5;
                                        i17 = i7;
                                        i18 = i8;
                                    } else {
                                        i9 = iZzt;
                                    }
                                }
                                i17 = i7;
                                i18 = i8;
                            } else {
                                iZzt = zzt(obj, bArr, i6, i2, i3, i4, i21, i22, iZzA, j, i5, zzmxVar);
                                if (iZzt != i6) {
                                    i15 = i4;
                                    i16 = i5;
                                    i17 = i7;
                                    i18 = i8;
                                } else {
                                    i9 = iZzt;
                                    i17 = i7;
                                    i18 = i8;
                                }
                            }
                        }
                        unsafe5 = unsafe;
                    } else if (i21 == 2) {
                        zzos zzosVarZzd = (zzos) unsafe6.getObject(obj, j);
                        if (!zzosVarZzd.zzc()) {
                            int size = zzosVarZzd.size();
                            zzosVarZzd = zzosVarZzd.zzd(size == 0 ? 10 : size + size);
                            unsafe6.putObject(obj, j, zzosVarZzd);
                        }
                        iZzt = zzmy.zze(this.zzE(iZzx), i3, bArr, i26, i2, zzosVarZzd, zzmxVar);
                        unsafe5 = unsafe6;
                        i17 = i17;
                        i18 = i27;
                        i15 = i4;
                        i16 = iZzx;
                    } else {
                        i5 = iZzx;
                        i6 = i26;
                        i7 = i17;
                        unsafe = unsafe6;
                        i8 = i27;
                    }
                    i9 = i6;
                    i17 = i7;
                    i18 = i8;
                }
                i14 = 1048575;
                i13 = -1;
            }
            iZzt = zzmy.zzi(i3, bArr, i9, i2, zzd(obj), zzmxVar);
            i15 = i4;
            i16 = i5;
            unsafe5 = unsafe;
            i14 = 1048575;
            i13 = -1;
        }
        int i28 = i17;
        Unsafe unsafe7 = unsafe5;
        if (i18 != 1048575) {
            unsafe7.putInt(obj, i18, i28);
        }
        if (iZzt == i2) {
            return iZzt;
        }
        throw zzov.zze();
    }

    private final int zzv(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzmx zzmxVar) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        int iZzj;
        int iZzj2 = i;
        Unsafe unsafe = zzb;
        zzos zzosVarZzd = (zzos) unsafe.getObject(obj, j2);
        if (!zzosVarZzd.zzc()) {
            int size = zzosVarZzd.size();
            zzosVarZzd = zzosVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzosVarZzd);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zznv zznvVar = (zznv) zzosVarZzd;
                    int iZzj3 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i12 = zzmxVar.zza + iZzj3;
                    while (iZzj3 < i12) {
                        zznvVar.zze(Double.longBitsToDouble(zzmy.zzo(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i12) {
                        return iZzj3;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 1) {
                    zznv zznvVar2 = (zznv) zzosVarZzd;
                    zznvVar2.zze(Double.longBitsToDouble(zzmy.zzo(bArr, i)));
                    while (true) {
                        i8 = iZzj2 + 8;
                        if (i8 < i2) {
                            iZzj2 = zzmy.zzj(bArr, i8, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                zznvVar2.zze(Double.longBitsToDouble(zzmy.zzo(bArr, iZzj2)));
                            }
                        }
                    }
                    return i8;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzof zzofVar = (zzof) zzosVarZzd;
                    int iZzj4 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i13 = zzmxVar.zza + iZzj4;
                    while (iZzj4 < i13) {
                        zzofVar.zze(Float.intBitsToFloat(zzmy.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i13) {
                        return iZzj4;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 5) {
                    zzof zzofVar2 = (zzof) zzosVarZzd;
                    zzofVar2.zze(Float.intBitsToFloat(zzmy.zzb(bArr, i)));
                    while (true) {
                        i9 = iZzj2 + 4;
                        if (i9 < i2) {
                            iZzj2 = zzmy.zzj(bArr, i9, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                zzofVar2.zze(Float.intBitsToFloat(zzmy.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i9;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzph zzphVar = (zzph) zzosVarZzd;
                    int iZzj5 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i14 = zzmxVar.zza + iZzj5;
                    while (iZzj5 < i14) {
                        iZzj5 = zzmy.zzm(bArr, iZzj5, zzmxVar);
                        zzphVar.zzf(zzmxVar.zzb);
                    }
                    if (iZzj5 == i14) {
                        return iZzj5;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 0) {
                    zzph zzphVar2 = (zzph) zzosVarZzd;
                    int iZzm = zzmy.zzm(bArr, iZzj2, zzmxVar);
                    zzphVar2.zzf(zzmxVar.zzb);
                    while (iZzm < i2) {
                        int iZzj6 = zzmy.zzj(bArr, iZzm, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzmy.zzm(bArr, iZzj6, zzmxVar);
                        zzphVar2.zzf(zzmxVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzmy.zzf(bArr, iZzj2, zzosVarZzd, zzmxVar);
                }
                if (i5 == 0) {
                    return zzmy.zzl(i3, bArr, i, i2, zzosVarZzd, zzmxVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzph zzphVar3 = (zzph) zzosVarZzd;
                    int iZzj7 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i15 = zzmxVar.zza + iZzj7;
                    while (iZzj7 < i15) {
                        zzphVar3.zzf(zzmy.zzo(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i15) {
                        return iZzj7;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 1) {
                    zzph zzphVar4 = (zzph) zzosVarZzd;
                    zzphVar4.zzf(zzmy.zzo(bArr, i));
                    while (true) {
                        i10 = iZzj2 + 8;
                        if (i10 < i2) {
                            iZzj2 = zzmy.zzj(bArr, i10, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                zzphVar4.zzf(zzmy.zzo(bArr, iZzj2));
                            }
                        }
                    }
                    return i10;
                }
                return iZzj2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzoo zzooVar = (zzoo) zzosVarZzd;
                    int iZzj8 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i16 = zzmxVar.zza + iZzj8;
                    while (iZzj8 < i16) {
                        zzooVar.zzf(zzmy.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i16) {
                        return iZzj8;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 5) {
                    zzoo zzooVar2 = (zzoo) zzosVarZzd;
                    zzooVar2.zzf(zzmy.zzb(bArr, i));
                    while (true) {
                        i11 = iZzj2 + 4;
                        if (i11 < i2) {
                            iZzj2 = zzmy.zzj(bArr, i11, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                zzooVar2.zzf(zzmy.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i11;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzmz zzmzVar = (zzmz) zzosVarZzd;
                    iZzj = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i17 = zzmxVar.zza + iZzj;
                    while (iZzj < i17) {
                        iZzj = zzmy.zzm(bArr, iZzj, zzmxVar);
                        zzmzVar.zze(zzmxVar.zzb != 0);
                    }
                    if (iZzj != i17) {
                        throw zzov.zzg();
                    }
                    return iZzj;
                }
                if (i5 == 0) {
                    zzmz zzmzVar2 = (zzmz) zzosVarZzd;
                    int iZzm2 = zzmy.zzm(bArr, iZzj2, zzmxVar);
                    zzmzVar2.zze(zzmxVar.zzb != 0);
                    while (iZzm2 < i2) {
                        int iZzj9 = zzmy.zzj(bArr, iZzm2, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzmy.zzm(bArr, iZzj9, zzmxVar);
                        zzmzVar2.zze(zzmxVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iZzj2 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                        int i18 = zzmxVar.zza;
                        if (i18 < 0) {
                            throw zzov.zzd();
                        }
                        if (i18 == 0) {
                            zzosVarZzd.add("");
                        } else {
                            zzosVarZzd.add(new String(bArr, iZzj2, i18, zzot.zzb));
                            iZzj2 += i18;
                        }
                        while (iZzj2 < i2) {
                            int iZzj10 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                iZzj2 = zzmy.zzj(bArr, iZzj10, zzmxVar);
                                int i19 = zzmxVar.zza;
                                if (i19 < 0) {
                                    throw zzov.zzd();
                                }
                                if (i19 == 0) {
                                    zzosVarZzd.add("");
                                } else {
                                    zzosVarZzd.add(new String(bArr, iZzj2, i19, zzot.zzb));
                                    iZzj2 += i19;
                                }
                            }
                        }
                    } else {
                        iZzj2 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                        int i20 = zzmxVar.zza;
                        if (i20 < 0) {
                            throw zzov.zzd();
                        }
                        if (i20 == 0) {
                            zzosVarZzd.add("");
                        } else {
                            int i21 = iZzj2 + i20;
                            if (!zzrk.zzf(bArr, iZzj2, i21)) {
                                throw zzov.zzc();
                            }
                            zzosVarZzd.add(new String(bArr, iZzj2, i20, zzot.zzb));
                            iZzj2 = i21;
                        }
                        while (iZzj2 < i2) {
                            int iZzj11 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                            if (i3 == zzmxVar.zza) {
                                iZzj2 = zzmy.zzj(bArr, iZzj11, zzmxVar);
                                int i22 = zzmxVar.zza;
                                if (i22 < 0) {
                                    throw zzov.zzd();
                                }
                                if (i22 == 0) {
                                    zzosVarZzd.add("");
                                } else {
                                    int i23 = iZzj2 + i22;
                                    if (!zzrk.zzf(bArr, iZzj2, i23)) {
                                        throw zzov.zzc();
                                    }
                                    zzosVarZzd.add(new String(bArr, iZzj2, i22, zzot.zzb));
                                    iZzj2 = i23;
                                }
                            }
                        }
                    }
                }
                return iZzj2;
            case 27:
                if (i5 == 2) {
                    return zzmy.zze(zzE(i6), i3, bArr, i, i2, zzosVarZzd, zzmxVar);
                }
                return iZzj2;
            case 28:
                if (i5 == 2) {
                    int iZzj12 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i24 = zzmxVar.zza;
                    if (i24 < 0) {
                        throw zzov.zzd();
                    }
                    if (i24 > bArr.length - iZzj12) {
                        throw zzov.zzg();
                    }
                    if (i24 == 0) {
                        zzosVarZzd.add(zznl.zzb);
                    } else {
                        zzosVarZzd.add(zznl.zzl(bArr, iZzj12, i24));
                        iZzj12 += i24;
                    }
                    while (iZzj12 < i2) {
                        int iZzj13 = zzmy.zzj(bArr, iZzj12, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzmy.zzj(bArr, iZzj13, zzmxVar);
                        int i25 = zzmxVar.zza;
                        if (i25 < 0) {
                            throw zzov.zzd();
                        }
                        if (i25 > bArr.length - iZzj12) {
                            throw zzov.zzg();
                        }
                        if (i25 == 0) {
                            zzosVarZzd.add(zznl.zzb);
                        } else {
                            zzosVarZzd.add(zznl.zzl(bArr, iZzj12, i25));
                            iZzj12 += i25;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZzj = zzmy.zzl(i3, bArr, i, i2, zzosVarZzd, zzmxVar);
                    }
                    return iZzj2;
                }
                iZzj = zzmy.zzf(bArr, iZzj2, zzosVarZzd, zzmxVar);
                zzon zzonVar = (zzon) obj;
                zzqw zzqwVar = zzonVar.zzc;
                if (zzqwVar == zzqw.zzc()) {
                    zzqwVar = null;
                }
                Object objZzC = zzqg.zzC(i4, zzosVarZzd, zzD(i6), zzqwVar, this.zzn);
                if (objZzC != null) {
                    zzonVar.zzc = (zzqw) objZzC;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzoo zzooVar3 = (zzoo) zzosVarZzd;
                    int iZzj14 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i26 = zzmxVar.zza + iZzj14;
                    while (iZzj14 < i26) {
                        iZzj14 = zzmy.zzj(bArr, iZzj14, zzmxVar);
                        zzooVar3.zzf(zznp.zzb(zzmxVar.zza));
                    }
                    if (iZzj14 == i26) {
                        return iZzj14;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 0) {
                    zzoo zzooVar4 = (zzoo) zzosVarZzd;
                    int iZzj15 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    zzooVar4.zzf(zznp.zzb(zzmxVar.zza));
                    while (iZzj15 < i2) {
                        int iZzj16 = zzmy.zzj(bArr, iZzj15, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzj15;
                        }
                        iZzj15 = zzmy.zzj(bArr, iZzj16, zzmxVar);
                        zzooVar4.zzf(zznp.zzb(zzmxVar.zza));
                    }
                    return iZzj15;
                }
                return iZzj2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzph zzphVar5 = (zzph) zzosVarZzd;
                    int iZzj17 = zzmy.zzj(bArr, iZzj2, zzmxVar);
                    int i27 = zzmxVar.zza + iZzj17;
                    while (iZzj17 < i27) {
                        iZzj17 = zzmy.zzm(bArr, iZzj17, zzmxVar);
                        zzphVar5.zzf(zznp.zzc(zzmxVar.zzb));
                    }
                    if (iZzj17 == i27) {
                        return iZzj17;
                    }
                    throw zzov.zzg();
                }
                if (i5 == 0) {
                    zzph zzphVar6 = (zzph) zzosVarZzd;
                    int iZzm3 = zzmy.zzm(bArr, iZzj2, zzmxVar);
                    zzphVar6.zzf(zznp.zzc(zzmxVar.zzb));
                    while (iZzm3 < i2) {
                        int iZzj18 = zzmy.zzj(bArr, iZzm3, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzmy.zzm(bArr, iZzj18, zzmxVar);
                        zzphVar6.zzf(zznp.zzc(zzmxVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i5 == 3) {
                    zzqe zzqeVarZzE = zzE(i6);
                    int i28 = (i3 & (-8)) | 4;
                    int iZzc = zzmy.zzc(zzqeVarZzE, bArr, i, i2, i28, zzmxVar);
                    zzosVarZzd.add(zzmxVar.zzc);
                    while (iZzc < i2) {
                        int iZzj19 = zzmy.zzj(bArr, iZzc, zzmxVar);
                        if (i3 != zzmxVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzmy.zzc(zzqeVarZzE, bArr, iZzj19, i2, i28, zzmxVar);
                        zzosVarZzd.add(zzmxVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private final int zzw(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, 0);
    }

    private final int zzx(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, i2);
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final int zza(Object obj) {
        return this.zzi ? zzq(obj) : zzp(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final int zzb(Object obj) {
        int i;
        int iZzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzB = zzB(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzB;
            int iHashCode = 37;
            switch (zzA(iZzB)) {
                case 0:
                    i = i2 * 53;
                    iZzc = zzot.zzc(Double.doubleToLongBits(zzrf.zza(obj, j)));
                    i2 = i + iZzc;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzc = Float.floatToIntBits(zzrf.zzb(obj, j));
                    i2 = i + iZzc;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzc = zzot.zzc(zzrf.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzc = zzot.zzc(zzrf.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzc = zzot.zzc(zzrf.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzc = zzot.zza(zzrf.zzw(obj, j));
                    i2 = i + iZzc;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzc = ((String) zzrf.zzf(obj, j)).hashCode();
                    i2 = i + iZzc;
                    break;
                case 9:
                    Object objZzf = zzrf.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzc = zzrf.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzc = zzot.zzc(zzrf.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzc = zzrf.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzc = zzot.zzc(zzrf.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzrf.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZzc = zzrf.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzc = zzrf.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 51:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i2 = i + iZzc;
                    }
                    break;
                case 52:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = Float.floatToIntBits(zzo(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 53:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 54:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 55:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 56:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 57:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 58:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zza(zzQ(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 59:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = ((String) zzrf.zzf(obj, j)).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 60:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzrf.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 61:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzrf.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 62:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 63:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 64:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 65:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 66:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 67:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzot.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 68:
                    if (zzP(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzrf.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzn.zzc(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzo.zzb(obj).zza.hashCode() : iHashCode2;
    }

    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzmx zzmxVar) throws IOException {
        Unsafe unsafe;
        int i4;
        Object obj2;
        zzpv<T> zzpvVar;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        zzmx zzmxVar2;
        int i12;
        Object obj3;
        Object objValueOf;
        int i13;
        int i14;
        int i15;
        int i16;
        int iZzm;
        int i17;
        Object obj4;
        int i18;
        int i19;
        zzpv<T> zzpvVar2 = this;
        Object obj5 = obj;
        bArr = bArr;
        int i20 = i2;
        i3 = i3;
        zzmx zzmxVar3 = zzmxVar;
        Unsafe unsafe2 = zzb;
        int iZzi = i;
        int i21 = 0;
        int i22 = -1;
        int i23 = 0;
        int i24 = 0;
        int i25 = 1048575;
        while (true) {
            Object objValueOf2 = null;
            if (iZzi < i20) {
                int iZzm2 = iZzi + 1;
                byte b = bArr[iZzi];
                if (b < 0) {
                    int iZzk = zzmy.zzk(b, bArr, iZzm2, zzmxVar3);
                    i7 = zzmxVar3.zza;
                    iZzm2 = iZzk;
                } else {
                    i7 = b;
                }
                int i26 = i7 >>> 3;
                int i27 = i7 & 7;
                int iZzx = i26 > i22 ? zzpvVar2.zzx(i26, i23 / 3) : zzpvVar2.zzw(i26);
                if (iZzx == -1) {
                    i8 = i26;
                    iZzm2 = iZzm2;
                    i9 = i7;
                    i10 = i24;
                    unsafe = unsafe2;
                    i3 = i3;
                    i11 = 0;
                } else {
                    int[] iArr = zzpvVar2.zzc;
                    int i28 = iArr[iZzx + 1];
                    int iZzA = zzA(i28);
                    i22 = i26;
                    long j = i28 & 1048575;
                    int i29 = i7;
                    if (iZzA <= 17) {
                        int i30 = iArr[iZzx + 2];
                        int i31 = 1 << (i30 >>> 20);
                        int i32 = i30 & 1048575;
                        if (i32 != i25) {
                            if (i25 != 1048575) {
                                long j2 = i25;
                                obj4 = obj;
                                unsafe2.putInt(obj4, j2, i24);
                            } else {
                                obj4 = obj;
                            }
                            i24 = unsafe2.getInt(obj4, i32);
                            i13 = i32;
                            obj5 = obj4;
                        } else {
                            obj5 = obj;
                            i13 = i25;
                        }
                        int i33 = i24;
                        switch (iZzA) {
                            case 0:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                iZzm2 = iZzm2;
                                if (i27 == 1) {
                                    zzrf.zzo(obj5, j, Double.longBitsToDouble(zzmy.zzo(bArr, iZzm2)));
                                    iZzi = iZzm2 + 8;
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 1:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                iZzm2 = iZzm2;
                                if (i27 == 5) {
                                    zzrf.zzp(obj5, j, Float.intBitsToFloat(zzmy.zzb(bArr, iZzm2)));
                                    iZzi = iZzm2 + 4;
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 2:
                            case 3:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                iZzm2 = iZzm2;
                                if (i27 == 0) {
                                    iZzm = zzmy.zzm(bArr, iZzm2, zzmxVar3);
                                    unsafe2.putLong(obj, j, zzmxVar3.zzb);
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    iZzi = iZzm;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 4:
                            case 11:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                iZzm2 = iZzm2;
                                if (i27 == 0) {
                                    iZzi = zzmy.zzj(bArr, iZzm2, zzmxVar3);
                                    unsafe2.putInt(obj5, j, zzmxVar3.zza);
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 5:
                            case 14:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 1) {
                                    unsafe2.putLong(obj, j, zzmy.zzo(bArr, iZzm2));
                                    iZzi = iZzm2 + 8;
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    iZzm2 = iZzm2;
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 6:
                            case 13:
                                i17 = i2;
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 5) {
                                    unsafe2.putInt(obj5, j, zzmy.zzb(bArr, iZzm2));
                                    iZzi = iZzm2 + 4;
                                    int i34 = i33 | i31;
                                    i25 = i14;
                                    i23 = i16;
                                    i22 = i22;
                                    i20 = i17;
                                    i24 = i34;
                                    i21 = i15;
                                    i3 = i3;
                                } else {
                                    iZzm2 = iZzm2;
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 7:
                                i17 = i2;
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 0) {
                                    iZzi = zzmy.zzm(bArr, iZzm2, zzmxVar3);
                                    zzrf.zzm(obj5, j, zzmxVar3.zzb != 0);
                                    int i35 = i33 | i31;
                                    i25 = i14;
                                    i23 = i16;
                                    i22 = i22;
                                    i20 = i17;
                                    i24 = i35;
                                    i21 = i15;
                                    i3 = i3;
                                } else {
                                    iZzm2 = iZzm2;
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 8:
                                i17 = i2;
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 2) {
                                    iZzi = (536870912 & i28) == 0 ? zzmy.zzg(bArr, iZzm2, zzmxVar3) : zzmy.zzh(bArr, iZzm2, zzmxVar3);
                                    unsafe2.putObject(obj5, j, zzmxVar3.zzc);
                                    int i36 = i33 | i31;
                                    i25 = i14;
                                    i23 = i16;
                                    i22 = i22;
                                    i20 = i17;
                                    i24 = i36;
                                    i21 = i15;
                                    i3 = i3;
                                } else {
                                    iZzm2 = iZzm2;
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 9:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 2) {
                                    i17 = i2;
                                    iZzi = zzmy.zzd(zzpvVar2.zzE(i16), bArr, iZzm2, i17, zzmxVar3);
                                    if ((i33 & i31) == 0) {
                                        unsafe2.putObject(obj5, j, zzmxVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj5, j, zzot.zzg(unsafe2.getObject(obj5, j), zzmxVar3.zzc));
                                    }
                                    int i37 = i33 | i31;
                                    i25 = i14;
                                    i23 = i16;
                                    i22 = i22;
                                    i20 = i17;
                                    i24 = i37;
                                    i21 = i15;
                                    i3 = i3;
                                } else {
                                    iZzm2 = iZzm2;
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 10:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 2) {
                                    iZzi = zzmy.zza(bArr, iZzm2, zzmxVar3);
                                    unsafe2.putObject(obj5, j, zzmxVar3.zzc);
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 12:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 0) {
                                    iZzi = zzmy.zzj(bArr, iZzm2, zzmxVar3);
                                    int i38 = zzmxVar3.zza;
                                    zzor zzorVarZzD = zzpvVar2.zzD(i16);
                                    if (zzorVarZzD == null || zzorVarZzD.zza(i38)) {
                                        unsafe2.putInt(obj5, j, i38);
                                        i24 = i33 | i31;
                                        i25 = i14;
                                        i21 = i15;
                                        i23 = i16;
                                    } else {
                                        zzd(obj).zzh(i15, Long.valueOf(i38));
                                        i24 = i33;
                                        i21 = i15;
                                        i23 = i16;
                                        i25 = i14;
                                    }
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 15:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                if (i27 == 0) {
                                    iZzi = zzmy.zzj(bArr, iZzm2, zzmxVar3);
                                    unsafe2.putInt(obj5, j, zznp.zzb(zzmxVar3.zza));
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            case 16:
                                if (i27 == 0) {
                                    iZzm = zzmy.zzm(bArr, iZzm2, zzmxVar3);
                                    i14 = i13;
                                    i16 = iZzx;
                                    i15 = i29;
                                    unsafe2.putLong(obj, j, zznp.zzc(zzmxVar3.zzb));
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    iZzi = iZzm;
                                    i21 = i15;
                                    i23 = i16;
                                    i20 = i2;
                                    i3 = i3;
                                } else {
                                    i14 = i13;
                                    i16 = iZzx;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                            default:
                                i14 = i13;
                                i15 = i29;
                                i16 = iZzx;
                                iZzm2 = iZzm2;
                                if (i27 == 3) {
                                    iZzi = zzmy.zzc(zzpvVar2.zzE(i16), bArr, iZzm2, i2, (i22 << 3) | 4, zzmxVar);
                                    if ((i33 & i31) == 0) {
                                        unsafe2.putObject(obj5, j, zzmxVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj5, j, zzot.zzg(unsafe2.getObject(obj5, j), zzmxVar3.zzc));
                                    }
                                    i24 = i33 | i31;
                                    i25 = i14;
                                    i23 = i16;
                                    i22 = i22;
                                    i21 = i15;
                                    i20 = i2;
                                } else {
                                    i29 = i15;
                                    i3 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i8 = i22;
                                    i9 = i29;
                                    i10 = i33;
                                    i25 = i14;
                                }
                                break;
                        }
                    } else {
                        obj5 = obj;
                        int i39 = iZzx;
                        int i40 = iZzm2;
                        if (iZzA != 27) {
                            i10 = i24;
                            i18 = i25;
                            if (iZzA <= 49) {
                                i8 = i22;
                                unsafe = unsafe2;
                                i11 = i39;
                                iZzi = zzv(obj, bArr, i40, i2, i29, i22, i27, i39, i28, iZzA, j, zzmxVar);
                                if (iZzi != i40) {
                                    zzpvVar2 = this;
                                    obj5 = obj;
                                    bArr = bArr;
                                    i20 = i2;
                                    i3 = i3;
                                    zzmxVar3 = zzmxVar;
                                    i24 = i10;
                                    i22 = i8;
                                    i21 = i29;
                                    i25 = i18;
                                    i23 = i11;
                                    unsafe2 = unsafe;
                                } else {
                                    iZzm2 = iZzi;
                                    i9 = i29;
                                    i25 = i18;
                                }
                            } else {
                                i19 = i40;
                                i8 = i22;
                                unsafe = unsafe2;
                                i11 = i39;
                                if (iZzA != 50) {
                                    iZzi = zzt(obj, bArr, i19, i2, i29, i8, i27, i28, iZzA, j, i11, zzmxVar);
                                    if (iZzi != i19) {
                                        zzpvVar2 = this;
                                        obj5 = obj;
                                        bArr = bArr;
                                        i20 = i2;
                                        i3 = i3;
                                        zzmxVar3 = zzmxVar;
                                        i24 = i10;
                                        i22 = i8;
                                        i21 = i29;
                                        i25 = i18;
                                        i23 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        iZzm2 = iZzi;
                                        i9 = i29;
                                        i25 = i18;
                                    }
                                } else if (i27 == 2) {
                                    iZzi = zzs(obj, bArr, i19, i2, i11, j, zzmxVar);
                                    if (iZzi != i19) {
                                        zzpvVar2 = this;
                                        obj5 = obj;
                                        bArr = bArr;
                                        i20 = i2;
                                        i3 = i3;
                                        zzmxVar3 = zzmxVar;
                                        i24 = i10;
                                        i22 = i8;
                                        i21 = i29;
                                        i25 = i18;
                                        i23 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        iZzm2 = iZzi;
                                        i9 = i29;
                                        i25 = i18;
                                    }
                                }
                            }
                        } else if (i27 == 2) {
                            zzos zzosVarZzd = (zzos) unsafe2.getObject(obj5, j);
                            if (!zzosVarZzd.zzc()) {
                                int size = zzosVarZzd.size();
                                zzosVarZzd = zzosVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj5, j, zzosVarZzd);
                            }
                            i21 = i29;
                            iZzi = zzmy.zze(zzpvVar2.zzE(i39), i21, bArr, i40, i2, zzosVarZzd, zzmxVar);
                            i22 = i22;
                            i23 = i39;
                            i24 = i24;
                            i25 = i25;
                            i20 = i2;
                        } else {
                            i10 = i24;
                            i18 = i25;
                            i19 = i40;
                            i8 = i22;
                            unsafe = unsafe2;
                            i11 = i39;
                        }
                        iZzm2 = i19;
                        i9 = i29;
                        i25 = i18;
                    }
                }
                if (i9 != i3 || i3 == 0) {
                    if (this.zzh) {
                        zzmxVar2 = zzmxVar;
                        if (zzmxVar2.zzd != zzny.zza()) {
                            i12 = i8;
                            zzol zzolVarZzc = zzmxVar2.zzd.zzc(this.zzg, i12);
                            if (zzolVarZzc != null) {
                                obj = obj;
                                zzoj zzojVar = (zzoj) obj;
                                zzojVar.zzc();
                                zzod zzodVar = zzojVar.zzb;
                                zzrl zzrlVar = zzolVarZzc.zzd.zzc;
                                if (zzrlVar == zzrl.zzn) {
                                    zzmy.zzj(bArr, iZzm2, zzmxVar2);
                                    throw null;
                                }
                                switch (zzrlVar.ordinal()) {
                                    case 0:
                                        bArr = bArr;
                                        objValueOf2 = Double.valueOf(Double.longBitsToDouble(zzmy.zzo(bArr, iZzm2)));
                                        iZzm2 += 8;
                                        obj3 = objValueOf2;
                                        zzok zzokVar = zzolVarZzc.zzd;
                                        boolean z = zzokVar.zzd;
                                        zzodVar.zzg(zzokVar, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 1:
                                        bArr = bArr;
                                        objValueOf2 = Float.valueOf(Float.intBitsToFloat(zzmy.zzb(bArr, iZzm2)));
                                        iZzm2 += 4;
                                        obj3 = objValueOf2;
                                        zzok zzokVar2 = zzolVarZzc.zzd;
                                        boolean z2 = zzokVar2.zzd;
                                        zzodVar.zzg(zzokVar2, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 2:
                                    case 3:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        iZzm2 = zzmy.zzm(bArr, iZzm2, zzmxVar2);
                                        objValueOf2 = Long.valueOf(zzmxVar2.zzb);
                                        obj3 = objValueOf2;
                                        zzok zzokVar3 = zzolVarZzc.zzd;
                                        boolean z3 = zzokVar3.zzd;
                                        zzodVar.zzg(zzokVar3, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 4:
                                    case 12:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        iZzm2 = zzmy.zzj(bArr, iZzm2, zzmxVar2);
                                        objValueOf2 = Integer.valueOf(zzmxVar2.zza);
                                        obj3 = objValueOf2;
                                        zzok zzokVar4 = zzolVarZzc.zzd;
                                        boolean z4 = zzokVar4.zzd;
                                        zzodVar.zzg(zzokVar4, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 5:
                                    case 15:
                                        bArr = bArr;
                                        objValueOf2 = Long.valueOf(zzmy.zzo(bArr, iZzm2));
                                        iZzm2 += 8;
                                        obj3 = objValueOf2;
                                        zzok zzokVar5 = zzolVarZzc.zzd;
                                        boolean z5 = zzokVar5.zzd;
                                        zzodVar.zzg(zzokVar5, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 6:
                                    case 14:
                                        bArr = bArr;
                                        objValueOf2 = Integer.valueOf(zzmy.zzb(bArr, iZzm2));
                                        iZzm2 += 4;
                                        obj3 = objValueOf2;
                                        zzok zzokVar6 = zzolVarZzc.zzd;
                                        boolean z6 = zzokVar6.zzd;
                                        zzodVar.zzg(zzokVar6, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 7:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        iZzm2 = zzmy.zzm(bArr, iZzm2, zzmxVar2);
                                        objValueOf2 = Boolean.valueOf(zzmxVar2.zzb != 0);
                                        obj3 = objValueOf2;
                                        zzok zzokVar7 = zzolVarZzc.zzd;
                                        boolean z7 = zzokVar7.zzd;
                                        zzodVar.zzg(zzokVar7, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 8:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        iZzm2 = zzmy.zzg(bArr, iZzm2, zzmxVar2);
                                        obj3 = zzmxVar2.zzc;
                                        zzok zzokVar8 = zzolVarZzc.zzd;
                                        boolean z8 = zzokVar8.zzd;
                                        zzodVar.zzg(zzokVar8, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 9:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        iZzm2 = zzmy.zzc(zzqb.zza().zzb(zzolVarZzc.zzc.getClass()), bArr, iZzm2, i2, (i12 << 3) | 4, zzmxVar);
                                        obj3 = zzmxVar2.zzc;
                                        zzok zzokVar9 = zzolVarZzc.zzd;
                                        boolean z9 = zzokVar9.zzd;
                                        zzodVar.zzg(zzokVar9, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 10:
                                        bArr = bArr;
                                        iZzm2 = zzmy.zzd(zzqb.zza().zzb(zzolVarZzc.zzc.getClass()), bArr, iZzm2, i2, zzmxVar2);
                                        obj3 = zzmxVar2.zzc;
                                        i25 = i25;
                                        i2 = i2;
                                        zzok zzokVar10 = zzolVarZzc.zzd;
                                        boolean z10 = zzokVar10.zzd;
                                        zzodVar.zzg(zzokVar10, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 11:
                                        bArr = bArr;
                                        iZzm2 = zzmy.zza(bArr, iZzm2, zzmxVar2);
                                        obj3 = zzmxVar2.zzc;
                                        i2 = i2;
                                        zzok zzokVar11 = zzolVarZzc.zzd;
                                        boolean z11 = zzokVar11.zzd;
                                        zzodVar.zzg(zzokVar11, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 13:
                                        throw new IllegalStateException("Shouldn't reach here.");
                                    case 16:
                                        bArr = bArr;
                                        iZzm2 = zzmy.zzj(bArr, iZzm2, zzmxVar2);
                                        objValueOf = Integer.valueOf(zznp.zzb(zzmxVar2.zza));
                                        obj3 = objValueOf;
                                        i2 = i2;
                                        zzok zzokVar12 = zzolVarZzc.zzd;
                                        boolean z12 = zzokVar12.zzd;
                                        zzodVar.zzg(zzokVar12, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    case 17:
                                        bArr = bArr;
                                        iZzm2 = zzmy.zzm(bArr, iZzm2, zzmxVar2);
                                        objValueOf = Long.valueOf(zznp.zzc(zzmxVar2.zzb));
                                        obj3 = objValueOf;
                                        i2 = i2;
                                        zzok zzokVar13 = zzolVarZzc.zzd;
                                        boolean z13 = zzokVar13.zzd;
                                        zzodVar.zzg(zzokVar13, obj3);
                                        iZzi = iZzm2;
                                        break;
                                    default:
                                        bArr = bArr;
                                        i25 = i25;
                                        i2 = i2;
                                        obj3 = objValueOf2;
                                        zzok zzokVar14 = zzolVarZzc.zzd;
                                        boolean z14 = zzokVar14.zzd;
                                        zzodVar.zzg(zzokVar14, obj3);
                                        iZzi = iZzm2;
                                        break;
                                }
                            } else {
                                iZzi = zzmy.zzi(i9, bArr, iZzm2, i2, zzd(obj), zzmxVar);
                                obj = obj;
                                bArr = bArr;
                                i25 = i25;
                                i2 = i2;
                            }
                        }
                        i21 = i9;
                        i22 = i12;
                        obj5 = obj;
                        bArr = bArr;
                        i24 = i10;
                        i23 = i11;
                        i20 = i2;
                        i3 = i3;
                        zzpvVar2 = this;
                        zzmxVar3 = zzmxVar2;
                        unsafe2 = unsafe;
                        i25 = i25;
                    } else {
                        zzmxVar2 = zzmxVar;
                    }
                    i25 = i25;
                    i12 = i8;
                    i2 = i2;
                    iZzi = zzmy.zzi(i9, bArr, iZzm2, i2, zzd(obj), zzmxVar);
                    i21 = i9;
                    i22 = i12;
                    obj5 = obj;
                    bArr = bArr;
                    i24 = i10;
                    i23 = i11;
                    i20 = i2;
                    i3 = i3;
                    zzpvVar2 = this;
                    zzmxVar3 = zzmxVar2;
                    unsafe2 = unsafe;
                    i25 = i25;
                } else {
                    zzpvVar = this;
                    obj2 = obj;
                    iZzi = iZzm2;
                    i5 = i25;
                    i21 = i9;
                    i24 = i10;
                    i6 = 1048575;
                    i4 = i2;
                }
            } else {
                int i41 = i25;
                unsafe = unsafe2;
                i3 = i3;
                i4 = i20;
                obj2 = obj5;
                zzpvVar = zzpvVar2;
                i5 = i41;
                i6 = 1048575;
            }
        }
        if (i5 != i6) {
            unsafe.putInt(obj2, i5, i24);
        }
        for (int i42 = zzpvVar.zzk; i42 < zzpvVar.zzl; i42++) {
            int i43 = zzpvVar.zzj[i42];
            int i44 = zzpvVar.zzc[i43];
            Object objZzf = zzrf.zzf(obj2, zzpvVar.zzB(i43) & i6);
            if (objZzf != null && zzpvVar.zzD(i43) != null) {
                throw null;
            }
        }
        if (i3 == 0) {
            if (iZzi != i4) {
                throw zzov.zze();
            }
        } else if (iZzi > i4 || i21 != i3) {
            throw zzov.zze();
        }
        return iZzi;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final Object zze() {
        return ((zzon) this.zzg).zzf(4, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long jZzB = zzB(this.zzj[i2]) & 1048575;
            Object objZzf = zzrf.zzf(obj, jZzB);
            if (objZzf != null) {
                ((zzpm) objZzf).zzc();
                zzrf.zzs(obj, jZzB, objZzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(obj, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zze(obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzg(Object obj, Object obj2) {
        Objects.requireNonNull(obj2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzB = zzB(i);
            long j = 1048575 & iZzB;
            int i2 = this.zzc[i];
            switch (zzA(iZzB)) {
                case 0:
                    if (zzM(obj2, i)) {
                        zzrf.zzo(obj, j, zzrf.zza(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 1:
                    if (zzM(obj2, i)) {
                        zzrf.zzp(obj, j, zzrf.zzb(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 2:
                    if (zzM(obj2, i)) {
                        zzrf.zzr(obj, j, zzrf.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 3:
                    if (zzM(obj2, i)) {
                        zzrf.zzr(obj, j, zzrf.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 4:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 5:
                    if (zzM(obj2, i)) {
                        zzrf.zzr(obj, j, zzrf.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 6:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 7:
                    if (zzM(obj2, i)) {
                        zzrf.zzm(obj, j, zzrf.zzw(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 8:
                    if (zzM(obj2, i)) {
                        zzrf.zzs(obj, j, zzrf.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzM(obj2, i)) {
                        zzrf.zzs(obj, j, zzrf.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 11:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 12:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 13:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 14:
                    if (zzM(obj2, i)) {
                        zzrf.zzr(obj, j, zzrf.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 15:
                    if (zzM(obj2, i)) {
                        zzrf.zzq(obj, j, zzrf.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 16:
                    if (zzM(obj2, i)) {
                        zzrf.zzr(obj, j, zzrf.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 17:
                    zzH(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzqg.zzI(this.zzq, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzP(obj2, i2, i)) {
                        zzrf.zzs(obj, j, zzrf.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzP(obj2, i2, i)) {
                        zzrf.zzs(obj, j, zzrf.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzqg.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzqg.zzE(this.zzo, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzmx zzmxVar) throws IOException {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzmxVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzmxVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final boolean zzi(Object obj, Object obj2) {
        boolean zZzH;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzB = zzB(i);
            long j = iZzB & 1048575;
            switch (zzA(iZzB)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzrf.zza(obj, j)) != Double.doubleToLongBits(zzrf.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzrf.zzb(obj, j)) != Float.floatToIntBits(zzrf.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzrf.zzd(obj, j) != zzrf.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzrf.zzd(obj, j) != zzrf.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzrf.zzd(obj, j) != zzrf.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzrf.zzw(obj, j) != zzrf.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzrf.zzd(obj, j) != zzrf.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzrf.zzc(obj, j) != zzrf.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzrf.zzd(obj, j) != zzrf.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzH = zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j));
                    break;
                case 50:
                    zZzH = zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzy = zzy(i) & 1048575;
                    if (zzrf.zzc(obj, jZzy) != zzrf.zzc(obj2, jZzy) || !zzqg.zzH(zzrf.zzf(obj, j), zzrf.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzH) {
                return false;
            }
        }
        if (!this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzo.zzb(obj).equals(this.zzo.zzb(obj2));
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[LOOP:1: B:45:0x00b1->B:50:0x00c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00df A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final boolean zzj(Object obj) {
        int i;
        int i2;
        List list;
        zzqe zzqeVarZzE;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.zzk) {
            int i7 = this.zzj[i6];
            int i8 = this.zzc[i7];
            int iZzB = zzB(i7);
            int i9 = this.zzc[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = zzb.getInt(obj, i10);
                }
                i2 = i5;
                i = i10;
            } else {
                i = i4;
                i2 = i5;
            }
            if ((268435456 & iZzB) != 0 && !zzN(obj, i7, i, i2, i11)) {
                return false;
            }
            int iZzA = zzA(iZzB);
            if (iZzA == 9 || iZzA == 17) {
                if (zzN(obj, i7, i, i2, i11) && !zzO(obj, iZzB, zzE(i7))) {
                    return false;
                }
            } else if (iZzA == 27) {
                list = (List) zzrf.zzf(obj, iZzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzqeVarZzE = zzE(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzqeVarZzE.zzj(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzA == 60 || iZzA == 68) {
                if (zzP(obj, i8, i7) && !zzO(obj, iZzB, zzE(i7))) {
                    return false;
                }
            } else if (iZzA == 49) {
                list = (List) zzrf.zzf(obj, iZzB & 1048575);
                if (list.isEmpty()) {
                    zzqeVarZzE = zzE(i7);
                    while (i3 < list.size()) {
                        if (!zzqeVarZzE.zzj(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzA == 50 && !((zzpm) zzrf.zzf(obj, iZzB & 1048575)).isEmpty()) {
                throw null;
            }
            i6++;
            i4 = i;
            i5 = i2;
        }
        return !this.zzh || this.zzo.zzb(obj).zzl();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0321  */
    /* JADX WARN: Code duplicated, block: B:101:0x0336  */
    /* JADX WARN: Code duplicated, block: B:102:0x0347  */
    /* JADX WARN: Code duplicated, block: B:103:0x0358  */
    /* JADX WARN: Code duplicated, block: B:104:0x0369  */
    /* JADX WARN: Code duplicated, block: B:105:0x037a  */
    /* JADX WARN: Code duplicated, block: B:106:0x038b  */
    /* JADX WARN: Code duplicated, block: B:107:0x039c  */
    /* JADX WARN: Code duplicated, block: B:108:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:109:0x03be  */
    /* JADX WARN: Code duplicated, block: B:110:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:112:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:113:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:115:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:116:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:118:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:119:0x0406  */
    /* JADX WARN: Code duplicated, block: B:121:0x040c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0417  */
    /* JADX WARN: Code duplicated, block: B:124:0x041d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0428  */
    /* JADX WARN: Code duplicated, block: B:127:0x042e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0439  */
    /* JADX WARN: Code duplicated, block: B:130:0x043f  */
    /* JADX WARN: Code duplicated, block: B:131:0x044a  */
    /* JADX WARN: Code duplicated, block: B:133:0x0450  */
    /* JADX WARN: Code duplicated, block: B:134:0x045d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0463  */
    /* JADX WARN: Code duplicated, block: B:137:0x0472  */
    /* JADX WARN: Code duplicated, block: B:139:0x0478  */
    /* JADX WARN: Code duplicated, block: B:140:0x0483  */
    /* JADX WARN: Code duplicated, block: B:142:0x0489  */
    /* JADX WARN: Code duplicated, block: B:143:0x0494  */
    /* JADX WARN: Code duplicated, block: B:145:0x049a  */
    /* JADX WARN: Code duplicated, block: B:146:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:148:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:149:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:151:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:152:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:154:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:155:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:157:0x04da  */
    /* JADX WARN: Code duplicated, block: B:158:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:160:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:161:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:163:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:176:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    /* JADX WARN: Code duplicated, block: B:245:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0066  */
    /* JADX WARN: Code duplicated, block: B:261:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:271:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:279:0x0503 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x0503 A[DONT_GENERATE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086  */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:34:0x009d  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00db  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:50:0x0103  */
    /* JADX WARN: Code duplicated, block: B:52:0x0109  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:55:0x011a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0125  */
    /* JADX WARN: Code duplicated, block: B:58:0x012b  */
    /* JADX WARN: Code duplicated, block: B:59:0x0136  */
    /* JADX WARN: Code duplicated, block: B:61:0x013c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0147  */
    /* JADX WARN: Code duplicated, block: B:64:0x014d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0158  */
    /* JADX WARN: Code duplicated, block: B:67:0x015e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0169  */
    /* JADX WARN: Code duplicated, block: B:70:0x016f  */
    /* JADX WARN: Code duplicated, block: B:71:0x017a  */
    /* JADX WARN: Code duplicated, block: B:73:0x0180  */
    /* JADX WARN: Code duplicated, block: B:74:0x018b  */
    /* JADX WARN: Code duplicated, block: B:76:0x0191  */
    /* JADX WARN: Code duplicated, block: B:77:0x019c  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:79:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x01de  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:83:0x0200  */
    /* JADX WARN: Code duplicated, block: B:84:0x0211  */
    /* JADX WARN: Code duplicated, block: B:85:0x0222  */
    /* JADX WARN: Code duplicated, block: B:86:0x0233  */
    /* JADX WARN: Code duplicated, block: B:87:0x0244  */
    /* JADX WARN: Code duplicated, block: B:88:0x0255  */
    /* JADX WARN: Code duplicated, block: B:89:0x0266  */
    /* JADX WARN: Code duplicated, block: B:90:0x0277  */
    /* JADX WARN: Code duplicated, block: B:91:0x0288  */
    /* JADX WARN: Code duplicated, block: B:92:0x0299  */
    /* JADX WARN: Code duplicated, block: B:93:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:94:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:95:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:96:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:97:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:98:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:99:0x0310  */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzqe
    public final void zzm(Object obj, zznu zznuVar) throws IOException {
        Iterator itZzf;
        Map.Entry entry;
        if (!this.zzi) {
            zzR(obj, zznuVar);
            return;
        }
        if (this.zzh) {
            zzod zzodVarZzb = this.zzo.zzb(obj);
            if (zzodVarZzb.zza.isEmpty()) {
                itZzf = null;
                entry = null;
            } else {
                itZzf = zzodVarZzb.zzf();
                entry = (Map.Entry) itZzf.next();
            }
        } else {
            itZzf = null;
            entry = null;
        }
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzB = zzB(i);
            int i2 = this.zzc[i];
            while (entry != null) {
                this.zzo.zza(entry);
                if (i2 >= 202056002) {
                    this.zzo.zzg(zznuVar, entry);
                    entry = itZzf.hasNext() ? (Map.Entry) itZzf.next() : null;
                } else {
                    switch (zzA(iZzB)) {
                        case 0:
                            if (zzM(obj, i)) {
                                zznuVar.zzf(i2, zzrf.zza(obj, iZzB & 1048575));
                            }
                            break;
                        case 1:
                            if (zzM(obj, i)) {
                                zznuVar.zzo(i2, zzrf.zzb(obj, iZzB & 1048575));
                            }
                            break;
                        case 2:
                            if (zzM(obj, i)) {
                                zznuVar.zzt(i2, zzrf.zzd(obj, iZzB & 1048575));
                            }
                            break;
                        case 3:
                            if (zzM(obj, i)) {
                                zznuVar.zzK(i2, zzrf.zzd(obj, iZzB & 1048575));
                            }
                            break;
                        case 4:
                            if (zzM(obj, i)) {
                                zznuVar.zzr(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 5:
                            if (zzM(obj, i)) {
                                zznuVar.zzm(i2, zzrf.zzd(obj, iZzB & 1048575));
                            }
                            break;
                        case 6:
                            if (zzM(obj, i)) {
                                zznuVar.zzk(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 7:
                            if (zzM(obj, i)) {
                                zznuVar.zzb(i2, zzrf.zzw(obj, iZzB & 1048575));
                            }
                            break;
                        case 8:
                            if (zzM(obj, i)) {
                                zzT(i2, zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                            }
                            break;
                        case 9:
                            if (zzM(obj, i)) {
                                zznuVar.zzv(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                            }
                            break;
                        case 10:
                            if (zzM(obj, i)) {
                                zznuVar.zzd(i2, (zznl) zzrf.zzf(obj, iZzB & 1048575));
                            }
                            break;
                        case 11:
                            if (zzM(obj, i)) {
                                zznuVar.zzI(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 12:
                            if (zzM(obj, i)) {
                                zznuVar.zzi(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 13:
                            if (zzM(obj, i)) {
                                zznuVar.zzx(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 14:
                            if (zzM(obj, i)) {
                                zznuVar.zzz(i2, zzrf.zzd(obj, iZzB & 1048575));
                            }
                            break;
                        case 15:
                            if (zzM(obj, i)) {
                                zznuVar.zzB(i2, zzrf.zzc(obj, iZzB & 1048575));
                            }
                            break;
                        case 16:
                            if (zzM(obj, i)) {
                                zznuVar.zzD(i2, zzrf.zzd(obj, iZzB & 1048575));
                            }
                            break;
                        case 17:
                            if (zzM(obj, i)) {
                                zznuVar.zzq(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                            }
                            break;
                        case 18:
                            zzqg.zzL(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 19:
                            zzqg.zzP(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 20:
                            zzqg.zzS(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 21:
                            zzqg.zzaa(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 22:
                            zzqg.zzR(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 23:
                            zzqg.zzO(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 24:
                            zzqg.zzN(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 25:
                            zzqg.zzJ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 26:
                            zzqg.zzY(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                            break;
                        case 27:
                            zzqg.zzT(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, zzE(i));
                            break;
                        case 28:
                            zzqg.zzK(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                            break;
                        case 29:
                            zzqg.zzZ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 30:
                            zzqg.zzM(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 31:
                            zzqg.zzU(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 32:
                            zzqg.zzV(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 33:
                            zzqg.zzW(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 34:
                            zzqg.zzX(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                            break;
                        case 35:
                            zzqg.zzL(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 36:
                            zzqg.zzP(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 37:
                            zzqg.zzS(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 38:
                            zzqg.zzaa(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 39:
                            zzqg.zzR(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 40:
                            zzqg.zzO(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 41:
                            zzqg.zzN(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 42:
                            zzqg.zzJ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 43:
                            zzqg.zzZ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 44:
                            zzqg.zzM(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 45:
                            zzqg.zzU(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 46:
                            zzqg.zzV(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 47:
                            zzqg.zzW(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 48:
                            zzqg.zzX(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                            break;
                        case 49:
                            zzqg.zzQ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, zzE(i));
                            break;
                        case 50:
                            zzS(zznuVar, i2, zzrf.zzf(obj, iZzB & 1048575), i);
                            break;
                        case 51:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzf(i2, zzn(obj, iZzB & 1048575));
                            }
                            break;
                        case 52:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzo(i2, zzo(obj, iZzB & 1048575));
                            }
                            break;
                        case 53:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzt(i2, zzC(obj, iZzB & 1048575));
                            }
                            break;
                        case 54:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzK(i2, zzC(obj, iZzB & 1048575));
                            }
                            break;
                        case 55:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzr(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 56:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzm(i2, zzC(obj, iZzB & 1048575));
                            }
                            break;
                        case 57:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzk(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 58:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzb(i2, zzQ(obj, iZzB & 1048575));
                            }
                            break;
                        case 59:
                            if (zzP(obj, i2, i)) {
                                zzT(i2, zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                            }
                            break;
                        case 60:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzv(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                            }
                            break;
                        case 61:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzd(i2, (zznl) zzrf.zzf(obj, iZzB & 1048575));
                            }
                            break;
                        case 62:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzI(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 63:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzi(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 64:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzx(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 65:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzz(i2, zzC(obj, iZzB & 1048575));
                            }
                            break;
                        case 66:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzB(i2, zzr(obj, iZzB & 1048575));
                            }
                            break;
                        case 67:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzD(i2, zzC(obj, iZzB & 1048575));
                            }
                            break;
                        case 68:
                            if (zzP(obj, i2, i)) {
                                zznuVar.zzq(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                            }
                            break;
                    }
                }
            }
            switch (zzA(iZzB)) {
                case 0:
                    if (zzM(obj, i)) {
                        zznuVar.zzf(i2, zzrf.zza(obj, iZzB & 1048575));
                    }
                    break;
                case 1:
                    if (zzM(obj, i)) {
                        zznuVar.zzo(i2, zzrf.zzb(obj, iZzB & 1048575));
                    }
                    break;
                case 2:
                    if (zzM(obj, i)) {
                        zznuVar.zzt(i2, zzrf.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 3:
                    if (zzM(obj, i)) {
                        zznuVar.zzK(i2, zzrf.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 4:
                    if (zzM(obj, i)) {
                        zznuVar.zzr(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 5:
                    if (zzM(obj, i)) {
                        zznuVar.zzm(i2, zzrf.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 6:
                    if (zzM(obj, i)) {
                        zznuVar.zzk(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 7:
                    if (zzM(obj, i)) {
                        zznuVar.zzb(i2, zzrf.zzw(obj, iZzB & 1048575));
                    }
                    break;
                case 8:
                    if (zzM(obj, i)) {
                        zzT(i2, zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                    }
                    break;
                case 9:
                    if (zzM(obj, i)) {
                        zznuVar.zzv(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 10:
                    if (zzM(obj, i)) {
                        zznuVar.zzd(i2, (zznl) zzrf.zzf(obj, iZzB & 1048575));
                    }
                    break;
                case 11:
                    if (zzM(obj, i)) {
                        zznuVar.zzI(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 12:
                    if (zzM(obj, i)) {
                        zznuVar.zzi(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 13:
                    if (zzM(obj, i)) {
                        zznuVar.zzx(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 14:
                    if (zzM(obj, i)) {
                        zznuVar.zzz(i2, zzrf.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 15:
                    if (zzM(obj, i)) {
                        zznuVar.zzB(i2, zzrf.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 16:
                    if (zzM(obj, i)) {
                        zznuVar.zzD(i2, zzrf.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 17:
                    if (zzM(obj, i)) {
                        zznuVar.zzq(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 18:
                    zzqg.zzL(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 19:
                    zzqg.zzP(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 20:
                    zzqg.zzS(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 21:
                    zzqg.zzaa(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 22:
                    zzqg.zzR(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 23:
                    zzqg.zzO(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 24:
                    zzqg.zzN(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 25:
                    zzqg.zzJ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 26:
                    zzqg.zzY(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                    break;
                case 27:
                    zzqg.zzT(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, zzE(i));
                    break;
                case 28:
                    zzqg.zzK(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                    break;
                case 29:
                    zzqg.zzZ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 30:
                    zzqg.zzM(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 31:
                    zzqg.zzU(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 32:
                    zzqg.zzV(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 33:
                    zzqg.zzW(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 34:
                    zzqg.zzX(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, false);
                    break;
                case 35:
                    zzqg.zzL(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 36:
                    zzqg.zzP(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 37:
                    zzqg.zzS(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 38:
                    zzqg.zzaa(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 39:
                    zzqg.zzR(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 40:
                    zzqg.zzO(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 41:
                    zzqg.zzN(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 42:
                    zzqg.zzJ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 43:
                    zzqg.zzZ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 44:
                    zzqg.zzM(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 45:
                    zzqg.zzU(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 46:
                    zzqg.zzV(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 47:
                    zzqg.zzW(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 48:
                    zzqg.zzX(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, true);
                    break;
                case 49:
                    zzqg.zzQ(this.zzc[i], (List) zzrf.zzf(obj, iZzB & 1048575), zznuVar, zzE(i));
                    break;
                case 50:
                    zzS(zznuVar, i2, zzrf.zzf(obj, iZzB & 1048575), i);
                    break;
                case 51:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzf(i2, zzn(obj, iZzB & 1048575));
                    }
                    break;
                case 52:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzo(i2, zzo(obj, iZzB & 1048575));
                    }
                    break;
                case 53:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzt(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 54:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzK(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 55:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzr(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 56:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzm(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 57:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzk(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 58:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzb(i2, zzQ(obj, iZzB & 1048575));
                    }
                    break;
                case 59:
                    if (zzP(obj, i2, i)) {
                        zzT(i2, zzrf.zzf(obj, iZzB & 1048575), zznuVar);
                    }
                    break;
                case 60:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzv(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 61:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzd(i2, (zznl) zzrf.zzf(obj, iZzB & 1048575));
                    }
                    break;
                case 62:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzI(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 63:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzi(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 64:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzx(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 65:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzz(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 66:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzB(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 67:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzD(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 68:
                    if (zzP(obj, i2, i)) {
                        zznuVar.zzq(i2, zzrf.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzo.zzg(zznuVar, entry);
            entry = itZzf.hasNext() ? (Map.Entry) itZzf.next() : null;
        }
        zzqv zzqvVar = this.zzn;
        zzqvVar.zzj(zzqvVar.zzc(obj), zznuVar);
    }
}
