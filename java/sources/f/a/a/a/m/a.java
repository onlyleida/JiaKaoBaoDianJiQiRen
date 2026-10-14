package f.a.a.a.m;

import cn.mucang.android.core.utils.n0;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashSet<InterfaceC0296a> f14468a = new HashSet<>();

    /* JADX INFO: renamed from: f.a.a.a.m.a$a, reason: collision with other inner class name */
    public interface InterfaceC0296a {
        boolean a(String str);
    }

    public static boolean a(String str) {
        if (n0.e(str)) {
            return false;
        }
        Iterator<InterfaceC0296a> it = f14468a.iterator();
        while (it.hasNext()) {
            if (it.next().a(str)) {
                return true;
            }
        }
        return false;
    }
}
