package f.a.a.a.j;

import android.app.Fragment;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class b extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f14454a;

    public void a(c cVar) {
        this.f14454a = cVar;
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        c cVar = this.f14454a;
        if (cVar != null) {
            cVar.onActivityResult(i, i2, intent);
            this.f14454a = null;
        }
    }
}
