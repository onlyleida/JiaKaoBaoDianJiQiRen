package androidx.activity.result;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000b\n\u0002\b\u0002\n\u0002\b\u0004*\u0001\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"I", "O", "androidx/activity/result/ActivityResultCallerLauncher$resultContract$2$a", "invoke", "()Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$a;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class ActivityResultCallerLauncher$resultContract$2 extends Lambda implements Function0<a> {
    final /* synthetic */ b this$0;

    /* JADX INFO: Add missing generic type declarations: [O] */
    public static final class a<O> extends androidx.activity.result.e.a<v, O> {
        a() {
        }

        @Override // androidx.activity.result.e.a
        public /* bridge */ /* synthetic */ Intent a(Context context, v vVar) {
            d(context, vVar);
            throw null;
        }

        @Override // androidx.activity.result.e.a
        public O c(int i, Intent intent) {
            ActivityResultCallerLauncher$resultContract$2.this.this$0.d();
            throw null;
        }

        public Intent d(Context context, v vVar) {
            r.e(context, "context");
            ActivityResultCallerLauncher$resultContract$2.this.this$0.d();
            throw null;
        }
    }

    ActivityResultCallerLauncher$resultContract$2(b bVar) {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final a invoke() {
        return new a();
    }
}
