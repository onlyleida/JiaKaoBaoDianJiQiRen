package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1027a = new Object();
    private static Field b;
    private static boolean c;

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    private static n b(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("allowedDataTypes");
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
        }
        return new n(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), 0, bundle.getBundle("extras"), hashSet);
    }

    private static n[] c(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        n[] nVarArr = new n[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            nVarArr[i] = b(bundleArr[i]);
        }
        return nVarArr;
    }

    static i.b d(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new i.b(bundle.getInt("icon"), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), c(e(bundle, "remoteInputs")), c(e(bundle, "dataOnlyRemoteInputs")), bundle2 != null ? bundle2.getBoolean("android.support.allowGeneratedReplies", false) : false, bundle.getInt("semanticAction"), bundle.getBoolean("showsUserInterface"), false);
    }

    private static Bundle[] e(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    static Bundle f(i.b bVar) {
        Bundle bundle = new Bundle();
        IconCompat iconCompatF = bVar.f();
        bundle.putInt("icon", iconCompatF != null ? iconCompatF.n() : 0);
        bundle.putCharSequence("title", bVar.j());
        bundle.putParcelable("actionIntent", bVar.a());
        Bundle bundle2 = bVar.d() != null ? new Bundle(bVar.d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", i(bVar.g()));
        bundle.putBoolean("showsUserInterface", bVar.i());
        bundle.putInt("semanticAction", bVar.h());
        return bundle;
    }

    public static Bundle g(Notification notification) {
        synchronized (f1027a) {
            if (c) {
                return null;
            }
            try {
                if (b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    b = declaredField;
                }
                Bundle bundle = (Bundle) b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                c = true;
                return null;
            } catch (NoSuchFieldException e3) {
                Log.e("NotificationCompat", "Unable to access notification extras", e3);
                c = true;
                return null;
            }
        }
    }

    private static Bundle h(n nVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", nVar.j());
        bundle.putCharSequence("label", nVar.i());
        bundle.putCharSequenceArray("choices", nVar.f());
        bundle.putBoolean("allowFreeFormInput", nVar.d());
        bundle.putBundle("extras", nVar.h());
        Set<String> setE = nVar.e();
        if (setE != null && !setE.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(setE.size());
            Iterator<String> it = setE.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    private static Bundle[] i(n[] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[nVarArr.length];
        for (int i = 0; i < nVarArr.length; i++) {
            bundleArr[i] = h(nVarArr[i]);
        }
        return bundleArr;
    }

    public static Bundle j(Notification.Builder builder, i.b bVar) {
        IconCompat iconCompatF = bVar.f();
        builder.addAction(iconCompatF != null ? iconCompatF.n() : 0, bVar.j(), bVar.a());
        Bundle bundle = new Bundle(bVar.d());
        if (bVar.g() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", i(bVar.g()));
        }
        if (bVar.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", i(bVar.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        return bundle;
    }
}
