package cn.mucang.android.jiakaoyi.hpmap.view.tilemap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.utils.o0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.sundial.library.device.BaseCamera;
import com.alibaba.fastjson.JSON;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class e extends k {
    private cn.mucang.android.jiakaoyi.signal.pos.c i;
    private boolean j;
    private final f k;
    private final Map<TileItem.TileScale, TileModel> l;
    private final List<g> m;
    private final List<TileItem.TileScale> n;
    private TileItem.TileScale o;

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            e.this.k.b();
        }
    }

    class b implements Comparator<TileItem.TileScale> {
        b(e eVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(TileItem.TileScale tileScale, TileItem.TileScale tileScale2) {
            return Integer.compare(tileScale.scale, tileScale2.scale);
        }
    }

    public e(final MapView mapView, long j) {
        super(mapView);
        this.j = true;
        this.l = new HashMap();
        this.m = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.n = arrayList;
        this.f3758a = -2;
        arrayList.clear();
        String str = o0.b(j) + "/tile/";
        o();
        f fVar = new f(str);
        this.k = fVar;
        fVar.j(new f.b() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.tilemap.a
            @Override // cn.mucang.android.jiakaoyi.hpmap.view.tilemap.f.b
            public final void a(List list) {
                this.f3774a.l(mapView, list);
            }
        });
        mapView.addOnAttachStateChangeListener(new a());
    }

    private void j() {
        boolean z;
        int currentZoom = (int) ((1.0f / this.c.getCurrentZoom()) * 10.0f);
        Iterator<TileItem.TileScale> it = this.n.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            TileItem.TileScale next = it.next();
            if (next.scale >= currentZoom) {
                this.o = next;
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        for (TileItem.TileScale tileScale : this.n) {
            if (currentZoom >= tileScale.scale && this.o != tileScale) {
                this.o = tileScale;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(final MapView mapView, final List list) {
        Handler handlerR = mapView.u.r();
        if (handlerR == null) {
            return;
        }
        handlerR.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.view.tilemap.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3775a.n(list, mapView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(List list, MapView mapView) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((g) it.next()).b.isVisible(this.i)) {
                it.remove();
            }
        }
        this.k.i(list);
        p(list);
        mapView.r();
    }

    private void o() {
        String strE = o0.e();
        cn.mucang.android.jiakaoyi.framework.log.f.o("瓦片地图层级：" + strE);
        try {
            List<TileParam> array = JSON.parseArray(strE, TileParam.class);
            if (cn.mucang.android.core.utils.g.d(array)) {
                for (TileParam tileParam : array) {
                    TileItem.TileScale tileScale = new TileItem.TileScale(tileParam.scale);
                    this.n.add(tileScale);
                    TileModel tileModel = new TileModel();
                    int i = tileParam.row;
                    tileModel.rows = i;
                    int i2 = tileParam.column;
                    tileModel.cols = i2;
                    tileModel.tileSize = tileParam.textureSize;
                    tileModel.maps = (TileItem[][]) Array.newInstance((Class<?>) TileItem.class, i, i2);
                    for (int i3 = 0; i3 < tileModel.maps.length; i3++) {
                        int i4 = 0;
                        while (true) {
                            TileItem[][] tileItemArr = tileModel.maps;
                            if (i4 < tileItemArr[i3].length) {
                                tileItemArr[i3][i4] = new TileItem(i3, i4, tileParam.originRow, tileParam.originColumn, tileParam.textureSize, tileScale, "line" + i3 + "_" + i4 + BaseCamera.SUFFIX_JPEG);
                                i4++;
                            }
                        }
                    }
                    this.l.put(tileScale, tileModel);
                }
                Collections.sort(this.n, new b(this));
                this.o = this.n.get(0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("解析瓦片地图层级异常：" + e2.getLocalizedMessage());
        }
    }

    private void p(List<g> list) {
        this.m.clear();
        this.m.addAll(list);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        j();
        TileModel tileModel = this.l.get(this.o);
        if (tileModel == null || tileModel.maps == null || this.i == null) {
            return;
        }
        canvas.save();
        canvas.setMatrix(matrix);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < tileModel.maps.length; i++) {
            int i2 = 0;
            while (true) {
                TileItem[][] tileItemArr = tileModel.maps;
                if (i2 < tileItemArr[i].length) {
                    TileItem tileItem = tileItemArr[i][i2];
                    if (tileItem.isVisible(this.i)) {
                        arrayList.add(new g(tileItem));
                    }
                    i2++;
                }
            }
        }
        if (this.k.g(arrayList, this.o)) {
            p(arrayList);
        }
        System.nanoTime();
        Iterator<g> it = this.m.iterator();
        while (it.hasNext()) {
            g next = it.next();
            if (next.b.isVisible(this.i)) {
                try {
                    Bitmap bitmap = next.f3782a;
                    if (bitmap != null) {
                        canvas.drawBitmap(bitmap, (Rect) null, next.b.dst, (Paint) null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                it.remove();
                next.f3782a = null;
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        this.i = cVar;
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void g() {
        super.g();
        f fVar = this.k;
        if (fVar != null) {
            fVar.b();
            this.m.clear();
        }
    }
}
