package com.amap.api.mapcore.util;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g7 extends j5 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f10824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected m5 f10825e;

    public g7(Context context, m5 m5Var) {
        if (context != null) {
            this.f10824d = context.getApplicationContext();
        }
        this.f10825e = m5Var;
    }

    private byte[] e() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(n5.o("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{1});
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                b6.e(th, "bre", "gbh");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                b6.e(th2, "bre", "gbh");
                try {
                    return null;
                } catch (Throwable th3) {
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    b6.e(th4, "bre", "gbh");
                }
            }
        }
    }

    private byte[] n() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrG = g();
            if (bArrG != null && bArrG.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byteArrayOutputStream.write(f(bArrG));
                byteArrayOutputStream.write(bArrG);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    b6.e(th, "bre", "grrd");
                }
                return byteArray;
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                b6.e(th2, "bre", "grrd");
            }
            return byteArray2;
        } catch (Throwable th3) {
            try {
                b6.e(th3, "bre", "grrd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    b6.e(th4, "bre", "grrd");
                }
                return new byte[]{0};
            } catch (Throwable th5) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th6) {
                    b6.e(th6, "bre", "grrd");
                }
                throw th5;
            }
        }
    }

    private byte[] o() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrH = h();
            if (bArrH != null && bArrH.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byte[] bArrI = f5.i(this.f10824d, bArrH);
                byteArrayOutputStream.write(f(bArrI));
                byteArrayOutputStream.write(bArrI);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    b6.e(th, "bre", "gred");
                }
                return byteArray;
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                b6.e(th2, "bre", "gred");
            }
            return byteArray2;
        } catch (Throwable th3) {
            try {
                b6.e(th3, "bre", "gred");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    b6.e(th4, "bre", "gred");
                }
                return new byte[]{0};
            } catch (Throwable th5) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th6) {
                    b6.e(th6, "bre", "gred");
                }
                throw th5;
            }
        }
    }

    private boolean p() {
        m5 m5Var = this.f10825e;
        return m5Var != null && "navi".equals(m5Var.a());
    }

    protected byte[] f(byte[] bArr) {
        return n5.n(bArr.length, 2);
    }

    public abstract byte[] g();

    @Override // com.amap.api.mapcore.util.k7
    public final byte[] getEntityBytes() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(e());
            byteArrayOutputStream.write(k());
            byteArrayOutputStream.write(n());
            byteArrayOutputStream.write(o());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                b6.e(th, "bre", "geb");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                b6.e(th2, "bre", "geb");
                try {
                    return null;
                } catch (Throwable th3) {
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    b6.e(th4, "bre", "geb");
                }
            }
        }
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        String strJ = c5.j(this.f10824d);
        String strA = f5.a();
        String strD = f5.d(this.f10824d, strA, "key=" + strJ);
        HashMap map = new HashMap();
        map.put("ts", strA);
        map.put("key", strJ);
        map.put("scode", strD);
        return map;
    }

    public abstract byte[] h();

    protected String i() {
        return "2.1";
    }

    public boolean j() {
        return true;
    }

    public byte[] k() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(new byte[]{3});
            if (j()) {
                byte[] bArrH = f5.h(this.f10824d, m(), p());
                byteArrayOutputStream.write(f(bArrH));
                byteArrayOutputStream.write(bArrH);
            } else {
                byteArrayOutputStream.write(new byte[]{0, 0});
            }
            byte[] bArrO = n5.o(i());
            if (bArrO == null || bArrO.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(f(bArrO));
                byteArrayOutputStream.write(bArrO);
            }
            byte[] bArrO2 = n5.o(l());
            if (bArrO2 == null || bArrO2.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(f(bArrO2));
                byteArrayOutputStream.write(bArrO2);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                b6.e(th, "bre", "gred");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                b6.e(th2, "bre", "gpd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    b6.e(th3, "bre", "gred");
                }
                return new byte[]{0};
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th5) {
                    b6.e(th5, "bre", "gred");
                }
                throw th4;
            }
        }
    }

    public String l() {
        return String.format("platform=Android&sdkversion=%s&product=%s", this.f10825e.g(), this.f10825e.a());
    }

    protected boolean m() {
        return false;
    }
}
