package com.loc;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Xml;
import android.view.WindowManager;
import com.google.common.primitives.UnsignedBytes;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Map;
import java.util.UUID;
import org.slf4j.Marker;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes4.dex */
public final class n {
    private static String A = "";
    private static String B = "";
    private static boolean C = false;
    private static boolean D = false;
    private static String E = "";
    private static boolean F = false;
    private static boolean G = false;
    private static long H = 0;
    private static int I = 0;
    private static String J = null;
    private static String K = "";
    private static boolean L = true;
    private static boolean M = false;
    private static String N = "";
    private static boolean O = false;
    private static int P = -1;
    private static boolean Q = false;
    private static int R = -1;
    private static boolean S = false;
    private static volatile b T = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f12998a = "";
    static String b = "";
    static volatile boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f12999d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static String f13000e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static boolean f13001f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static a f13002g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static int f13003h = -1;
    static String i = "";
    static String j = "";
    private static String k = null;
    private static boolean l = false;
    private static volatile boolean m = false;
    private static String n = "";
    private static boolean o = false;
    private static boolean p = false;
    private static boolean q = false;
    private static String r = "";
    private static String s = "";
    private static boolean t = false;
    private static boolean u = false;
    private static String v = "";
    private static boolean w = false;
    private static String x = "";
    private static boolean y = false;
    private static String z = "";

    public interface a {
        bk a(byte[] bArr, Map<String, String> map);

        String a();

        String a(Context context, String str);

        String a(String str, String str2, String str3, String str4);

        Map<String, String> b();
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Context f13006a;
        private static BroadcastReceiver b;
        private static ConnectivityManager c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static NetworkRequest f13007d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static ConnectivityManager.NetworkCallback f13008e;

