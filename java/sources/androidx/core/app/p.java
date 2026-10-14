package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Iterable<Intent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<Intent> f1062a = new ArrayList<>();
    private final Context b;

    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private p(Context context) {
        this.b = context;
    }

    public static p i(Context context) {
        return new p(context);
    }

    public p a(Intent intent) {
        this.f1062a.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p b(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = g.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.b.getPackageManager());
            }
            f(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public p f(ComponentName componentName) {
        int size = this.f1062a.size();
        try {
            Intent intentB = g.b(this.b, componentName);
            while (intentB != null) {
                this.f1062a.add(size, intentB);
                intentB = g.b(this.b, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e2);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1062a.iterator();
    }

    public void j() {
        l(null);
    }

    public void l(Bundle bundle) {
        if (this.f1062a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.f1062a;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.a.a.k(this.b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.b.startActivity(intent);
    }
}
