package androidx.lifecycle;

import kotlinx.coroutines.p2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {
    public static final kotlinx.coroutines.i0 a(j0 viewModelScope) {
        kotlin.jvm.internal.r.e(viewModelScope, "$this$viewModelScope");
        kotlinx.coroutines.i0 i0Var = (kotlinx.coroutines.i0) viewModelScope.getTag("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY");
        if (i0Var != null) {
            return i0Var;
        }
        Object tagIfAbsent = viewModelScope.setTagIfAbsent("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY", new e(p2.b(null, 1, null).plus(w0.c().B())));
        kotlin.jvm.internal.r.d(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (kotlinx.coroutines.i0) tagIfAbsent;
    }
}
