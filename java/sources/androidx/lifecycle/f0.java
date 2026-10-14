package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Class[] f1499e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<String, Object> f1500a;
    final Map<String, SavedStateRegistry.b> b;
    private final Map<String, Object<?>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SavedStateRegistry.b f1501d;

    class a implements SavedStateRegistry.b {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            for (Map.Entry entry : new HashMap(f0.this.b).entrySet()) {
                f0.this.c((String) entry.getKey(), ((SavedStateRegistry.b) entry.getValue()).a());
            }
            Set<String> setKeySet = f0.this.f1500a.keySet();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(setKeySet.size());
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
            for (String str : setKeySet) {
                arrayList.add(str);
                arrayList2.add(f0.this.f1500a.get(str));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    static {
        Class[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        Class<SizeF> cls = Integer.TYPE;
        clsArr[4] = cls;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        int i = Build.VERSION.SDK_INT;
        clsArr[27] = i >= 21 ? Size.class : cls;
        if (i >= 21) {
            cls = SizeF.class;
        }
        clsArr[28] = cls;
        f1499e = clsArr;
    }

    public f0(Map<String, Object> map) {
        this.b = new HashMap();
        this.c = new HashMap();
        this.f1501d = new a();
        this.f1500a = new HashMap(map);
    }

    static f0 a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new f0();
        }
        HashMap map = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                map.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new f0(map);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            map.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new f0(map);
    }

    private static void d(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : f1499e) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + obj.getClass() + " into saved state");
    }

    SavedStateRegistry.b b() {
        return this.f1501d;
    }

    public <T> void c(String str, T t) {
        d(t);
        z zVar = (z) this.c.get(str);
        if (zVar != null) {
            zVar.o(t);
        } else {
            this.f1500a.put(str, t);
        }
    }

    public f0() {
        this.b = new HashMap();
        this.c = new HashMap();
        this.f1501d = new a();
        this.f1500a = new HashMap();
    }
}
