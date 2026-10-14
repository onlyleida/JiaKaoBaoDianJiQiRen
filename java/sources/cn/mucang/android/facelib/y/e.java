package cn.mucang.android.facelib.y;

import android.graphics.Bitmap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface e {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f3062a = Float.MAX_VALUE;
        private Object b = null;
        private Bitmap c;

        public Object a() {
            return this.b;
        }

        public Bitmap b() {
            return this.c;
        }

        public void c(Object obj) {
            this.b = obj;
        }

        public void d(Bitmap bitmap) {
            this.c = bitmap;
        }

        public String toString() {
            return ("" + String.format("(%.1f%%) ", Float.valueOf(this.f3062a * 100.0f))).trim();
        }
    }

    List<a> a(Bitmap bitmap, boolean z);

    void close();
}
