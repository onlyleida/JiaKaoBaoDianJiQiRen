package org.libpag;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16302a;

    p(PAGView pAGView) {
        this.f16302a = pAGView;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        synchronized (this.f16302a) {
            arrayList = new ArrayList(this.f16302a.v);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGView.PAGFlushListener) it.next()).onFlush();
        }
    }
}
