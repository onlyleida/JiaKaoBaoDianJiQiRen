package androidx.localbroadcastmanager.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.iflytek.cloud.SpeechConstant;
import com.tencent.tauth.AuthActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f1529f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f1530g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1531a;
    private final HashMap<BroadcastReceiver, ArrayList<c>> b = new HashMap<>();
    private final HashMap<String, ArrayList<c>> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<b> f1532d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f1533e;

    /* JADX INFO: renamed from: androidx.localbroadcastmanager.a.a$a, reason: collision with other inner class name */
    class HandlerC0045a extends Handler {
        HandlerC0045a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f1535a;
        final ArrayList<c> b;

        b(Intent intent, ArrayList<c> arrayList) {
            this.f1535a = intent;
            this.b = arrayList;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f1536a;
        final BroadcastReceiver b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1537d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f1536a = intentFilter;
            this.b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.b);
            sb.append(" filter=");
            sb.append(this.f1536a);
            if (this.f1537d) {
                sb.append(" DEAD");
            }
            sb.append(VectorFormat.DEFAULT_SUFFIX);
            return sb.toString();
        }
    }

    private a(Context context) {
        this.f1531a = context;
        this.f1533e = new HandlerC0045a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f1529f) {
            if (f1530g == null) {
                f1530g = new a(context.getApplicationContext());
            }
            aVar = f1530g;
        }
        return aVar;
    }

    void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.b) {
                size = this.f1532d.size();
                if (size <= 0) {
                    return;
                }
                bVarArr = new b[size];
                this.f1532d.toArray(bVarArr);
                this.f1532d.clear();
            }
            for (int i = 0; i < size; i++) {
                b bVar = bVarArr[i];
                int size2 = bVar.b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    c cVar = bVar.b.get(i2);
                    if (!cVar.f1537d) {
                        cVar.b.onReceive(this.f1531a, bVar.f1535a);
                    }
                }
            }
        }
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.b) {
            c cVar = new c(intentFilter, broadcastReceiver);
            ArrayList<c> arrayList = this.b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cVar);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<c> arrayList2 = this.c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.c.put(action, arrayList2);
                }
                arrayList2.add(cVar);
            }
        }
    }

    public boolean d(Intent intent) {
        int i;
        String str;
        ArrayList arrayList;
        ArrayList<c> arrayList2;
        String str2;
        String str3;
        synchronized (this.b) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f1531a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<c> arrayList3 = this.c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    c cVar = arrayList3.get(i2);
                    if (z) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f1536a);
                    }
                    if (cVar.c) {
                        if (z) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                        i = i2;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = strResolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i = i2;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = strResolveTypeIfNeeded;
                        int iMatch = cVar.f1536a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (iMatch >= 0) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(cVar);
                            cVar.c = true;
                        } else if (z) {
                            if (iMatch == -4) {
                                str3 = SpeechConstant.ISE_CATEGORY;
                            } else if (iMatch == -3) {
                                str3 = AuthActivity.ACTION_KEY;
                            } else if (iMatch != -2) {
                                str3 = iMatch != -1 ? "unknown reason" : "type";
                            } else {
                                str3 = "data";
                            }
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + str3);
                        }
                        i2 = i + 1;
                        action = str;
                        arrayList3 = arrayList2;
                        strResolveTypeIfNeeded = str2;
                    }
                    arrayList4 = arrayList;
                    i2 = i + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    strResolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                        ((c) arrayList5.get(i3)).c = false;
                    }
                    this.f1532d.add(new b(intent, arrayList5));
                    if (!this.f1533e.hasMessages(1)) {
                        this.f1533e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.b) {
            ArrayList<c> arrayListRemove = this.b.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                c cVar = arrayListRemove.get(size);
                cVar.f1537d = true;
                for (int i = 0; i < cVar.f1536a.countActions(); i++) {
                    String action = cVar.f1536a.getAction(i);
                    ArrayList<c> arrayList = this.c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            c cVar2 = arrayList.get(size2);
                            if (cVar2.b == broadcastReceiver) {
                                cVar2.f1537d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
