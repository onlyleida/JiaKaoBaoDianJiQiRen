package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m;

import android.location.Location;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.gps.c;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class b extends a<cn.mucang.android.jiakaoyi.signal.center.model.b> {
    private BufferedReader b = null;
    private InputStream c = null;

    private boolean e(Location location) {
        return location.getLatitude() > 1.0E-7d && location.getLongitude() > 1.0E-7d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        o.a(this.b);
        this.b = null;
        this.c = null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.signal.center.model.b a(InputStream inputStream, int i, ComName comName) throws ComException, IOException {
        if (this.b == null || inputStream != this.c) {
            this.b = new BufferedReader(new InputStreamReader(inputStream));
        }
        this.c = inputStream;
        cn.mucang.android.jiakaoyi.signal.center.model.b bVarJ = c.j(this.b, inputStream, comName);
        if (bVarJ == null || !k.c(bVarJ.f5281g) || !e(bVarJ.f5281g)) {
            return null;
        }
        JLocationManager.f5733a.o(bVarJ);
        return bVarJ;
    }
}
