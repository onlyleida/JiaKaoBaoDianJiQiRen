package f.a.a.a.p009n.dialog;

import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import androidx.fragment.app.u;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: f.a.a.a.n.d.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "dismiss", "", "onStart", "show", "manager", "Landroidx/fragment/app/FragmentManager;", "tag", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class SafeDialogFragment extends c {
    @Override // androidx.fragment.app.c
    public void dismiss() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.dismissAllowingStateLoss();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.onStart();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    @Override // androidx.fragment.app.c
    public void show(FragmentManager manager, String tag) {
        r.e(manager, "manager");
        try {
            Result.Companion companion = Result.INSTANCE;
            u uVarM = manager.m();
            uVarM.q(this);
            uVarM.j();
            Result.m139constructorimpl(Boolean.valueOf(manager.f0()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        try {
            super.show(manager, tag);
        } catch (Exception unused) {
            u uVarM2 = manager.m();
            r.d(uVarM2, "manager.beginTransaction()");
            uVarM2.e(this, tag);
            uVarM2.j();
        }
    }
}
