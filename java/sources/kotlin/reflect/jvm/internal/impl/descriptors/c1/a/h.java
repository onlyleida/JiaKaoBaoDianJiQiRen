package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(kotlin.reflect.jvm.internal.impl.name.b bVar) {
        String strB = bVar.i().b();
        r.d(strB, "relativeClassName.asString()");
        String strW = t.w(strB, '.', '$', false, 4, null);
        if (bVar.h().d()) {
            return strW;
        }
        return bVar.h() + '.' + strW;
    }
}
