package com.unity3d.splash.services.core.device;

import android.content.Context;
import com.unity3d.splash.services.c.b.b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class StorageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final Map f14402a = new HashMap();
    protected static final List b = new ArrayList();

    public enum StorageType {
        PRIVATE,
        PUBLIC
    }

    public static synchronized void a(StorageType storageType, String str) {
        Map map = f14402a;
        if (!map.containsKey(storageType)) {
            map.put(storageType, str);
        }
    }

    public static a b(StorageType storageType) {
        List<a> list = b;
        if (list == null) {
            return null;
        }
        for (a aVar : list) {
            if (aVar != null && aVar.h().equals(storageType)) {
                return aVar;
            }
        }
        return null;
    }

    public static boolean c(StorageType storageType) {
        List<a> list = b;
        if (list == null) {
            return false;
        }
        for (a aVar : list) {
            if (aVar != null && aVar.h().equals(storageType)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(Context context) {
        File filesDir;
        if (context == null || (filesDir = context.getFilesDir()) == null) {
            return false;
        }
        StorageType storageType = StorageType.PUBLIC;
        a(storageType, filesDir + "/" + b.f() + "public-data.json");
        if (!f(storageType)) {
            return false;
        }
        StorageType storageType2 = StorageType.PRIVATE;
        a(storageType2, filesDir + "/" + b.f() + "private-data.json");
        return f(storageType2);
    }

    public static void e(StorageType storageType) {
        if (c(storageType)) {
            a aVarB = b(storageType);
            if (aVarB != null) {
                aVarB.i();
                return;
            }
            return;
        }
        Map map = f14402a;
        if (map.containsKey(storageType)) {
            a aVar = new a((String) map.get(storageType), storageType);
            aVar.i();
            b.add(aVar);
        }
    }

    private static boolean f(StorageType storageType) {
        if (c(storageType)) {
            return true;
        }
        e(storageType);
        a aVarB = b(storageType);
        if (aVarB != null && !aVarB.k()) {
            aVarB.l();
        }
        return aVarB != null;
    }
}
