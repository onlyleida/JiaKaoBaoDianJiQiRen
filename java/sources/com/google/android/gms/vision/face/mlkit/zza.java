package com.google.android.gms.vision.face.mlkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.media.Image;
import android.os.Build;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzad;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzaf;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzag;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzah;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzai;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzaj;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzan;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzao;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzaq;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzar;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzas;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzj;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzlu;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmd;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmf;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmh;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmj;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzml;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmq;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzo;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzp;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzrq;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzrs;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzs;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzsb;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzsc;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzt;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzz;
import com.google.android.gms.vision.face.FaceDetectorV2Jni;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zza extends zzml {
    private static final GmsLogger zza = new GmsLogger("FaceDetector", "");
    private final Context zzb;
    private final zzmh zzc;
    private final zzah zzd;
    private final FaceDetectorV2Jni zze;
    private final zzb zzf;
    private final zzlu zzg;
    private long zzh = -1;

    zza(Context context, zzmh zzmhVar, FaceDetectorV2Jni faceDetectorV2Jni, zzb zzbVar) {
        this.zzb = context;
        this.zzc = zzmhVar;
        boolean z = false;
        boolean z2 = zzmhVar.zzc() == 2;
        zzaq zzaqVarZza = zzar.zza();
        zzaqVarZza.zzb("models");
        zzar zzarVar = (zzar) zzaqVarZza.zzq();
        zzag zzagVarZza = zzah.zza();
        zzai zzaiVarZza = zzaj.zza();
        zzaiVarZza.zzc(zzarVar);
        zzaiVarZza.zzb(zzarVar);
        zzaiVarZza.zzd(zzarVar);
        zzagVarZza.zzc(zzaiVarZza);
        zzs zzsVarZza = zzt.zza();
        zzsVarZza.zza(zzarVar);
        zzsVarZza.zzb(zzarVar);
        zzagVarZza.zza(zzsVarZza);
        zzan zzanVarZza = zzao.zza();
        zzanVarZza.zzb(zzarVar);
        zzanVarZza.zzc(zzarVar);
        zzanVarZza.zzd(zzarVar);
        zzanVarZza.zza(zzarVar);
        zzagVarZza.zze(zzanVarZza);
        zzagVarZza.zzg(z2);
        if (!z2 && zzmhVar.zzf()) {
            z = true;
        }
        zzagVarZza.zzb(z);
        zzagVarZza.zzf(zzmhVar.zza());
        zzagVarZza.zzh(true);
        if (z2) {
            zzagVarZza.zzk(4);
            zzagVarZza.zzj(4);
        } else {
            int iZze = zzmhVar.zze();
            if (iZze == 1) {
                zzagVarZza.zzk(2);
            } else if (iZze == 2) {
                zzagVarZza.zzk(3);
            }
            int iZzd = zzmhVar.zzd();
            if (iZzd == 1) {
                zzagVarZza.zzj(2);
            } else if (iZzd == 2) {
                zzagVarZza.zzj(3);
            }
            int iZzb = zzmhVar.zzb();
            if (iZzb == 1) {
                zzagVarZza.zzi(2);
            } else if (iZzb == 2) {
                zzagVarZza.zzi(3);
            }
        }
        this.zzd = (zzah) zzagVarZza.zzq();
        this.zze = faceDetectorV2Jni;
        this.zzf = zzbVar;
        this.zzg = zzlu.zza(context);
        zzj.zza(context);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007b  */
    private final List zze(zzaf zzafVar) {
        float f2;
        float f3;
        float f4;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i;
        int i2;
        byte b;
        ArrayList arrayList3 = new ArrayList();
        for (zzsc zzscVar : zzafVar.zzc().zzg()) {
            int i3 = 1;
            int i4 = -1;
            if (this.zzd.zzk() == 3) {
                float fZzc = -1.0f;
                float fZzc2 = -1.0f;
                float fZzc3 = -1.0f;
                for (zzrq zzrqVar : zzscVar.zzo()) {
                    String strZzg = zzrqVar.zzg();
                    int iHashCode = strZzg.hashCode();
                    if (iHashCode != -1940789646) {
                        if (iHashCode != -1837755075) {
                            if (iHashCode == 105428 && strZzg.equals("joy")) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                        } else if (strZzg.equals("right_eye_closed")) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                    } else if (strZzg.equals("left_eye_closed")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    if (b == 0) {
                        fZzc2 = zzrqVar.zzc();
                    } else if (b == 1) {
                        fZzc3 = 1.0f - zzrqVar.zzc();
                    } else if (b == 2) {
                        fZzc = 1.0f - zzrqVar.zzc();
                    }
                }
                f3 = fZzc;
                f4 = fZzc2;
                f2 = fZzc3;
            } else {
                f2 = -1.0f;
                f3 = -1.0f;
                f4 = -1.0f;
            }
            int i5 = 9;
            if (this.zzd.zzl() == 3) {
                List<zzsb> listZzF = zzscVar.zzF();
                ArrayList arrayList4 = new ArrayList();
                for (zzsb zzsbVar : listZzF) {
                    int iZzh = zzsbVar.zzh() - 1;
                    if (iZzh == 0) {
                        i2 = 4;
                    } else if (iZzh == i3) {
                        i2 = 10;
                    } else if (iZzh != i5) {
                        switch (iZzh) {
                            case 11:
                                i2 = 0;
                                break;
                            case 12:
                                i2 = 5;
                                break;
                            case 13:
                                i2 = 11;
                                break;
                            default:
                                switch (iZzh) {
                                    case 238:
                                        i2 = 1;
                                        break;
                                    case 239:
                                        i2 = 7;
                                        break;
                                    case 240:
                                        i2 = 3;
                                        break;
                                    case l.RECEIVE_FAULT_CODE_CLEAR_RET /* 241 */:
                                        i2 = 9;
                                        break;
                                    case 242:
                                        i2 = 2;
                                        break;
                                    case l.Receive_AutoAssist_Response /* 243 */:
                                        i2 = 8;
                                        break;
                                    default:
                                        zza.d("FaceDetector", "Unknown landmark type: ".concat(Integer.toString(iZzh)));
                                        i2 = -1;
                                        break;
                                }
                                break;
                        }
                    } else {
                        i2 = 6;
                    }
                    if (i2 >= 0) {
                        arrayList4.add(new zzmq(i2, new PointF(zzsbVar.zzc(), zzsbVar.zze())));
                    }
                    i5 = 9;
                    i3 = 1;
                }
                arrayList = arrayList4;
            } else {
                arrayList = new ArrayList();
            }
            if (this.zzd.zzl() == 4) {
                List<zzad> list = (List) zzscVar.zze(zzas.zza);
                ArrayList arrayList5 = new ArrayList();
                for (zzad zzadVar : list) {
                    int iZzd = zzadVar.zzd() + i4;
                    switch (iZzd) {
                        case 1:
                            i = 1;
                            break;
                        case 2:
                            i = 2;
                            break;
                        case 3:
                            i = 3;
                            break;
                        case 4:
                            i = 4;
                            break;
                        case 5:
                            i = 5;
                            break;
                        case 6:
                            i = 6;
                            break;
                        case 7:
                            i = 7;
                            break;
                        case 8:
                            i = 8;
                            break;
                        case 9:
                            i = 9;
                            break;
                        case 10:
                            i = 10;
                            break;
                        case 11:
                            i = 11;
                            break;
                        case 12:
                            i = 12;
                            break;
                        case 13:
                            i = 13;
                            break;
                        case 14:
                            i = 14;
                            break;
                        case 15:
                            i = 15;
                            break;
                        default:
                            GmsLogger gmsLogger = zza;
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Unknown contour type: ");
                            sb.append(iZzd);
                            gmsLogger.d("FaceDetector", sb.toString());
                            i = -1;
                            break;
                    }
                    if (i != i4) {
                        ArrayList arrayList6 = new ArrayList();
                        for (zzz zzzVar : zzadVar.zzc()) {
                            arrayList6.add(new PointF(zzzVar.zza(), zzzVar.zzb()));
                        }
                        arrayList5.add(new zzmf(i, arrayList6));
                        i4 = -1;
                    }
                }
                arrayList2 = arrayList5;
            } else {
                arrayList2 = new ArrayList();
            }
            zzrs zzrsVarZzl = zzscVar.zzl();
            arrayList3.add(new zzmj((int) zzscVar.zzk(), new Rect((int) zzrsVarZzl.zzc(), (int) zzrsVarZzl.zzg(), (int) zzrsVarZzl.zze(), (int) zzrsVarZzl.zzh()), zzscVar.zzi(), zzscVar.zzh(), zzscVar.zzj(), f2, f3, f4, zzscVar.zzG() ? zzscVar.zzg() : -1.0f, arrayList, arrayList2));
        }
        return arrayList3;
    }

    private static int zzf(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 4;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 2;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unsupported rotation degree: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    private final List zzg(ByteBuffer byteBuffer, zzmd zzmdVar, int i) throws RemoteException {
        zzaf zzafVarZzb;
        zzo zzoVarZza = zzp.zza();
        zzoVarZza.zzc(zzmdVar.zzd());
        zzoVarZza.zza(zzmdVar.zza());
        zzoVarZza.zze(zzf(zzmdVar.zzc()));
        zzoVarZza.zzd(i);
        if (zzmdVar.zze() > 0) {
            zzoVarZza.zzb(zzmdVar.zze() * 1000);
        }
        zzp zzpVar = (zzp) zzoVarZza.zzq();
        if (byteBuffer.isDirect()) {
            zzafVarZzb = this.zze.zzd(this.zzh, byteBuffer, zzpVar);
        } else if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            zzafVarZzb = this.zze.zzb(this.zzh, byteBuffer.array(), zzpVar);
        } else {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            zzafVarZzb = this.zze.zzb(this.zzh, bArr, zzpVar);
        }
        return zzafVarZzb != null ? zze(zzafVarZzb) : new ArrayList();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzmm
    public final List zzb(IObjectWrapper iObjectWrapper, zzmd zzmdVar) throws RemoteException {
        List listZzg;
        zzaf zzafVarZzc;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iZzb = zzmdVar.zzb();
        if (iZzb == -1) {
            listZzg = zzg(com.google.android.gms.internal.mlkit_vision_face_bundled.zzd.zza((Bitmap) ObjectWrapper.unwrap(iObjectWrapper), true), zzmdVar, 2);
        } else if (iZzb == 17) {
            listZzg = zzg((ByteBuffer) ObjectWrapper.unwrap(iObjectWrapper), zzmdVar, 2);
        } else if (iZzb == 35) {
            Image.Plane[] planes = ((Image) ObjectWrapper.unwrap(iObjectWrapper)).getPlanes();
            ByteBuffer buffer = planes[0].getBuffer();
            ByteBuffer buffer2 = planes[1].getBuffer();
            ByteBuffer buffer3 = planes[2].getBuffer();
            zzo zzoVarZza = zzp.zza();
            zzoVarZza.zzc(zzmdVar.zzd());
            zzoVarZza.zza(zzmdVar.zza());
            zzoVarZza.zze(zzf(zzmdVar.zzc()));
            if (zzmdVar.zze() > 0) {
                zzoVarZza.zzb(zzmdVar.zze() * 1000);
            }
            zzp zzpVar = (zzp) zzoVarZza.zzq();
            if (buffer.isDirect()) {
                zzafVarZzc = this.zze.zze(this.zzh, buffer, buffer2, buffer3, planes[0].getPixelStride(), planes[1].getPixelStride(), planes[2].getPixelStride(), planes[0].getRowStride(), planes[1].getRowStride(), planes[2].getRowStride(), zzpVar);
            } else if (buffer.hasArray() && buffer.arrayOffset() == 0) {
                zzafVarZzc = this.zze.zzc(this.zzh, buffer.array(), buffer2.array(), buffer3.array(), planes[0].getPixelStride(), planes[1].getPixelStride(), planes[2].getPixelStride(), planes[0].getRowStride(), planes[1].getRowStride(), planes[2].getRowStride(), zzpVar);
            } else {
                byte[] bArr = new byte[buffer.remaining()];
                buffer.get(bArr);
                byte[] bArr2 = new byte[buffer2.remaining()];
                buffer.get(bArr);
                byte[] bArr3 = new byte[buffer3.remaining()];
                buffer.get(bArr);
                zzafVarZzc = this.zze.zzc(this.zzh, bArr, bArr2, bArr3, planes[0].getPixelStride(), planes[1].getPixelStride(), planes[2].getPixelStride(), planes[0].getRowStride(), planes[1].getRowStride(), planes[2].getRowStride(), zzpVar);
            }
            listZzg = zzafVarZzc != null ? zze(zzafVarZzc) : new ArrayList();
        } else {
            if (iZzb != 842094169) {
                int iZzb2 = zzmdVar.zzb();
                int i = Build.VERSION.SDK_INT;
                StringBuilder sb = new StringBuilder(55);
                sb.append("Unsupported image format ");
                sb.append(iZzb2);
                sb.append(" at API ");
                sb.append(i);
                String string = sb.toString();
                Log.e("FaceDetector", string);
                this.zzg.zzc(25503, 1, jCurrentTimeMillis, System.currentTimeMillis());
                throw zze.zza(string);
            }
            listZzg = zzg((ByteBuffer) ObjectWrapper.unwrap(iObjectWrapper), zzmdVar, 7);
        }
        List list = listZzg;
        this.zzf.zza(this.zzc, zzmdVar, list, SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.zzg.zzc(25503, 0, jCurrentTimeMillis, System.currentTimeMillis());
        return list;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzmm
    public final void zzc() {
        this.zzh = this.zze.zza(this.zzd, this.zzb.getAssets());
        this.zzf.zzc(this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzmm
    public final void zzd() {
        long j = this.zzh;
        if (j > 0) {
            this.zze.zzf(j);
            this.zzh = -1L;
        }
    }
}
