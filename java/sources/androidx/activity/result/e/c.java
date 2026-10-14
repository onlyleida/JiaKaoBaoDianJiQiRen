package androidx.activity.result.e;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a<Intent, ActivityResult> {
    @Override // androidx.activity.result.e.a
    public /* bridge */ /* synthetic */ Intent a(Context context, Intent intent) {
        Intent intent2 = intent;
        d(context, intent2);
        return intent2;
    }

    public Intent d(Context context, Intent intent) {
        return intent;
    }

    @Override // androidx.activity.result.e.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ActivityResult c(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
