package com.mobile.auth.c;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.mobile.auth.b.f;
import com.mobile.auth.d.i;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13108a = "d";
    private static final byte[] b = {Ascii.SI, Ascii.US, 94, 10, 90, Ascii.SI, 91, Ascii.CAN, 10, Ascii.RS, 88, 7, 89, 10, 95, Ascii.RS};

    static /* synthetic */ String a(Context context, Queue queue) {
        try {
            return b(context, (Queue<String>) queue);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ Queue a(Context context, List list, int i) {
        try {
            return c(context, list, i);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ void a(Context context) {
        try {
            c(context);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static void a(Context context, int i) {
        try {
            try {
                com.mobile.auth.d.b.a(context, "key_c_l_l_v", i);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0036  */
    public static void a(Context context, String str) {
        byte b2;
        try {
            int iHashCode = str.hashCode();
            int i = -1;
            if (iHashCode != 64897) {
                if (iHashCode != 78159) {
                    if (iHashCode == 66247144 && str.equals("ERROR")) {
                        b2 = 1;
                    } else {
                        b2 = -1;
                    }
                } else if (str.equals("OFF")) {
                    b2 = 2;
                } else {
                    b2 = -1;
                }
            } else if (str.equals("ALL")) {
                b2 = 0;
            } else {
                b2 = -1;
            }
            if (b2 != 0) {
                if (b2 != 1) {
                    i = b2 != 2 ? 0 : -2;
                }
            }
            a(context, i);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(Context context, List<String> list) {
        try {
            int iB = b(context);
            if (iB == -2) {
                return;
            }
            b(context, list, iB);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(Context context, Queue queue, int i) {
        try {
            b(context, (Queue<String>) queue, i);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static int b(Context context) {
        try {
            return com.mobile.auth.d.b.b(context, "key_c_l_l_v", 0);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return 0;
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return -1;
                }
            }
        }
    }

    private static String b(Context context, String str) {
        try {
            return a.a(context, "https://collect.ux.21cn.com/collect/custom/accountMsg", str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private static String b(Context context, Queue<String> queue) {
        try {
            JSONArray jSONArray = new JSONArray();
            String string = jSONArray.toString();
            if (!queue.isEmpty()) {
                Iterator<String> it = queue.iterator();
                while (it.hasNext()) {
                    try {
                        jSONArray.put(new JSONObject(it.next()));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (jSONArray.length() <= 0) {
                return "";
            }
            String string2 = jSONArray.toString();
            if (!TextUtils.isEmpty(string2)) {
                try {
                    string = URLEncoder.encode(com.mobile.auth.b.b.a(com.mobile.auth.b.a.b(string2, f.a(b))), "UTF-8");
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            return b(context, string);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private static void b(final Context context, final List<String> list, final int i) {
        try {
            i.a(new Runnable() { // from class: com.mobile.auth.c.d.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    try {
                        Queue queueA = d.a(context, list, i);
                        if (queueA.isEmpty()) {
                            return;
                        }
                        String strA = d.a(context, queueA);
                        JSONObject jSONObject = null;
                        int i2 = -1;
                        try {
                            if (!TextUtils.isEmpty(strA)) {
                                JSONObject jSONObject2 = new JSONObject(strA);
                                try {
                                    i2 = jSONObject2.getInt("code");
                                    jSONObject = jSONObject2;
                                } catch (Exception e2) {
                                    e = e2;
                                    jSONObject = jSONObject2;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                        if (jSONObject == null || i2 != 0) {
                            d.a(context, queueA, i);
                        } else {
                            d.a(context);
                            queueA.clear();
                        }
                    } catch (Throwable th) {
                        try {
                            th.printStackTrace();
                        } catch (Throwable th2) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            } catch (Throwable th3) {
                                com.mobile.auth.gatewayauth.a.a(th3);
                            }
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static void b(Context context, Queue<String> queue, int i) {
        try {
            String strA = "";
            JSONArray jSONArray = new JSONArray();
            if (queue != null && !queue.isEmpty()) {
                Iterator<String> it = queue.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    try {
                        JSONObject jSONObject = new JSONObject(it.next());
                        if (i != -1 || jSONObject.getInt("rt") != 0) {
                            jSONArray.put(jSONObject);
                            i2++;
                            if (i2 > 10) {
                                break;
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (jSONArray.length() > 0) {
                try {
                    strA = com.mobile.auth.b.a.a(jSONArray.toString(), f.a(b));
                } catch (Exception e3) {
                    strA = null;
                    e3.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            c.a(context, strA);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static synchronized Queue<String> c(Context context, List<String> list, int i) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        try {
            concurrentLinkedQueue = new ConcurrentLinkedQueue();
            String strA = c.a(context);
            if (!TextUtils.isEmpty(strA)) {
                try {
                    JSONArray jSONArray = new JSONArray(com.mobile.auth.b.a.c(strA, f.a(b)));
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length && i2 <= 10; i2++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i2);
                        if (jSONObject != null) {
                            concurrentLinkedQueue.add(jSONObject.toString());
                        }
                    }
                    c.a(context, "");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (i == -1) {
                for (String str : list) {
                    try {
                        if (new JSONObject(str).getInt("rt") != 0) {
                            concurrentLinkedQueue.add(str);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            } else if (i == 0) {
                concurrentLinkedQueue.addAll(list);
            }
            while (concurrentLinkedQueue.size() > 10) {
                concurrentLinkedQueue.poll();
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return concurrentLinkedQueue;
    }

    private static void c(Context context) {
        try {
            c.a(context, "");
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
