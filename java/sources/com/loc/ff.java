package com.loc;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.amap.api.location.AMapLocationClientOption;
import com.google.common.primitives.UnsignedBytes;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.nio.ByteBuffer;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ff {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f12890a = new StringBuilder();
    private AMapLocationClientOption b = new AMapLocationClientOption();

    private void a(en enVar, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str2)) {
            a(str, str2, sb);
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append(str4);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str5)) {
            sb.append(str5);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str6)) {
            a(str7, str6, sb, enVar);
        }
        Bundle bundle = new Bundle();
        bundle.putString("citycode", enVar.getCityCode());
        bundle.putString(SocialConstants.PARAM_APP_DESC, sb.toString());
        bundle.putString("adcode", enVar.getAdCode());
        enVar.setExtras(bundle);
        enVar.g(sb.toString());
        String adCode = enVar.getAdCode();
        enVar.setAddress((adCode == null || adCode.trim().length() <= 0 || this.b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) ? sb.toString() : sb.toString().replace(" ", ""));
    }

    private static void a(en enVar, short s) {
        if ("-1".equals(enVar.d())) {
            if (s == 101) {
                s = 100;
            }
            enVar.setConScenario(s);
        } else {
            if (s == -1) {
                s = 0;
            } else if (s == 0) {
                s = -1;
            }
            enVar.setConScenario(s);
        }
    }

    private void a(String str, String str2, StringBuilder sb) {
        if (this.b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) {
            if (str2.equals(str)) {
                return;
            }
            sb.append(str2);
            sb.append(" ");
            return;
        }
        if (str.contains("市") && str.equals(str2)) {
            return;
        }
        sb.append(str2);
        sb.append(" ");
    }

    private void a(String str, String str2, StringBuilder sb, en enVar) {
        String strConcat;
        if (TextUtils.isEmpty(str) || this.b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) {
            sb.append("Near ".concat(String.valueOf(str2)));
            strConcat = "Near ".concat(String.valueOf(str2));
        } else {
            sb.append("靠近");
            sb.append(str2);
            sb.append(" ");
            strConcat = "在" + str2 + "附近";
        }
        enVar.setDescription(strConcat);
    }

    private static String b(String str) {
        return "[]".equals(str) ? "" : str;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x028f  */
    /* JADX WARN: Code duplicated, block: B:120:0x029b  */
    public final en a(en enVar, byte[] bArr, eh ehVar) {
        String str;
        ByteBuffer byteBufferWrap;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        byte b;
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        en enVar2 = enVar;
        try {
            if (bArr == null) {
                enVar2.setErrorCode(5);
                ehVar.f("#0504");
                this.f12890a.append("binaryResult is null#0504");
                enVar2.setLocationDetail(this.f12890a.toString());
                StringBuilder sb = this.f12890a;
                sb.delete(0, sb.length());
                return enVar2;
            }
            byteBufferWrap = ByteBuffer.wrap(bArr);
            try {
                try {
                    if (byteBufferWrap.get() != 0) {
                        enVar2.setLongitude(fp.a(((double) byteBufferWrap.getInt()) / 1000000.0d));
                        enVar2.setLatitude(fp.a(((double) byteBufferWrap.getInt()) / 1000000.0d));
                        enVar2.setAccuracy(byteBufferWrap.getShort());
                        enVar2.c(String.valueOf((int) byteBufferWrap.get()));
                        enVar2.d(String.valueOf((int) byteBufferWrap.get()));
                        if (byteBufferWrap.get() == 1) {
                            try {
                                byte[] bArr2 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr2);
                                try {
                                    enVar2.setCountry(new String(bArr2, "UTF-8"));
                                } catch (Throwable unused) {
                                }
                                byte[] bArr3 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr3);
                                try {
                                    str2 = new String(bArr3, "UTF-8");
                                    try {
                                        enVar2.setProvince(str2);
                                    } catch (Throwable unused2) {
                                    }
                                } catch (Throwable unused3) {
                                    str2 = "";
                                }
                                String str9 = str2;
                                byte[] bArr4 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr4);
                                try {
                                    str3 = new String(bArr4, "UTF-8");
                                    try {
                                        enVar2.setCity(str3);
                                    } catch (Throwable unused4) {
                                    }
                                } catch (Throwable unused5) {
                                    str3 = "";
                                }
                                String str10 = str3;
                                byte[] bArr5 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr5);
                                try {
                                    str4 = new String(bArr5, "UTF-8");
                                    try {
                                        enVar2.setDistrict(str4);
                                    } catch (Throwable unused6) {
                                    }
                                } catch (Throwable unused7) {
                                    str4 = "";
                                }
                                String str11 = str4;
                                byte[] bArr6 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr6);
                                try {
                                    str5 = new String(bArr6, "UTF-8");
                                    try {
                                        enVar2.setStreet(str5);
                                        enVar2.setRoad(str5);
                                    } catch (Throwable unused8) {
                                    }
                                } catch (Throwable unused9) {
                                    str5 = "";
                                }
                                String str12 = str5;
                                byte[] bArr7 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr7);
                                try {
                                    str6 = new String(bArr7, "UTF-8");
                                    try {
                                        enVar2.setNumber(str6);
                                    } catch (Throwable unused10) {
                                    }
                                } catch (Throwable unused11) {
                                    str6 = "";
                                }
                                String str13 = str6;
                                byte[] bArr8 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr8);
                                try {
                                    str7 = new String(bArr8, "UTF-8");
                                    try {
                                        enVar2.setPoiName(str7);
                                    } catch (Throwable unused12) {
                                    }
                                } catch (Throwable unused13) {
                                    str7 = "";
                                }
                                String str14 = str7;
                                byte[] bArr9 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr9);
                                try {
                                    enVar2.setAoiName(new String(bArr9, "UTF-8"));
                                } catch (Throwable unused14) {
                                }
                                byte[] bArr10 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr10);
                                try {
                                    str8 = new String(bArr10, "UTF-8");
                                    try {
                                        enVar2.setAdCode(str8);
                                    } catch (Throwable unused15) {
                                    }
                                } catch (Throwable unused16) {
                                    str8 = "";
                                }
                                String str15 = str8;
                                byte[] bArr11 = new byte[byteBufferWrap.get() & UnsignedBytes.MAX_VALUE];
                                byteBufferWrap.get(bArr11);
                                try {
                                    enVar2.setCityCode(new String(bArr11, "UTF-8"));
                                } catch (Throwable unused17) {
                                }
                                b = 1;
                                byteBuffer = byteBufferWrap;
                                str = "";
                                try {
                                    a(enVar, str9, str10, str11, str12, str13, str14, str15);
                                } catch (Throwable th) {
                                    th = th;
                                    byteBufferWrap = byteBuffer;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                str = "";
                            }
                        } else {
                            byteBuffer = byteBufferWrap;
                            str = "";
                            b = 1;
                        }
                        try {
                            byteBuffer2 = byteBuffer;
                            try {
                                byteBuffer2.get(new byte[byteBuffer.get() & UnsignedBytes.MAX_VALUE]);
                                if (byteBuffer2.get() == b) {
                                    byteBuffer2.getInt();
                                    byteBuffer2.getInt();
                                    byteBuffer2.getShort();
                                }
                                if (byteBuffer2.get() == b) {
                                    byte[] bArr12 = new byte[byteBuffer2.get() & UnsignedBytes.MAX_VALUE];
                                    byteBuffer2.get(bArr12);
                                    try {
                                        enVar2.setBuildingId(new String(bArr12, (String) r6));
                                    } catch (Throwable unused18) {
                                    }
                                    byte[] bArr13 = new byte[byteBuffer2.get() & UnsignedBytes.MAX_VALUE];
                                    byteBuffer2.get(bArr13);
                                    try {
                                        enVar2.setFloor(new String(bArr13, (String) r6));
                                    } catch (Throwable unused19) {
                                    }
                                }
                                if (byteBuffer2.get() == b) {
                                    byteBuffer2.get();
                                    byteBuffer2.getInt();
                                    byteBuffer2.get();
                                }
                                if (byteBuffer2.get() == b) {
                                    enVar2.setTime(byteBuffer2.getLong());
                                }
                                int i = byteBuffer2.getShort();
                                if (i > 0) {
                                    byte[] bArr14 = new byte[i];
                                    byteBuffer2.get(bArr14);
                                    if (i > 0) {
                                        try {
                                            enVar2.a(new String(Base64.decode(bArr14, 0), "UTF-8"));
                                        } catch (Throwable unused20) {
                                        }
                                    }
                                }
                                int i2 = byteBuffer2.getShort();
                                if (i2 > 0) {
                                    byteBuffer2.get(new byte[i2]);
                                }
                                if (Double.valueOf(fi.f12904a).doubleValue() >= 5.1d) {
                                    a(enVar2, byteBuffer2.getShort());
                                    enVar2.a(byteBuffer2.get());
                                }
                                if (byteBuffer2 != null) {
                                    byteBuffer2.clear();
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                byteBufferWrap = byteBuffer2;
                                en enVar3 = new en(str);
                                enVar3.setErrorCode(5);
                                ehVar.f("#0505");
                                this.f12890a.append("parser data error:" + th.getMessage() + "#0505");
                                fn.a((String) null, 2054);
                                enVar3.setLocationDetail(this.f12890a.toString());
                                if (byteBufferWrap != null) {
                                    byteBufferWrap.clear();
                                }
                                enVar2 = enVar3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            byteBuffer2 = byteBuffer;
                        }
                        if (this.f12890a.length() > 0) {
                            StringBuilder sb2 = this.f12890a;
                            sb2.delete(0, sb2.length());
                        }
                        return enVar2;
                    }
                    try {
                        enVar2.b(String.valueOf((int) byteBufferWrap.getShort()));
                        byteBufferWrap.clear();
                        if (byteBufferWrap != null) {
                            byteBufferWrap.clear();
                        }
                        return enVar2;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
                en enVar4 = new en(str);
                enVar4.setErrorCode(5);
                ehVar.f("#0505");
                this.f12890a.append("parser data error:" + th.getMessage() + "#0505");
                fn.a((String) null, 2054);
                enVar4.setLocationDetail(this.f12890a.toString());
                if (byteBufferWrap != null) {
                    byteBufferWrap.clear();
                }
                enVar2 = enVar4;
                if (this.f12890a.length() > 0) {
                    StringBuilder sb3 = this.f12890a;
                    sb3.delete(0, sb3.length());
                }
                return enVar2;
            } catch (Throwable th7) {
                if (byteBufferWrap != null) {
                    byteBufferWrap.clear();
                }
                throw th7;
            }
            str = "";
        } catch (Throwable th8) {
            th = th8;
            str = "";
            byteBufferWrap = null;
        }
    }

    public final en a(String str) {
        String str2;
        try {
            en enVar = new en("");
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("regeocode");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("addressComponent");
            enVar.setCountry(b(jSONObjectOptJSONObject2.optString("country")));
            String strB = b(jSONObjectOptJSONObject2.optString("province"));
            enVar.setProvince(strB);
            String strB2 = b(jSONObjectOptJSONObject2.optString("citycode"));
            enVar.setCityCode(strB2);
            String strOptString = jSONObjectOptJSONObject2.optString("city");
            if (!strB2.endsWith("010") && !strB2.endsWith("021") && !strB2.endsWith("022") && !strB2.endsWith("023")) {
                strOptString = b(strOptString);
                enVar.setCity(strOptString);
            } else if (strB != null && strB.length() > 0) {
                enVar.setCity(strB);
                strOptString = strB;
            }
            if (TextUtils.isEmpty(strOptString)) {
                enVar.setCity(strB);
                strOptString = strB;
            }
            String strB3 = b(jSONObjectOptJSONObject2.optString("district"));
            enVar.setDistrict(strB3);
            String strB4 = b(jSONObjectOptJSONObject2.optString("adcode"));
            enVar.setAdCode(strB4);
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("streetNumber");
            String strB5 = b(jSONObjectOptJSONObject3.optString("street"));
            enVar.setStreet(strB5);
            enVar.setRoad(strB5);
            String strB6 = b(jSONObjectOptJSONObject3.optString(Constant.LOGIN_ACTIVITY_NUMBER));
            enVar.setNumber(strB6);
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("pois");
            if (jSONArrayOptJSONArray.length() > 0) {
                String strB7 = b(jSONArrayOptJSONArray.getJSONObject(0).optString(Constant.PROTOCOL_WEBVIEW_NAME));
                enVar.setPoiName(strB7);
                str2 = strB7;
            } else {
                str2 = null;
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("aois");
            if (jSONArrayOptJSONArray2.length() > 0) {
                enVar.setAoiName(b(jSONArrayOptJSONArray2.getJSONObject(0).optString(Constant.PROTOCOL_WEBVIEW_NAME)));
            }
            a(enVar, strB, strOptString, strB3, strB5, strB6, str2, strB4);
            return enVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final en a(String str, Context context, bl blVar, eh ehVar) {
        en enVar = new en("");
        enVar.setErrorCode(7);
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("#SHA1AndPackage#");
            stringBuffer.append(k.e(context));
            String str2 = blVar.b.get("gsid").get(0);
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("#gsid#");
                stringBuffer.append(str2);
            }
            String str3 = blVar.c;
            if (!TextUtils.isEmpty(str3)) {
                stringBuffer.append("#csid#".concat(String.valueOf(str3)));
            }
        } catch (Throwable unused) {
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status") || !jSONObject.has("info")) {
                ehVar.f("#0702");
                StringBuilder sb = this.f12890a;
                sb.append("json is error:");
                sb.append(str);
                sb.append(stringBuffer);
                sb.append("#0702");
            }
            String string = jSONObject.getString("status");
            String string2 = jSONObject.getString("info");
            String string3 = jSONObject.getString("infocode");
            if ("0".equals(string)) {
                ehVar.f("#0701");
                StringBuilder sb2 = this.f12890a;
                sb2.append("auth fail:");
                sb2.append(string2);
                sb2.append(stringBuffer);
                sb2.append("#0701");
                fn.a(blVar.f12620d, string3, string2);
            }
        } catch (Throwable th) {
            ehVar.f("#0703");
            StringBuilder sb3 = this.f12890a;
            sb3.append("json exception error:");
            sb3.append(th.getMessage());
            sb3.append(stringBuffer);
            sb3.append("#0703");
            fi.a(th, "parser", "paseAuthFailurJson");
        }
        enVar.setLocationDetail(this.f12890a.toString());
        if (this.f12890a.length() > 0) {
            StringBuilder sb4 = this.f12890a;
            sb4.delete(0, sb4.length());
        }
        return enVar;
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        if (aMapLocationClientOption == null) {
            this.b = new AMapLocationClientOption();
        } else {
            this.b = aMapLocationClientOption;
        }
    }
}
