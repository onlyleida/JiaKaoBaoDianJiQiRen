package com.amap.api.mapcore.util;

import com.amap.api.maps.MapsInitializer;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r2 extends k7 {
    protected boolean isPostFlag = true;

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return null;
    }

    protected byte[] makeHttpRequest() throws gb {
        int protocol = MapsInitializer.getProtocol();
        j7 j7VarG = j7.g(false);
        if (protocol == 1) {
            return this.isPostFlag ? j7VarG.e(this) : j7VarG.n(this);
        }
        if (protocol == 2) {
            return this.isPostFlag ? j7VarG.d(this) : j7VarG.o(this);
        }
        return null;
    }
}