        @SuppressLint({"WrongConstant"})
        public final void a(Context context) {
            if (Build.VERSION.SDK_INT < 24) {
                if (context == null || b != null) {
                    return;
                }
                b = new BroadcastReceiver() { // from class: com.loc.n.b.1
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context2, Intent intent) {
                        if (w.c("WYW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF").equals(intent.getAction())) {
                            n.h();
                        }
                    }
                };
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(w.c("WYW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF"));
                context.registerReceiver(b, intentFilter);
                return;
            }
            if (n.c(context, w.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) && context != null && c == null) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                c = connectivityManager;
                if (connectivityManager != null) {
                    f13007d = new NetworkRequest.Builder().addCapability(0).addCapability(1).build();
                    ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.loc.n.b.2
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onAvailable(Network network) {
                            super.onAvailable(network);
                            n.h();
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onLost(Network network) {
                            super.onLost(network);
                            n.h();
                        }
                    };
                    f13008e = networkCallback;
                    c.registerNetworkCallback(f13007d, networkCallback);
                    f13006a = context;
                }
            }
        }
    }

    static class c implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static String f13011a;
        private Context b;
        private int c;

        c(Context context, int i) {
            this.b = context;
            this.c = i;
        }

        private String a() {
            try {
                if (!TextUtils.isEmpty(f13011a)) {
                    return f13011a;
                }
                byte[] bArrDigest = MessageDigest.getInstance(w.c("IU0hBMQ")).digest(this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 64).signatures[0].toByteArray());
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : bArrDigest) {
                    stringBuffer.append(Integer.toHexString((b & UnsignedBytes.MAX_VALUE) | 256).substring(1, 3));
                }
                String string = stringBuffer.toString();
                if (!TextUtils.isEmpty(string)) {
                    f13011a = string;
                }
                return string;
            } catch (Throwable unused) {
                return "";
            }
        }

        /* JADX WARN: Code duplicated, block: B:16:0x004e A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:3:0x0008, B:16:0x004e, B:10:0x0017, B:11:0x003a, B:12:0x0040, B:13:0x0044), top: B:26:0x0008 }] */
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String strC;
            boolean z;
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                int i = this.c;
                if (i != 2) {
                    if (i == 4) {
                        strC = w.c("UY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2UuSURldmljZUlkU2VydmljZQ");
                    } else if (i != 5) {
                        z = false;
                    } else {
                        parcelObtain.writeInterfaceToken(w.c("KY29tLmhleXRhcC5vcGVuaWQuSU9wZW5JRA"));
                        parcelObtain.writeString(this.b.getPackageName());
                        parcelObtain.writeString(a());
                        parcelObtain.writeString(w.c("IT1VJRA"));
                        z = true;
                    }
                    if (z) {
                        iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        String unused = n.n = parcelObtain2.readString();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
                strC = w.c("UY29tLnVvZGlzLm9wZW5kZXZpY2UuYWlkbC5PcGVuRGV2aWNlSWRlbnRpZmllclNlcnZpY2U");
                parcelObtain.writeInterfaceToken(strC);
                z = true;
                if (z) {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    String unused2 = n.n = parcelObtain2.readString();
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
            } catch (Throwable th) {
                try {
                    aj.a(th, "oac", String.valueOf(this.c));
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    static String A(Context context) {
        try {
            return L(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String C(Context context) {
        try {
            String strB = au.b(context, "Alvin2", "UTDID2", "");
            return TextUtils.isEmpty(strB) ? au.b(context, "Alvin2", "UTDID", "") : strB;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String D(Context context) {
        FileInputStream fileInputStream = null;
        try {
            if (w.a(context, "android.permission.READ_EXTERNAL_STORAGE") && "mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/.UTSystemConfig/Global/Alvin2.xml");
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    xmlPullParserNewPullParser.setInput(fileInputStream2, "utf-8");
                    boolean z2 = false;
                    for (int eventType = xmlPullParserNewPullParser.getEventType(); 1 != eventType; eventType = xmlPullParserNewPullParser.next()) {
                        if (eventType != 2) {
                            if (eventType == 3) {
                                z2 = false;
                            } else if (eventType == 4 && z2) {
                                String text = xmlPullParserNewPullParser.getText();
                                try {
                                    fileInputStream2.close();
                                } catch (Throwable unused) {
                                }
                                return text;
                            }
                        } else if (xmlPullParserNewPullParser.getAttributeCount() > 0) {
                            int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                            for (int i2 = 0; i2 < attributeCount; i2++) {
                                String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i2);
                                if ("UTDID2".equals(attributeValue) || "UTDID".equals(attributeValue)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable unused2) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream == null) {
                        return "";
                    }
                }
            }
            if (fileInputStream == null) {
                return "";
            }
        } catch (Throwable unused3) {
        }
        try {
            fileInputStream.close();
            return "";
        } catch (Throwable unused4) {
            return "";
        }
    }

    private static String E(Context context) {
        try {
            Class<?> cls = Class.forName(w.c("WY29tLmFuZHJvaWQuaWQuaW1wbC5JZFByb3ZpZGVySW1wbA"));
            Object objInvoke = cls.getMethod(w.c("MZ2V0T0FJRA"), Context.class).invoke(cls.newInstance(), context);
            if (objInvoke != null) {
                String str = (String) objInvoke;
                n = str;
                return str;
            }
        } catch (Throwable th) {
            aj.a(th, "oa", "xm");
            o = true;
        }
        return n;
    }

    private static String F(Context context) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse(w.c("QY29udGVudDovL2NvbS52aXZvLnZtcy5JZFByb3ZpZGVyL0lkZW50aWZpZXJJZC9PQUlE")), null, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    int columnCount = cursorQuery.getColumnCount();
                    for (int i2 = 0; i2 < columnCount; i2++) {
                        if (w.c("IdmFsdWU").equals(cursorQuery.getColumnName(i2))) {
                            n = cursorQuery.getString(i2);
                            break;
                        }
                    }
                }
                cursorQuery.close();
            }
        } catch (Throwable th) {
            o = true;
            aj.a(th, "oa", "vivo");
        }
        return n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String G(Context context) {
        String strC = w.c("IeGlhb21p");
        String str = Build.MANUFACTURER;
        if (!strC.equalsIgnoreCase(str)) {
            String strC2 = w.c("IeGlhb21p");
            String str2 = Build.BRAND;
            if (!strC2.equalsIgnoreCase(str2) && !w.c("IUkVETUk=").equalsIgnoreCase(str) && !w.c("IUkVETUk=").equalsIgnoreCase(str2)) {
                if (w.c("Idml2bw").equalsIgnoreCase(str) || w.c("Idml2bw").equalsIgnoreCase(str2)) {
                    return F(context);
                }
                if (w.c("IaHVhd2Vp").equalsIgnoreCase(str) || w.c("IaHVhd2Vp").equalsIgnoreCase(str2) || w.c("ISE9OT1I=").equalsIgnoreCase(str)) {
                    return a(context, 2);
                }
                if (w.c("Mc2Ftc3VuZw").equalsIgnoreCase(str) || w.c("Mc2Ftc3VuZw").equalsIgnoreCase(str2)) {
                    return a(context, 4);
                }
                if (w.c("IT1BQTw").equalsIgnoreCase(str) || w.c("IT1BQTw").equalsIgnoreCase(str2) || w.c("MT25lUGx1cw").equalsIgnoreCase(str) || w.c("MT25lUGx1cw").equalsIgnoreCase(str2) || w.c("IUkVBTE1F").equalsIgnoreCase(str2)) {
                    return a(context, 5);
                }
                o = true;
                return n;
            }
        }
        return E(context);
    }

    private static String H(Context context) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = null;
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 9 && (i2 < 30 || context.getApplicationInfo().targetSdkVersion < 30)) {
                        hardwareAddress = networkInterface.getHardwareAddress();
                    }
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        String upperCase = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE).toUpperCase();
                        if (upperCase.length() == 1) {
                            sb.append("0");
                        }
                        sb.append(upperCase);
                        sb.append(":");
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    private static String I(Context context) {
        if (!TextUtils.isEmpty(E)) {
            return E;
        }
        try {
            String strB = au.b(context, "open_common", "a1", "");
            if (TextUtils.isEmpty(strB)) {
                E = "amap" + UUID.randomUUID().toString().replace("_", "").toLowerCase();
                SharedPreferences.Editor editorA = au.a(context, "open_common");
                au.a(editorA, "a1", w.b(E));
                au.a(editorA);
            } else {
                E = w.c(strB);
            }
        } catch (Throwable unused) {
        }
        return E;
    }

    private static boolean J(Context context) {
        int simState;
        TelephonyManager telephonyManagerP = P(context);
        return (telephonyManagerP == null || (simState = telephonyManagerP.getSimState()) == 0 || simState == 1) ? false : true;
    }

    private static String K(Context context) throws IllegalAccessException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        boolean zJ = J(context);
        if (L != zJ) {
            if (zJ) {
                K = "";
                M = false;
            }
            L = zJ;
        }
        String str = K;
        if ((str == null || "".equals(str)) && !M) {
            if (!L) {
                return "";
            }
            if (!c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return K;
            }
            TelephonyManager telephonyManagerP = P(context);
            if (telephonyManagerP == null) {
                return "";
            }
            Method methodA = w.a(telephonyManagerP.getClass(), "UZ2V0U3Vic2NyaWJlcklk", (Class<?>[]) new Class[0]);
            if (methodA != null) {
                K = (String) methodA.invoke(telephonyManagerP, new Object[0]);
            }
            if (K == null) {
                K = "";
            }
            M = true;
            return K;
        }
        return K;
    }

    private static String L(Context context) {
        TelephonyManager telephonyManagerP;
        if (O) {
            return N;
        }
        U(context);
        if (c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU=")) && (telephonyManagerP = P(context)) != null) {
            String simOperatorName = telephonyManagerP.getSimOperatorName();
            N = simOperatorName;
            if (TextUtils.isEmpty(simOperatorName)) {
                N = telephonyManagerP.getNetworkOperatorName();
            }
            O = true;
            return N;
        }
        return N;
    }

    private static int M(Context context) {
        if (Q) {
            return P;
        }
        U(context);
        if (context == null || !c(context, w.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
            return P;
        }
        ConnectivityManager connectivityManagerN = N(context);
        if (connectivityManagerN == null) {
            return P;
        }
        NetworkInfo activeNetworkInfo = connectivityManagerN.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            Q = true;
            return P;
        }
        int type = activeNetworkInfo.getType();
        P = type;
        Q = true;
        return type;
    }

    private static ConnectivityManager N(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    private static int O(Context context) {
        TelephonyManager telephonyManagerP;
        if (S) {
            return R;
        }
        U(context);
        if (c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU=")) && (telephonyManagerP = P(context)) != null) {
            int networkType = telephonyManagerP.getNetworkType();
            R = networkType;
            S = true;
            return networkType;
        }
        return R;
    }

    private static TelephonyManager P(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    private static String Q(Context context) {
        if (!c) {
            return "";
        }
        String strR = null;
        try {
            strR = R(context);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strR)) {
            c = false;
            return "";
        }
        try {
            byte[] bytes = w.c("MAAAAAAAAAAAAAAAAAAAAAA").getBytes("UTF-8");
            return new String(o.a(w.c("HYW1hcGFkaXVhbWFwYWRpdWFtYXBhZGl1YW1hcGFkaXU").getBytes("UTF-8"), o.b(strR), bytes), "UTF-8");
        } catch (Throwable unused2) {
            c = false;
            return "";
        }
    }

    private static String R(Context context) {
        String strS;
        try {
            strS = S(context);
        } catch (Throwable unused) {
            strS = "";
        }
        if (TextUtils.isEmpty(strS)) {
            return context == null ? "" : context.getSharedPreferences(w.c("SU2hhcmVkUHJlZmVyZW5jZUFkaXU"), 0).getString(r.a(w.c("RYW1hcF9kZXZpY2VfYWRpdQ")), "");
        }
        return strS;
    }

    private static String S(Context context) {
        RandomAccessFile randomAccessFile;
        String[] strArrSplit;
        String strA = r.a(w.c("LYW1hcF9kZXZpY2VfYWRpdQ"));
        String strT = T(context);
        if (TextUtils.isEmpty(strT)) {
            return "";
        }
        File file = new File(strT + File.separator + w.c("KYmFja3Vwcw"), w.c("MLmFkaXU"));
        if (file.exists() && file.canRead()) {
            if (file.length() == 0) {
                file.delete();
                return "";
            }
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    byte[] bArr = new byte[1024];
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    while (true) {
                        try {
                            int i2 = randomAccessFile.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            byteArrayOutputStream2.write(bArr, 0, i2);
                        } catch (Throwable unused) {
                            byteArrayOutputStream = byteArrayOutputStream2;
                            a(byteArrayOutputStream);
                        }
                    }
                    String str = new String(byteArrayOutputStream2.toByteArray(), "UTF-8");
                    if (!TextUtils.isEmpty(str) && str.contains(w.c("SIw")) && (strArrSplit = str.split(w.c("SIw"))) != null && strArrSplit.length == 2 && TextUtils.equals(strA, strArrSplit[0])) {
                        String str2 = strArrSplit[1];
                        a(byteArrayOutputStream2);
                        a(randomAccessFile);
                        return str2;
                    }
                    a(byteArrayOutputStream2);
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                randomAccessFile = null;
            }
            a(randomAccessFile);
        }
        return "";
    }

    private static String T(Context context) {
        if (Build.VERSION.SDK_INT < 9) {
            return null;
        }
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            Class<?> cls = Class.forName(w.c("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
            Method method = storageManager.getClass().getMethod(w.c("MZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
            Method method2 = cls.getMethod(w.c("FZ2V0UGF0aA"), new Class[0]);
            Method method3 = cls.getMethod(w.c("DaXNSZW1vdmFibGU"), new Class[0]);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = Array.get(objInvoke, i2);
                String str = (String) method2.invoke(obj, new Object[0]);
                if (!((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    return str;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static synchronized b U(Context context) {
        if (T == null) {
            if (context == null) {
                return null;
            }
            b bVar = new b();
            T = bVar;
            bVar.a(context.getApplicationContext());
        }
        return T;
    }

    public static String a() {
        return k;
    }

    public static String a(final Context context) {
        try {
            if (!TextUtils.isEmpty(b)) {
                return b;
            }
            if (context == null) {
                return "";
            }
            String strQ = Q(context);
            b = strQ;
            if (!TextUtils.isEmpty(strQ)) {
                return b;
            }
            if (c() == null || m) {
                return "";
            }
            m = true;
            ci.a().b(new cj() { // from class: com.loc.n.1
                @Override // com.loc.cj
                public final void a() {
                    try {
                        Map<String, String> mapB = n.f13002g.b();
                        String strA = n.f13002g.a(n.h(context), "", "", n.y(context));
                        if (TextUtils.isEmpty(strA)) {
                            return;
                        }
                        bf.a();
                        String strA2 = n.f13002g.a(context, new String(bf.a(n.f13002g.a(strA.getBytes(), mapB)).f12619a));
                        if (TextUtils.isEmpty(strA2)) {
                            return;
                        }
                        n.b = strA2;
                    } catch (Throwable unused) {
                    }
                }
            });
            return "";
        } catch (Throwable unused) {
        }
    }

    private static String a(Context context, int i2) {
        try {
            Intent intent = new Intent();
            if (i2 == 2) {
                intent.setAction(w.c("WY29tLnVvZGlzLm9wZW5kZXZpY2UuT1BFTklEU19TRVJWSUNF"));
                intent.setPackage(w.c("UY29tLmh1YXdlaS5od2lk"));
            } else if (i2 == 4) {
                intent.setClassName(w.c("WY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2U"), w.c("QY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2UuRGV2aWNlSWRTZXJ2aWNl"));
            } else {
                if (i2 != 5) {
                    o = true;
                    return n;
                }
                intent.setClassName(w.c("YY29tLmhleXRhcC5vcGVuaWQ"), w.c("SY29tLmhleXRhcC5vcGVuaWQuSWRlbnRpZnlTZXJ2aWNl"));
                intent.setAction(w.c("EYWN0aW9uLmNvbS5oZXl0YXAub3BlbmlkLk9QRU5fSURfU0VSVklDRQ"));
            }
            c cVar = new c(context, i2);
            if (context.bindService(intent, cVar, 1)) {
                int i3 = 0;
                while (i3 < 100 && TextUtils.isEmpty(n)) {
                    i3++;
                    Thread.sleep(15L);
                }
                context.unbindService(cVar);
            }
            return n;
        } catch (Throwable th) {
            aj.a(th, "oa", String.valueOf(i2));
            o = true;
            return n;
        }
    }

    public static String a(Context context, String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 || i2 < 21) {
            return "";
        }
        try {
            if (TextUtils.isEmpty(i) && !D) {
                TelephonyManager telephonyManagerP = P(context);
                if (f13003h == -1) {
                    Method methodA = w.a(TelephonyManager.class, "UZ2V0UGhvbmVDb3VudA=", (Class<?>[]) new Class[0]);
                    if (methodA != null) {
                        try {
                            f13003h = ((Integer) methodA.invoke(telephonyManagerP, new Object[0])).intValue();
                        } catch (Throwable unused) {
                            f13003h = 0;
                        }
                    } else {
                        f13003h = 0;
                    }
                }
                Method methodA2 = w.a(TelephonyManager.class, "MZ2V0SW1laQ=", (Class<?>[]) new Class[]{Integer.TYPE});
                if (methodA2 == null) {
                    f13003h = 0;
                    D = true;
                    return "";
                }
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < f13003h; i3++) {
                    try {
                        sb.append((String) methodA2.invoke(telephonyManagerP, Integer.valueOf(i3)));
                        sb.append(str);
                    } catch (Throwable unused2) {
                    }
                }
                String string = sb.toString();
                if (string.length() == 0) {
                    f13003h = 0;
                    D = true;
                    return "";
                }
                String strSubstring = string.substring(0, string.length() - 1);
                i = strSubstring;
                D = true;
                return strSubstring;
            }
            return i;
        } catch (Throwable unused3) {
            return "";
        }
    }

    public static void a(a aVar) {
        if (f13002g == null) {
            f13002g = aVar;
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str) {
        k = str;
    }

    public static String b() {
        try {
            if (!TextUtils.isEmpty(f13000e)) {
                return f13000e;
            }
            a aVar = f13002g;
            return aVar == null ? "" : aVar.a();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context) {
        try {
            return L(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static a c() {
        return f13002g;
    }

    public static String c(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        try {
            String strY = y(context);
            if (strY != null && strY.length() >= 5) {
                return strY.substring(3, 5);
            }
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    public static int d(Context context) {
        try {
            return O(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    static String[] d() {
        return new String[]{"", ""};
    }

    public static int e(Context context) {
        try {
            return M(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public static void e() {
        try {
            ah.a();
        } catch (Throwable unused) {
        }
    }

    public static long f() {
        long blockCount;
        long blockCount2;
        long j2 = H;
        if (j2 != 0) {
            return j2;
        }
        try {
            StatFs statFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockCount = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                blockCount2 = (statFs2.getBlockCountLong() * statFs2.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            } else {
                blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                blockCount2 = (((long) statFs2.getBlockCount()) * ((long) statFs2.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            H = blockCount + blockCount2;
        } catch (Throwable unused) {
        }
        return H;
    }

    public static String f(Context context) {
        try {
            return K(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String g() {
        if (!TextUtils.isEmpty(J)) {
            return J;
        }
        String property = System.getProperty("os.arch");
        J = property;
        return property;
    }

    public static String g(final Context context) {
        try {
            if (o) {
                return "";
            }
            if (TextUtils.isEmpty(n) && !p) {
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    ci.a().b(new cj() { // from class: com.loc.n.2
                        @Override // com.loc.cj
                        public final void a() {
                            n.G(context);
                            n.i();
                        }
                    });
                    return n;
                }
                p = true;
                return G(context);
            }
            return n;
        } catch (Throwable unused) {
        }
    }

    public static String h(Context context) {
        if (q) {
            String str = f12998a;
            return str == null ? "" : str;
        }
        try {
            String str2 = f12998a;
            if (str2 != null && !"".equals(str2)) {
                return f12998a;
            }
            if (c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFVFRJTkdT"))) {
                f12998a = Settings.System.getString(context.getContentResolver(), "mqBRboGZkQPcAkyk");
            }
            if (!TextUtils.isEmpty(f12998a)) {
                q = true;
                return f12998a;
            }
            try {
                String strC = C(context);
                f12998a = strC;
                if (!TextUtils.isEmpty(strC)) {
                    q = true;
                    return f12998a;
                }
            } catch (Throwable unused) {
            }
            try {
                f12998a = D(context);
                q = true;
            } catch (Throwable unused2) {
            }
            String str3 = f12998a;
            return str3 == null ? "" : str3;
        } catch (Throwable unused3) {
        }
    }

    public static void h() {
        P = -1;
        Q = false;
        R = -1;
        S = false;
        N = "";
        O = false;
        x = "";
        y = false;
    }

    public static String i(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return "";
        }
        if (TextUtils.isEmpty(s) && !t) {
            if (!c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return "";
            }
            try {
                if (i2 >= 26) {
                    String str = (String) w.a(Build.class, "MZ2V0U2VyaWFs", (Class<?>[]) new Class[0]).invoke(Build.class, new Object[0]);
                    t = true;
                    return str;
                }
                if (i2 >= 9) {
                    s = Build.SERIAL;
                    t = true;
                }
                String str2 = s;
                return str2 == null ? "" : str2;
            } catch (Throwable unused) {
            }
        }
        return s;
    }

    static /* synthetic */ boolean i() {
        p = true;
        return true;
    }

    public static String j(Context context) {
        if (TextUtils.isEmpty(r) && !u) {
            try {
                String string = Settings.Secure.getString(context.getContentResolver(), w.c(new String(af.a(13))));
                r = string;
                u = true;
                return string == null ? "" : string;
            } catch (Throwable unused) {
                return r;
            }
        }
        return r;
    }

    public static String k(Context context) {
        if (Build.VERSION.SDK_INT < 30 || context.getApplicationInfo().targetSdkVersion < 30) {
            try {
                String str = v;
                if ((str == null || "".equals(str)) && !w && c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                    WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                    if (wifiManager == null) {
                        return "";
                    }
                    v = wifiManager.getConnectionInfo().getMacAddress();
                    if (w.c("YMDI6MDA6MDA6MDA6MDA6MDA").equals(v) || w.c("YMDA6MDA6MDA6MDA6MDA6MDA").equals(v)) {
                        v = H(context);
                    }
                    w = true;
                }
                return v;
            } catch (Throwable unused) {
            }
        }
        return v;
    }

    static String l(Context context) {
        try {
            TelephonyManager telephonyManagerP = P(context);
            if (telephonyManagerP == null) {
                return "";
            }
            String networkOperator = telephonyManagerP.getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator) && networkOperator.length() >= 3) {
                return networkOperator.substring(0, 3);
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    static String m(Context context) {
        if (y) {
            return x;
        }
        try {
            U(context);
            TelephonyManager telephonyManagerP = P(context);
            if (telephonyManagerP == null) {
                return x;
            }
            String networkOperator = telephonyManagerP.getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator) && networkOperator.length() >= 3) {
                x = networkOperator.substring(3);
                y = true;
                return x;
            }
            y = true;
            return x;
        } catch (Throwable unused) {
        }
    }

    public static int n(Context context) {
        try {
            return O(context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static int o(Context context) {
        try {
            return M(context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static NetworkInfo p(Context context) {
        ConnectivityManager connectivityManagerN;
        if (c(context, w.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) && (connectivityManagerN = N(context)) != null) {
            return connectivityManagerN.getActiveNetworkInfo();
        }
        return null;
    }

    static String q(Context context) {
        try {
            NetworkInfo networkInfoP = p(context);
            if (networkInfoP == null) {
                return null;
            }
            return networkInfoP.getExtraInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    static String r(Context context) {
        StringBuilder sb;
        try {
            String str = z;
            if (str != null && !"".equals(str)) {
                return z;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            if (i3 > i2) {
                sb = new StringBuilder();
                sb.append(i2);
                sb.append(Marker.ANY_MARKER);
                sb.append(i3);
            } else {
                sb = new StringBuilder();
                sb.append(i3);
                sb.append(Marker.ANY_MARKER);
                sb.append(i2);
            }
            z = sb.toString();
            return z;
        } catch (Throwable unused) {
        }
    }

    public static String s(Context context) {
        try {
            if (!c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return K;
            }
            TelephonyManager telephonyManagerP = P(context);
            return telephonyManagerP == null ? "" : telephonyManagerP.getNetworkOperatorName();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String t(Context context) {
        ConnectivityManager connectivityManagerN;
        NetworkInfo activeNetworkInfo;
        try {
            return (!c(context, w.c("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) || (connectivityManagerN = N(context)) == null || (activeNetworkInfo = connectivityManagerN.getActiveNetworkInfo()) == null) ? "" : activeNetworkInfo.getTypeName();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String u(Context context) {
        try {
            String strV = v(context);
            try {
                if (TextUtils.isEmpty(strV)) {
                    strV = a(context);
                }
                if (TextUtils.isEmpty(strV)) {
                    strV = h(context);
                }
                if (TextUtils.isEmpty(strV)) {
                    strV = g(context);
                }
                if (TextUtils.isEmpty(strV)) {
                    strV = j(context);
                }
                return TextUtils.isEmpty(strV) ? I(context) : strV;
            } catch (Throwable unused) {
                return strV;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static String v(Context context) {
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                return "";
            }
            String str = A;
            if ((str == null || "".equals(str)) && !F && c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                TelephonyManager telephonyManagerP = P(context);
                if (telephonyManagerP == null) {
                    return "";
                }
                Method methodA = w.a(telephonyManagerP.getClass(), "QZ2V0RGV2aWNlSWQ", (Class<?>[]) new Class[0]);
                if (i2 >= 26) {
                    methodA = w.a(telephonyManagerP.getClass(), "QZ2V0SW1laQ==", (Class<?>[]) new Class[0]);
                }
                if (methodA != null) {
                    A = (String) methodA.invoke(telephonyManagerP, new Object[0]);
                }
                if (A == null) {
                    A = "";
                }
                F = true;
                return A;
            }
            return A;
        } catch (Throwable unused) {
        }
    }

    public static String w(Context context) {
        return v(context) + "#" + a(context) + "#" + u(context);
    }

    public static String x(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return "";
        }
        try {
            String str = B;
            if ((str == null || "".equals(str)) && c(context, w.c("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                TelephonyManager telephonyManagerP = P(context);
                if (telephonyManagerP == null) {
                    return "";
                }
                if (G) {
                    return B;
                }
                if (i2 >= 26) {
                    Method methodA = w.a(telephonyManagerP.getClass(), "QZ2V0TWVpZA==", (Class<?>[]) new Class[0]);
                    if (methodA != null) {
                        B = (String) methodA.invoke(telephonyManagerP, new Object[0]);
                    }
                    if (B == null) {
                        B = "";
                    }
                    G = true;
                }
                return B;
            }
            return B;
        } catch (Throwable unused) {
        }
    }

    public static String y(Context context) {
        try {
            return K(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int z(Context context) {
        int i2 = I;
        if (i2 != 0) {
            return i2;
        }
        int iIntValue = 0;
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return 0;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            iIntValue = (int) (memoryInfo.totalMem / 1024);
        } else {
            BufferedReader bufferedReader = null;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(new File("/proc/meminfo")));
                    try {
                        iIntValue = Integer.valueOf(bufferedReader2.readLine().split("\\s+")[1]).intValue();
                        bufferedReader2.close();
                    } catch (Throwable unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        int i3 = iIntValue / 1024;
                        I = i3;
                        return i3;
                    }
                } catch (IOException unused2) {
                }
            } catch (Throwable unused3) {
            }
        }
        int i4 = iIntValue / 1024;
        I = i4;
        return i4;
    }
}
