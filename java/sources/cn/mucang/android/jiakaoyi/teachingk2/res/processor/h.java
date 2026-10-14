package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.blankj.utilcode.util.c;
import java.io.File;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class h implements ResourceManager.c {

    public static class a extends j {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.o.h$a$a, reason: collision with other inner class name */
        public static class C0135a extends j.a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final File f7607d;

            public C0135a(String str, File file) {
                super(str);
                this.f7607d = file;
            }

            @Override // cn.mucang.android.jiakaoyi.mapcollect.c.j.a
            protected void a() throws Throwable {
                String strC = o.c(this.f7607d);
                if (n0.e(strC)) {
                    throw new NullPointerException("地图文件为空");
                }
                try {
                    cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.c(Long.parseLong(this.f4728a), strC);
                    Iterator<Class<? extends SourceData>> it = this.b.iterator();
                    while (it.hasNext()) {
                        this.c.addAll(cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.a(this.f4728a, it.next()));
                    }
                } catch (Exception e2) {
                    t.d("MapProcessor", "保存地图数据到 sp 失败：" + e2.toString());
                }
            }
        }

        public a(String str, C0135a c0135a) {
            super(str, true, (j.a) c0135a);
        }

        @Override // cn.mucang.android.jiakaoyi.mapcollect.c.j
        protected cn.mucang.android.jiakaoyi.signal.i.a b(j.a aVar) {
            return n.b().f7599a;
        }
    }

    private File b(File file) {
        File file2 = new File(MucangConfig.getContext().getExternalCacheDir().getAbsolutePath() + "/res/map");
        if (file2.exists()) {
            c.b(file2);
        } else {
            file2.mkdirs();
        }
        return new File(file2, file.getName());
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        File fileB = b(file);
        g.a(file, fileB);
        n.b().b = fileB.getAbsolutePath();
        n.b().l(new a(String.valueOf(j), new a.C0135a(String.valueOf(j), fileB)));
    }
}
