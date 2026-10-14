package com.serenegiant.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

/* JADX INFO: loaded from: classes6.dex */
public class PathShape extends BaseShape {
    private Path mPath;

    public PathShape(Path path, float f2, float f3) {
        super(f2, f3);
        this.mPath = new Path();
        setPath(path);
    }

    @Override // com.serenegiant.graphics.BaseShape
    protected void doDraw(Canvas canvas, Paint paint) {
        canvas.drawPath(this.mPath, paint);
    }

    public Path getPath() {
        return this.mPath;
    }

    public void setPath(Path path) {
        this.mPath.reset();
        if (path == null || path.isEmpty()) {
            return;
        }
        this.mPath.addPath(path);
    }

    @Override // com.serenegiant.graphics.BaseShape, android.graphics.drawable.shapes.Shape
    public PathShape clone() throws CloneNotSupportedException {
        PathShape pathShape = (PathShape) super.clone();
        pathShape.mPath = new Path(this.mPath);
        return pathShape;
    }
}
