package com.autonavi.base.amap.mapcore;

import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.IPoint;

/* JADX INFO: loaded from: classes5.dex */
public class Rectangle {
    private int beyond180Mode;
    public float bottom;
    public FPoint[] clipMapRect;
    public IPoint[] clipRect;
    public float left;
    public Rect rect;
    public float right;
    public float top;

    public Rectangle() {
        this.rect = new Rect();
        this.beyond180Mode = 0;
        this.clipRect = null;
        this.clipMapRect = null;
    }

    private void updateClipMapRect(int i, int i2) {
        if (this.clipMapRect == null) {
            FPoint[] fPointArr = new FPoint[4];
            this.clipMapRect = fPointArr;
            fPointArr[0] = FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.clipMapRect[1] = FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.clipMapRect[2] = FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.clipMapRect[3] = FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        Rect rect = this.rect;
        if (rect != null) {
            FPoint[] fPointArr2 = this.clipMapRect;
            FPoint fPoint = fPointArr2[0];
            int i3 = rect.left;
            ((PointF) fPoint).x = i3 - i;
            FPoint fPoint2 = fPointArr2[0];
            int i4 = rect.top;
            ((PointF) fPoint2).y = i4 - i2;
            FPoint fPoint3 = fPointArr2[1];
            int i5 = rect.right;
            ((PointF) fPoint3).x = i5 - i;
            ((PointF) fPointArr2[1]).y = i4 - i2;
            ((PointF) fPointArr2[2]).x = i5 - i;
            FPoint fPoint4 = fPointArr2[2];
            int i6 = rect.bottom;
            ((PointF) fPoint4).y = i6 - i2;
            ((PointF) fPointArr2[3]).x = i3 - i;
            ((PointF) fPointArr2[3]).y = i6 - i2;
        }
    }

    private void updateClipRect() {
        if (this.clipRect == null) {
            IPoint[] iPointArr = new IPoint[4];
            this.clipRect = iPointArr;
            iPointArr[0] = IPoint.obtain(0, 0);
            this.clipRect[1] = IPoint.obtain(0, 0);
            this.clipRect[2] = IPoint.obtain(0, 0);
            this.clipRect[3] = IPoint.obtain(0, 0);
        }
        Rect rect = this.rect;
        if (rect != null) {
            IPoint[] iPointArr2 = this.clipRect;
            IPoint iPoint = iPointArr2[0];
            int i = rect.left;
            ((Point) iPoint).x = i;
            IPoint iPoint2 = iPointArr2[0];
            int i2 = rect.top;
            ((Point) iPoint2).y = i2;
            IPoint iPoint3 = iPointArr2[1];
            int i3 = rect.right;
            ((Point) iPoint3).x = i3;
            ((Point) iPointArr2[1]).y = i2;
            ((Point) iPointArr2[2]).x = i3;
            IPoint iPoint4 = iPointArr2[2];
            int i4 = rect.bottom;
            ((Point) iPoint4).y = i4;
            ((Point) iPointArr2[3]).x = i;
            ((Point) iPointArr2[3]).y = i4;
        }
    }

    public boolean contains(int i, int i2) {
        Rect rect = this.rect;
        if (rect == null) {
            return false;
        }
        if (rect.contains(i, i2)) {
            return true;
        }
        if (this.beyond180Mode != 0) {
            return this.rect.contains(i - 268435456, i2) || this.rect.contains(i + 268435456, i2);
        }
        return false;
    }

    public int getBeyond180Mode() {
        return this.beyond180Mode;
    }

    public FPoint[] getClipMapRect() {
        return this.clipMapRect;
    }

    public IPoint[] getClipRect() {
        return this.clipRect;
    }

    public Rect getRect() {
        return this.rect;
    }

    public boolean isOverlap(Rect rect) {
        Rect rect2 = this.rect;
        if (rect2 != null && rect != null) {
            int iWidth = rect2.left + rect2.width();
            int i = rect.left;
            if (iWidth > i) {
                int iWidth2 = i + rect.width();
                Rect rect3 = this.rect;
                if (iWidth2 > rect3.left) {
                    int iHeight = rect3.top + rect3.height();
                    int i2 = rect.top;
                    if (iHeight > i2 && i2 + rect.height() > this.rect.top) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void updateRect(Rect rect, int i, int i2) {
        if (rect != null) {
            this.rect = rect;
            rect.inset((-rect.width()) / 8, (-rect.height()) / 8);
            Rect rect2 = this.rect;
            float f2 = rect2.left / 100000.0f;
            int i3 = rect2.right;
            if (f2 * (i3 / 100000.0f) < BitmapDescriptorFactory.HUE_RED) {
                this.beyond180Mode = -1;
            } else if (i3 > 268435456) {
                this.beyond180Mode = 1;
            } else {
                this.beyond180Mode = 0;
            }
            updateClipRect();
            updateClipMapRect(i, i2);
        }
    }

    public Rectangle(Rect rect, int i, int i2) {
        this.rect = new Rect();
        this.beyond180Mode = 0;
        this.clipRect = null;
        this.clipMapRect = null;
        this.rect = rect;
        if (rect != null) {
            updateRect(rect, i, i2);
            updateClipRect();
            updateClipMapRect(rect.centerX(), rect.centerY());
        }
    }

    public boolean contains(IPoint iPoint) {
        if (iPoint == null) {
            return false;
        }
        return contains(((Point) iPoint).x, ((Point) iPoint).y);
    }

    public boolean isOverlap(int i, int i2, int i3, int i4) {
        Rect rect = this.rect;
        if (rect != null && rect.left + rect.width() > i) {
            int i5 = i + i3;
            Rect rect2 = this.rect;
            if (i5 > rect2.left && rect2.top + rect2.height() > i2 && i2 + i4 > this.rect.top) {
                return true;
            }
        }
        return false;
    }

    public boolean contains(Rect rect) {
        if (rect == null) {
            return false;
        }
        return this.rect.contains(rect);
    }

    public Rectangle(float f2, float f3, float f4, float f5) {
        this.rect = new Rect();
        this.beyond180Mode = 0;
        this.clipRect = null;
        this.clipMapRect = null;
        if (f2 >= f3 || f5 <= f4) {
            return;
        }
        this.left = f2;
        this.right = f3;
        this.top = f5;
        this.bottom = f4;
    }
}
