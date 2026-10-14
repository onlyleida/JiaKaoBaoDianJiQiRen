package com.loc;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class bg extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f12564a;
    protected v b;
    protected byte[] c;

    public bg(Context context, v vVar) {
        if (context != null) {
            this.f12564a = context.getApplicationContext();
        }
        this.b = vVar;
        r();
    }

    private static byte[] A() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(w.a("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{1});
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                aj.a(th, "bre", "gbh");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                aj.a(th2, "bre", "gbh");
                try {
                    return null;
                } catch (Throwable th3) {
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    aj.a(th4, "bre", "gbh");
                }
            }
        }
    }

    private byte[] B() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(new byte[]{3});
            if (i()) {
                Context context = this.f12564a;
                boolean zK = k();
                v vVar = this.b;
                byte[] bArrA = m.a(context, zK, vVar != null && "navi".equals(vVar.a()));
                byteArrayOutputStream.write(a(bArrA));
                byteArrayOutputStream.write(bArrA);
            } else {
                byteArrayOutputStream.write(new byte[]{0, 0});
            }
            byte[] bArrA2 = w.a(f());
            if (bArrA2 == null || bArrA2.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(a(bArrA2));
                byteArrayOutputStream.write(bArrA2);
            }
            byte[] bArrA3 = w.a(j());
            if (bArrA3 == null || bArrA3.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(a(bArrA3));
                byteArrayOutputStream.write(bArrA3);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                aj.a(th, "bre", "gred");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                aj.a(th2, "bre", "gpd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    aj.a(th3, "bre", "gred");
                }
                return new byte[]{0};
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th5) {
                    aj.a(th5, "bre", "gred");
                }
                throw th4;
            }
        }
    }

    private byte[] C() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrA_ = a_();
            if (bArrA_ != null && bArrA_.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byteArrayOutputStream.write(a(bArrA_));
                byteArrayOutputStream.write(bArrA_);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    aj.a(th, "bre", "grrd");
                }
                return byteArray;
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                aj.a(th2, "bre", "grrd");
            }
            return byteArray2;
        } catch (Throwable th3) {
            try {
                aj.a(th3, "bre", "grrd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    aj.a(th4, "bre", "grrd");
                }
                return new byte[]{0};
            } catch (Throwable th5) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th6) {
                    aj.a(th6, "bre", "grrd");
                }
                throw th5;
            }
        }
    }

    private byte[] D() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrB_ = b_();
            if (bArrB_ != null && bArrB_.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byte[] bArrA = m.a(bArrB_);
                byteArrayOutputStream.write(a(bArrA));
                byteArrayOutputStream.write(bArrA);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    aj.a(th, "bre", "gred");
                }
                return byteArray;
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                aj.a(th2, "bre", "gred");
            }
            return byteArray2;
        } catch (Throwable th3) {
            try {
                aj.a(th3, "bre", "gred");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    aj.a(th4, "bre", "gred");
                }
                return new byte[]{0};
            } catch (Throwable th5) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th6) {
                    aj.a(th6, "bre", "gred");
                }
                throw th5;
            }
        }
    }

    protected static byte[] a(byte[] bArr) {
        return w.a(bArr.length);
    }

    public abstract byte[] a_();

    public abstract byte[] b_();

    @Override // com.loc.bk
    public Map<String, String> d() {
        String strF = k.f(this.f12564a);
        String strA = m.a();
        String strA2 = m.a(this.f12564a, strA, "key=".concat(String.valueOf(strF)));
        HashMap map = new HashMap();
        map.put("ts", strA);
        map.put("key", strF);
        map.put("scode", strA2);
        return map;
    }

    @Override // com.loc.bk
    public final byte[] e() {
        byte[] bArr = this.c;
        if (bArr != null) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(A());
            byteArrayOutputStream.write(B());
            byteArrayOutputStream.write(C());
            byteArrayOutputStream.write(D());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.c = byteArray;
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                aj.a(th, "bre", "geb");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                aj.a(th2, "bre", "geb");
                try {
                    return null;
                } catch (Throwable th3) {
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    aj.a(th4, "bre", "geb");
                }
            }
        }
    }

    protected String f() {
        return "2.1";
    }

    public boolean i() {
        return true;
    }

    public String j() {
        return String.format("platform=Android&sdkversion=%s&product=%s", this.b.c(), this.b.a());
    }

    protected boolean k() {
        return false;
    }
}
