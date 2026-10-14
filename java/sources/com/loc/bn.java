package com.loc;

import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class bn {
    public static int a(bm bmVar) {
        bc bcVar = null;
        try {
            if (bmVar.f12626f.c()) {
                bmVar.f12626f.a(true);
                bc bcVarA = bc.a(new File(bmVar.f12623a), bmVar.b);
                try {
                    ArrayList arrayList = new ArrayList();
                    byte[] bArrA = a(bcVarA, bmVar, arrayList);
                    if (bArrA != null && bArrA.length != 0) {
                        al alVar = new al(bArrA, bmVar.c);
                        bf.a();
                        JSONObject jSONObject = new JSONObject(new String(bf.a(alVar).f12619a));
                        if (jSONObject.has("code") && jSONObject.getInt("code") == 1) {
                            cf cfVar = bmVar.f12626f;
                            if (cfVar != null && bArrA != null) {
                                cfVar.a(bArrA.length);
                            }
                            if (bmVar.f12626f.b() < Integer.MAX_VALUE) {
                                a(bcVarA, arrayList);
                            } else {
                                try {
                                    bcVarA.d();
                                } catch (Throwable th) {
                                    am.b(th, "ofm", "dlo");
                                }
                            }
                            return bArrA.length;
                        }
                        bcVar = bcVarA;
                    }
                    if (bcVarA != null) {
                        try {
                            bcVarA.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    return -1;
                } catch (Throwable th3) {
                    th = th3;
                    bcVar = bcVarA;
                    try {
                        am.b(th, "leg", "uts");
                        if (bcVar != null) {
                            bcVar.close();
                        }
                        return -1;
                    } catch (Throwable th4) {
                        if (bcVar != null) {
                            try {
                                bcVar.close();
                            } catch (Throwable th5) {
                                th5.printStackTrace();
                            }
                        }
                        throw th4;
                    }
                }
            }
            if (bcVar != null) {
                bcVar.close();
            }
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        return -1;
    }

    private static void a(bc bcVar, List<String> list) {
        if (bcVar != null) {
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    bcVar.c(it.next());
                }
                bcVar.close();
            } catch (Throwable th) {
                am.b(th, "ofm", "dlo");
            }
        }
    }

    public static void a(String str, byte[] bArr, bm bmVar) throws Throwable {
        bc bcVarA;
        OutputStream outputStreamA = null;
        try {
            if (a(bmVar.f12623a, str)) {
                return;
            }
            File file = new File(bmVar.f12623a);
            if (!file.exists()) {
                file.mkdirs();
            }
            bcVarA = bc.a(file, bmVar.b);
            try {
                bcVarA.a(bmVar.f12624d);
                byte[] bArrB = bmVar.f12625e.b(bArr);
                bc.a aVarB = bcVarA.b(str);
                outputStreamA = aVarB.a();
                outputStreamA.write(bArrB);
                aVarB.b();
                bcVarA.c();
                if (outputStreamA != null) {
                    try {
                        outputStreamA.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (bcVarA != null) {
                    try {
                        bcVarA.close();
                        return;
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        return;
                    }
                }
                return;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            bcVarA = null;
        }
        if (outputStreamA != null) {
            try {
                outputStreamA.close();
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        }
        if (bcVarA == null) {
            throw th;
        }
        try {
            bcVarA.close();
            throw th;
        } catch (Throwable th6) {
            th6.printStackTrace();
            throw th;
        }
    }

    private static boolean a(String str, String str2) {
        try {
            return new File(str, str2 + ".0").exists();
        } catch (Throwable th) {
            am.b(th, "leg", "fet");
            return false;
        }
    }

    private static byte[] a(bc bcVar, bm bmVar, List<String> list) {
        try {
            File fileB = bcVar.b();
            if (fileB != null && fileB.exists()) {
                int length = 0;
                for (String str : fileB.list()) {
                    if (str.contains(".0")) {
                        String str2 = str.split("\\.")[0];
                        byte[] bArrA = bs.a(bcVar, str2);
                        length += bArrA.length;
                        list.add(str2);
                        if (length > bmVar.f12626f.b()) {
                            break;
                        }
                        bmVar.f12627g.b(bArrA);
                    }
                }
                if (length <= 0) {
                    return null;
                }
                return bmVar.f12627g.a();
            }
        } catch (Throwable th) {
            am.b(th, "leg", "gCo");
        }
        return new byte[0];
    }
}
