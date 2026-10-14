package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import com.tencent.open.SocialConstants;
import java.nio.ByteBuffer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class p9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f11086a = new StringBuilder();

    public final kj a(String str, Context context, m7 m7Var) {
        kj kjVar = new kj("");
        kjVar.setErrorCode(7);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status") || !jSONObject.has("info")) {
                this.f11086a.append("json is error " + str);
            }
            String string = jSONObject.getString("status");
            String string2 = jSONObject.getString("info");
            if (string.equals("0")) {
                this.f11086a.append("auth fail:" + string2);
            }
        } catch (Throwable th) {
            this.f11086a.append("json exception error:" + th.getMessage());
            b9.b(th, "MapParser", "paseAuthFailurJson");
        }
        try {
            StringBuilder sb = this.f11086a;
            sb.append("#SHA1AndPackage#");
            sb.append(c5.i(context));
            String str2 = m7Var.b.get("gsid").get(0);
            if (!TextUtils.isEmpty(str2)) {
                StringBuilder sb2 = this.f11086a;
                sb2.append(" #gsid#");
                sb2.append(str2);
            }
            String str3 = m7Var.c;
            if (!TextUtils.isEmpty(str3)) {
                this.f11086a.append(" #csid#" + str3);
            }
        } catch (Throwable unused) {
        }
        kjVar.setLocationDetail(this.f11086a.toString());
        if (this.f11086a.length() > 0) {
            StringBuilder sb3 = this.f11086a;
            sb3.delete(0, sb3.length());
        }
        return kjVar;
    }

    public final kj b(byte[] bArr) {
        kj kjVar;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        ByteBuffer byteBuffer = null;
        try {
            kjVar = new kj("");
            if (bArr == null) {
                kjVar.setErrorCode(5);
                this.f11086a.append("byte[] is null");
                kjVar.setLocationDetail(this.f11086a.toString());
                StringBuilder sb = this.f11086a;
                sb.delete(0, sb.length());
                return kjVar;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            if (byteBufferWrap.get() == 0) {
                kjVar.e(String.valueOf((int) byteBufferWrap.getShort()));
                byteBufferWrap.clear();
                if (byteBufferWrap != null) {
                    byteBufferWrap.clear();
                }
                return kjVar;
            }
            kjVar.setLongitude(g9.a(((double) byteBufferWrap.getInt()) / 1000000.0d));
            kjVar.setLatitude(g9.a(((double) byteBufferWrap.getInt()) / 1000000.0d));
            kjVar.setAccuracy(byteBufferWrap.getShort());
            kjVar.g(String.valueOf((int) byteBufferWrap.get()));
            kjVar.i(String.valueOf((int) byteBufferWrap.get()));
            if (byteBufferWrap.get() == 1) {
                byte[] bArr2 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr2);
                try {
                    kjVar.setCountry(new String(bArr2, "UTF-8"));
                } catch (Throwable unused) {
                }
                byte[] bArr3 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr3);
                try {
                    str = new String(bArr3, "UTF-8");
                    try {
                        kjVar.setProvince(str);
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    str = "";
                }
                byte[] bArr4 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr4);
                try {
                    str2 = new String(bArr4, "UTF-8");
                    try {
                        kjVar.setCity(str2);
                    } catch (Throwable unused4) {
                    }
                } catch (Throwable unused5) {
                    str2 = "";
                }
                byte[] bArr5 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr5);
                try {
                    str3 = new String(bArr5, "UTF-8");
                    try {
                        kjVar.setDistrict(str3);
                    } catch (Throwable unused6) {
                    }
                } catch (Throwable unused7) {
                    str3 = "";
                }
                byte[] bArr6 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr6);
                try {
                    str4 = new String(bArr6, "UTF-8");
                    try {
                        kjVar.setStreet(str4);
                        kjVar.setRoad(str4);
                    } catch (Throwable unused8) {
                    }
                } catch (Throwable unused9) {
                    str4 = "";
                }
                byte[] bArr7 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr7);
                try {
                    kjVar.setNumber(new String(bArr7, "UTF-8"));
                } catch (Throwable unused10) {
                }
                byte[] bArr8 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr8);
                try {
                    str5 = new String(bArr8, "UTF-8");
                    try {
                        kjVar.setPoiName(str5);
                    } catch (Throwable unused11) {
                    }
                } catch (Throwable unused12) {
                    str5 = "";
                }
                byte[] bArr9 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr9);
                try {
                    kjVar.setAoiName(new String(bArr9, "UTF-8"));
                } catch (Throwable unused13) {
                }
                byte[] bArr10 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr10);
                try {
                    str6 = new String(bArr10, "UTF-8");
                    try {
                        kjVar.setAdCode(str6);
                    } catch (Throwable unused14) {
                    }
                } catch (Throwable unused15) {
                    str6 = "";
                }
                byte[] bArr11 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr11);
                try {
                    kjVar.setCityCode(new String(bArr11, "UTF-8"));
                } catch (Throwable unused16) {
                }
                StringBuilder sb2 = new StringBuilder();
                if (!TextUtils.isEmpty(str)) {
                    sb2.append(str);
                    sb2.append(" ");
                }
                if (!TextUtils.isEmpty(str2) && (!str.contains("市") || !str.equals(str2))) {
                    sb2.append(str2);
                    sb2.append(" ");
                }
                if (!TextUtils.isEmpty(str3)) {
                    sb2.append(str3);
                    sb2.append(" ");
                }
                if (!TextUtils.isEmpty(str4)) {
                    sb2.append(str4);
                    sb2.append(" ");
                }
                if (!TextUtils.isEmpty(str5)) {
                    if (!TextUtils.isEmpty(str6)) {
                        sb2.append("靠近");
                    }
                    sb2.append(str5);
                    sb2.append(" ");
                }
                Bundle bundle = new Bundle();
                bundle.putString("citycode", kjVar.getCityCode());
                bundle.putString(SocialConstants.PARAM_APP_DESC, sb2.toString());
                bundle.putString("adcode", kjVar.getAdCode());
                kjVar.setExtras(bundle);
                kjVar.k(sb2.toString());
                String adCode = kjVar.getAdCode();
                kjVar.setAddress((adCode == null || adCode.trim().length() <= 0) ? sb2.toString() : sb2.toString().replace(" ", ""));
            }
            byteBufferWrap.get(new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE]);
            if (byteBufferWrap.get() == 1) {
                byteBufferWrap.getInt();
                byteBufferWrap.getInt();
                byteBufferWrap.getShort();
            }
            if (byteBufferWrap.get() == 1) {
                byte[] bArr12 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr12);
                try {
                    kjVar.setBuildingId(new String(bArr12, "UTF-8"));
                } catch (Throwable unused17) {
                }
                byte[] bArr13 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                byteBufferWrap.get(bArr13);
                try {
                    kjVar.setFloor(new String(bArr13, "UTF-8"));
                } catch (Throwable unused18) {
                }
            }
            if (byteBufferWrap.get() == 1) {
                byteBufferWrap.get();
                byteBufferWrap.getInt();
                byteBufferWrap.get();
            }
            if (byteBufferWrap.get() == 1) {
                kjVar.setTime(byteBufferWrap.getLong());
            }
            byte[] bArr14 = new byte[byteBufferWrap.getShort()];
            byteBufferWrap.get(bArr14);
            try {
                kjVar.c(new String(bArr14, "UTF-8"));
            } catch (Throwable unused19) {
            }
            if (byteBufferWrap != null) {
                byteBufferWrap.clear();
            }
            if (this.f11086a.length() > 0) {
                StringBuilder sb3 = this.f11086a;
                sb3.delete(0, sb3.length());
            }
            return kjVar;
        } catch (Throwable th) {
            try {
                kj kjVar2 = new kj("");
                kjVar2.setErrorCode(5);
                this.f11086a.append("parser data error:" + th.getMessage());
                kjVar2.setLocationDetail(this.f11086a.toString());
                if (0 != 0) {
                    byteBuffer.clear();
                }
                kjVar = kjVar2;
            } catch (Throwable th2) {
                if (0 != 0) {
                    byteBuffer.clear();
                }
                throw th2;
            }
        }
    }
}
