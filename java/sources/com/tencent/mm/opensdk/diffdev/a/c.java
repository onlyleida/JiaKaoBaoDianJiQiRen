package com.tencent.mm.opensdk.diffdev.a;

import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ b f14048g;

    c(b bVar) {
        this.f14048g = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f14048g.f14047f.c);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((OAuthListener) it.next()).onQrcodeScanned();
        }
    }
}
