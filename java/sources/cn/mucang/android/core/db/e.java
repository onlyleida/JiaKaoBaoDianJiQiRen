package cn.mucang.android.core.db;

import cn.mucang.android.core.utils.g;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2516a;
    private List<String> b = new ArrayList();

    public e(String str) {
        this.f2516a = str;
    }

    public static e d(String str, String... strArr) {
        e eVar = new e(str);
        for (String str2 : strArr) {
            eVar.b(str2);
        }
        return eVar;
    }

    public e a(List<String> list) {
        this.b.addAll(list);
        return this;
    }

    public e b(String str) {
        this.b.add(str);
        return this;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public e clone() {
        e eVar = new e(this.f2516a);
        eVar.b = new ArrayList(this.b);
        return eVar;
    }

    public String[] e() {
        List<String> list = this.b;
        return (String[]) list.toArray(new String[list.size()]);
    }

    public String f() {
        return this.f2516a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2516a);
        if (g.d(this.b)) {
            sb.append(" | ");
            sb.append(this.b);
        }
        return sb.toString();
    }
}
