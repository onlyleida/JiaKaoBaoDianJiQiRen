package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amap.api.maps.model.Tile;
import com.amap.api.maps.model.TileProvider;

/* JADX INFO: loaded from: classes5.dex */
public class s3 extends t3 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TileProvider f11166g;

    public s3(Context context, int i, int i2) {
        super(context, i, i2);
        this.f11166g = null;
        y(context);
    }

    private void A(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return;
        }
        activeNetworkInfo.isConnectedOrConnecting();
    }

    private Bitmap B(f2.b bVar) {
        try {
            Tile tile = this.f11166g.getTile(bVar.f10778a, bVar.b, bVar.c);
            if (tile == null || tile == TileProvider.NO_TILE) {
                return null;
            }
            byte[] bArr = tile.data;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void y(Context context) {
        A(context);
    }

    @Override // com.amap.api.mapcore.util.u3
    protected Bitmap a(Object obj) {
        return B((f2.b) obj);
    }

    public void z(TileProvider tileProvider) {
        this.f11166g = tileProvider;
    }
}
