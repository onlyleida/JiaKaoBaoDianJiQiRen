package com.unity3d.player;

import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f14338a = new HashMap();
    private Class b;
    private Object c;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Class[] f14339a;
        public Method b = null;

        public a(Class[] clsArr) {
            this.f14339a = clsArr;
        }
    }

    public q(Class cls, Object obj) {
        this.b = null;
        this.c = null;
        this.b = cls;
        this.c = obj;
    }

    private void a(String str, a aVar) {
        try {
            aVar.b = this.b.getMethod(str, aVar.f14339a);
        } catch (Exception e2) {
            g.Log(6, "Exception while trying to get method " + str + ". " + e2.getLocalizedMessage());
            aVar.b = null;
        }
    }

    public final Object a(String str, Object... objArr) {
        StringBuilder sb;
        Object objInvoke = null;
        if (this.f14338a.containsKey(str)) {
            a aVar = (a) this.f14338a.get(str);
            if (aVar.b == null) {
                a(str, aVar);
            }
            Method method = aVar.b;
            if (method != null) {
                try {
                    objInvoke = objArr.length == 0 ? method.invoke(this.c, new Object[0]) : method.invoke(this.c, objArr);
                } catch (Exception e2) {
                    g.Log(6, "Error trying to call delegated method " + str + ". " + e2.getLocalizedMessage());
                }
                return objInvoke;
            }
            sb = new StringBuilder("Unable to create method: ");
        } else {
            sb = new StringBuilder("No definition for method ");
            sb.append(str);
            str = " can be found";
        }
        sb.append(str);
        g.Log(6, sb.toString());
        return null;
    }

    public final void a(String str, Class[] clsArr) {
        this.f14338a.put(str, new a(clsArr));
    }
}
