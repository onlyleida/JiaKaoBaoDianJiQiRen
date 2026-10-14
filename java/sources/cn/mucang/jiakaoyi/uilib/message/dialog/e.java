package cn.mucang.jiakaoyi.uilib.message.dialog;

import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogChainOwner f9445a;
    private final PriorityQueue<f> b = new PriorityQueue<>(1, new a(this));
    private f c;

    class a implements Comparator<f> {
        a(e eVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f fVar, f fVar2) {
            return fVar.b() - fVar2.b();
        }
    }

    e(DialogChainOwner dialogChainOwner) {
        this.f9445a = dialogChainOwner;
    }

    public void a(f fVar) {
        boolean z;
        Iterator<f> it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            f next = it.next();
            if (next != null && next.getId().equals(fVar.getId())) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        this.b.offer(fVar);
    }

    void b() {
        this.f9445a = null;
        this.b.clear();
    }

    void c() {
        DialogChainOwner dialogChainOwner;
        DialogChainOwner dialogChainOwner2 = this.f9445a;
        if (dialogChainOwner2 != null && dialogChainOwner2.m()) {
            b();
            return;
        }
        if (this.b.isEmpty()) {
            return;
        }
        f fVar = this.c;
        if (fVar == null || !fVar.a() || ((dialogChainOwner = this.f9445a) != null && dialogChainOwner.l(this.c.getId()))) {
            f fVarPoll = this.b.poll();
            this.c = fVarPoll;
            if (fVarPoll != null) {
                fVarPoll.c(this);
            }
        }
    }
}
