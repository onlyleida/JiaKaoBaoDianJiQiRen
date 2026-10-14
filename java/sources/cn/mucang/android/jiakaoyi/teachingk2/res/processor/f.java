package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import java.io.File;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class f implements ResourceManager.c {

    public static class a extends h {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.o.f$a$a, reason: collision with other inner class name */
        public static class C0134a extends h.a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final File f7606d;

            public C0134a(String str, File file) {
                super(str);
                this.f7606d = file;
            }

            @Override // cn.mucang.android.jiakaoyi.mapcollect.c.h.a
            protected void a() throws Throwable {
                try {
                    cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.c(Long.parseLong(this.f4715a), g.b(this.f7606d));
                    Iterator<Class<? extends SourceData>> it = this.b.iterator();
                    while (it.hasNext()) {
                        this.c.addAll(cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.a(this.f4715a, it.next()));
                    }
                } catch (Exception e2) {
                    t.d("MapB2Processor", "保存地图数据到 sp 失败：" + e2);
                }
            }
        }

        public a(String str, C0134a c0134a) {
            super(str, true, (h.a) c0134a);
        }

        @Override // cn.mucang.android.jiakaoyi.mapcollect.c.h
        protected cn.mucang.android.jiakaoyi.signal.i.a b() {
            return n.b().f7599a;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        n.b().m(new a(String.valueOf(j), new a.C0134a(String.valueOf(j), file)));
    }
}
