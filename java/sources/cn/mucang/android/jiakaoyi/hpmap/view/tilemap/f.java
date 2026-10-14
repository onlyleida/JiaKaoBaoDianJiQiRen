package cn.mucang.android.jiakaoyi.hpmap.view.tilemap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.LruCache;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3780a;
    private b b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LruCache<String, Bitmap> f3781d = new a(this, 27262976);

    class a extends LruCache<String, Bitmap> {
        a(f fVar, int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    interface b {
        void a(List<g> list);
    }

    public f(String str) {
        this.f3780a = str;
    }

    private void a(List<g> list) {
        b bVar = this.b;
        if (bVar != null) {
            bVar.a(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(g gVar, TileItem.TileScale tileScale, CountDownLatch countDownLatch) {
        h(gVar, tileScale);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(CountDownLatch countDownLatch, List list) {
        try {
            countDownLatch.await();
            a(list);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    private void h(g gVar, TileItem.TileScale tileScale) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        gVar.f3782a = BitmapFactory.decodeFile(this.f3780a + tileScale.scale + File.separator + gVar.b.name, options);
    }

    public void b() {
        this.f3781d.evictAll();
    }

    public boolean g(final List<g> list, final TileItem.TileScale tileScale) {
        ArrayList<g> arrayList = new ArrayList();
        for (g gVar : list) {
            Bitmap bitmap = this.f3781d.get(gVar.b.name + "_" + gVar.b.tileScale.scale);
            if (bitmap == null) {
                arrayList.add(gVar);
            } else {
                gVar.f3782a = bitmap;
            }
        }
        if (arrayList.size() == 0) {
            return true;
        }
        if (System.currentTimeMillis() - this.c < 300) {
            return false;
        }
        this.c = System.currentTimeMillis();
        final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
        for (final g gVar2 : arrayList) {
            ThreadPool.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.tilemap.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3777a.d(gVar2, tileScale, countDownLatch);
                }
            });
        }
        ThreadPool.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.tilemap.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f3776a.f(countDownLatch, list);
            }
        });
        return false;
    }

    public void i(List<g> list) {
        if (list != null) {
            for (g gVar : list) {
                Bitmap bitmap = gVar.f3782a;
                if (bitmap != null && !bitmap.isRecycled()) {
                    this.f3781d.put(gVar.b.name + "_" + gVar.b.tileScale.scale, gVar.f3782a);
                }
            }
        }
    }

    public void j(b bVar) {
        this.b = bVar;
    }
}
