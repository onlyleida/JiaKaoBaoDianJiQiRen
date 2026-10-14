package org.libpag;

import android.graphics.Bitmap;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PAGDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f16256a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PAGSurface f16257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGPlayer f16258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f16259f;

    static {
        org.extra.tools.a.a("pag");
    }

    public static PAGDecoder Make(PAGComposition pAGComposition) {
        return Make(pAGComposition, pAGComposition.frameRate(), 1.0f);
    }

    private boolean a() {
        if (this.f16257d == null) {
            this.f16257d = PAGSurface.MakeOffscreen(this.f16256a, this.b);
        }
        PAGSurface pAGSurface = this.f16257d;
        if (pAGSurface != null) {
            this.f16258e.setSurface(pAGSurface);
        }
        return this.f16257d != null;
    }

    public boolean copyFrameTo(Bitmap bitmap, int i) {
        if (bitmap == null || bitmap.isRecycled() || i < 0 || i >= this.c || !a()) {
            return false;
        }
        this.f16258e.setProgress(k.b(i, this.c));
        this.f16258e.flush();
        return this.f16257d.copyPixelsTo(bitmap);
    }

    public Bitmap frameAtIndex(int i) {
        Bitmap bitmap;
        if (i < 0 || i >= this.c || !a()) {
            return null;
        }
        this.f16258e.setProgress(k.b(i, this.c));
        if (!this.f16258e.flush() && (bitmap = this.f16259f) != null && !bitmap.isRecycled()) {
            return this.f16259f;
        }
        Bitmap bitmapMakeSnapshot = this.f16257d.makeSnapshot();
        this.f16259f = bitmapMakeSnapshot;
        return bitmapMakeSnapshot;
    }

    public int height() {
        return this.b;
    }

    public int numFrames() {
        return this.c;
    }

    public void release() {
        PAGSurface pAGSurface = this.f16257d;
        if (pAGSurface != null) {
            pAGSurface.release();
        }
        this.f16258e.setSurface(null);
        this.f16258e.setComposition(null);
        this.f16258e.release();
    }

    public int width() {
        return this.f16256a;
    }

    public static PAGDecoder Make(PAGComposition pAGComposition, float f2, float f3) {
        if (pAGComposition == null) {
            return null;
        }
        if (f3 <= BitmapDescriptorFactory.HUE_RED) {
            f3 = 1.0f;
        }
        float fFrameRate = f2 <= BitmapDescriptorFactory.HUE_RED ? pAGComposition.frameRate() : Math.min(pAGComposition.frameRate(), f2);
        PAGDecoder pAGDecoder = new PAGDecoder();
        pAGDecoder.f16256a = Math.round(pAGComposition.width() * f3);
        pAGDecoder.b = Math.round(pAGComposition.height() * f3);
        pAGDecoder.c = (int) ((pAGComposition.duration() * fFrameRate) / 1000000.0f);
        PAGPlayer pAGPlayer = new PAGPlayer();
        pAGDecoder.f16258e = pAGPlayer;
        if (fFrameRate > BitmapDescriptorFactory.HUE_RED) {
            pAGPlayer.setMaxFrameRate(fFrameRate);
        }
        pAGDecoder.f16258e.setComposition(pAGComposition);
        return pAGDecoder;
    }
}
