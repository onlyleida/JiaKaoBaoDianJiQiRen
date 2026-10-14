package g.b.a.a.c;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f14552a;
        private List<String> b;

        public a(Object obj) {
            Objects.requireNonNull(obj, "null reference");
            this.f14552a = obj;
            this.b = new ArrayList();
        }

        public final a a(String str, Object obj) {
            List<String> list = this.b;
            String str2 = str + "=" + obj;
            b.b(str2);
            list.add(str2);
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f14552a.getClass().getSimpleName());
            sb.append('{');
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.b.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static a a(Object obj) {
        return new a(obj);
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
