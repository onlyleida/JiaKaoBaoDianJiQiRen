package cn.mucang.android.jiakaoyi.hpmap.view.tilemap;

import android.graphics.RectF;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class TileItem implements Serializable {
    public final int col;
    public final RectF dst;
    public final String name;
    private final cn.mucang.android.jiakaoyi.signal.pos.c rect;
    public final int row;
    public final int size;
    public final TileScale tileScale;
    public final float x;
    public final float y;

    public static class TileScale implements Serializable {
        int scale;

        public TileScale(int i) {
            this.scale = i;
        }
    }

    public TileItem(int i, int i2, int i3, int i4, int i5, TileScale tileScale, String str) {
        this.row = i;
        this.col = i2;
        this.size = i5;
        this.name = str;
        this.tileScale = tileScale;
        float f2 = (i5 * tileScale.scale) / 10.0f;
        float f3 = (i2 - i4) * f2;
        float f4 = f2 / 2.0f;
        float f5 = f3 - f4;
        this.x = f5;
        float f6 = ((i - i3) * f2) - f4;
        this.y = f6;
        this.rect = new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(f5, f6), new Pos(f5, f6 + f2), new Pos(f5 + f2, f6 + f2), new Pos(f5 + f2, f6));
        this.dst = new RectF(f5, f6, f5 + f2, f2 + f6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileItem tileItem = (TileItem) obj;
        return this.row == tileItem.row && this.col == tileItem.col && this.tileScale == tileItem.tileScale;
    }

    public boolean isVisible(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(this.rect, cVar);
    }
}
