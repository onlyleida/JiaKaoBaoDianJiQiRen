package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class br {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f12638a = false;
    static int b = 20;
    private static int c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<bm> f12639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f12640e;

    static class a extends cj {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static int f12641a = 1;
        static int b = 2;
        static int c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Context f12642d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private bq f12643f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f12644g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<bq> f12645h;

        a(Context context, int i) {
            this.f12642d = context;
            this.f12644g = i;
        }

        a(Context context, int i, bq bqVar) {
            this(context, i);
            this.f12643f = bqVar;
        }

        a(Context context, int i, List<bq> list) {
            this(context, i);
            this.f12645h = list;
        }

        @Override // com.loc.cj
        public final void a() {
            String str;
            String str2;
            bq bqVar;
            Throwable th;
            int i = this.f12644g;
            if (i == 1) {
                try {
                    if (this.f12642d != null && this.f12643f != null) {
                        synchronized (br.class) {
                            Context context = this.f12642d;
                            if (context != null && (bqVar = this.f12643f) != null) {
                                br.a(context, bqVar.a());
                                return;
                            }
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    str = "stm";
                    str2 = "as";
                }
            } else {
                if (i != 2) {
                    if (i == 3) {
                        try {
                            if (this.f12642d == null) {
                                return;
                            }
                            bm bmVarA = bs.a(br.f12639d);
                            bs.a(this.f12642d, bmVarA, ak.f12509h, 1000, 307200, "2");
                            if (bmVarA.f12627g == null) {
                                bmVarA.f12627g = new bt(new bx(this.f12642d, new bu(new by(new ca()))));
                            }
                            bmVarA.f12628h = 3600000;
                            if (TextUtils.isEmpty(bmVarA.i)) {
                                bmVarA.i = "cKey";
                            }
                            if (bmVarA.f12626f == null) {
                                Context context2 = this.f12642d;
                                bmVarA.f12626f = new ce(context2, bmVarA.f12628h, bmVarA.i, new cb(bmVarA.f12623a, new cc(context2, br.f12638a, br.c * 1024, br.b * 1024, "staticUpdate", br.f12640e * 1024)));
                            }
                            bn.a(bmVarA);
                            return;
                        } catch (Throwable th3) {
                            am.b(th3, "stm", "usd");
                            return;
                        }
                    }
                    return;
                }
                try {
                    synchronized (br.class) {
                        if (this.f12645h != null && this.f12642d != null) {
                            ByteArrayOutputStream byteArrayOutputStream = null;
                            byte[] byteArray = new byte[0];
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                try {
                                    for (bq bqVar2 : this.f12645h) {
                                        if (bqVar2 != null) {
                                            byteArrayOutputStream2.write(bqVar2.a());
                                        }
                                    }
                                    byteArray = byteArrayOutputStream2.toByteArray();
                                    try {
                                        byteArrayOutputStream2.close();
                                    } catch (Throwable th4) {
                                        th = th4;
                                        th.printStackTrace();
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    try {
                                        am.b(th, "stm", "aStB");
                                        if (byteArrayOutputStream != null) {
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (Throwable th6) {
                                                th = th6;
                                                th.printStackTrace();
                                            }
                                        }
                                    } catch (Throwable th7) {
                                        if (byteArrayOutputStream == null) {
                                            throw th7;
                                        }
                                        try {
                                            byteArrayOutputStream.close();
                                            throw th7;
                                        } catch (Throwable th8) {
                                            th8.printStackTrace();
                                            throw th7;
                                        }
                                    }
                                }
                            } catch (Throwable th9) {
                                th = th9;
                            }
                            br.a(this.f12642d, byteArray);
                            return;
                        }
                        return;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    str = "stm";
                    str2 = "apb";
                }
            }
            am.b(th, str, str2);
        }
    }

    public static void a(Context context) {
        ci.a().b(new a(context, a.c));
    }

    static /* synthetic */ void a(Context context, byte[] bArr) throws IOException {
        bm bmVarA = bs.a(f12639d);
        bs.a(context, bmVarA, ak.f12509h, 1000, 307200, "2");
        if (bmVarA.f12625e == null) {
            bmVarA.f12625e = new av();
        }
        try {
            bn.a(Integer.toString(new Random().nextInt(100)) + Long.toString(System.nanoTime()), bArr, bmVarA);
        } catch (Throwable th) {
            am.b(th, "stm", "wts");
        }
    }

    public static synchronized void a(bq bqVar, Context context) {
        ci.a().b(new a(context, a.f12641a, bqVar));
    }

    public static synchronized void a(List<bq> list, Context context) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    ci.a().b(new a(context, a.b, list));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void a(boolean z, int i) {
        f12638a = z;
        f12640e = Math.max(0, i);
    }

    public static synchronized void b(List<bq> list, Context context) {
        try {
            List<bq> listB = bh.b();
            if (listB != null && listB.size() > 0) {
                list.addAll(listB);
            }
        } catch (Throwable unused) {
        }
        a(list, context);
    }
}
