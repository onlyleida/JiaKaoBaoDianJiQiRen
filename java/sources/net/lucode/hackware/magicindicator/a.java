package net.lucode.hackware.magicindicator;

import android.annotation.TargetApi;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(11)
public class a {
    public static net.lucode.hackware.magicindicator.e.c.d.a a(List<net.lucode.hackware.magicindicator.e.c.d.a> list, int i) {
        net.lucode.hackware.magicindicator.e.c.d.a aVar;
        if (i >= 0 && i <= list.size() - 1) {
            return list.get(i);
        }
        net.lucode.hackware.magicindicator.e.c.d.a aVar2 = new net.lucode.hackware.magicindicator.e.c.d.a();
        if (i < 0) {
            aVar = list.get(0);
        } else {
            i = (i - list.size()) + 1;
            aVar = list.get(list.size() - 1);
        }
        aVar2.f16155a = aVar.f16155a + (aVar.b() * i);
        aVar2.b = aVar.b;
        aVar2.c = aVar.c + (aVar.b() * i);
        aVar2.f16156d = aVar.f16156d;
        aVar2.f16157e = aVar.f16157e + (aVar.b() * i);
        aVar2.f16158f = aVar.f16158f;
        aVar2.f16159g = aVar.f16159g + (i * aVar.b());
        aVar2.f16160h = aVar.f16160h;
        return aVar2;
    }
}
