package cn.mucang.sundial.library.fragment;

import android.app.Application;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import androidx.lifecycle.a;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J-\u0010\u000b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0006*\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/fragment/BaseFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/lifecycle/m0$a;", "getViewModelFactory", "()Landroidx/lifecycle/m0$a;", "Landroidx/lifecycle/a;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/o0;", "owner", "Ljava/lang/Class;", "vmClass", "vm", "(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;", "Landroidx/lifecycle/m0$b;", "vmFactory", "()Landroidx/lifecycle/m0$b;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class BaseFragment extends Fragment {
    private final m0.a getViewModelFactory() {
        d activity = getActivity();
        Application application = activity != null ? activity.getApplication() : null;
        r.c(application);
        m0.a aVar = m0.a.getInstance(application);
        r.d(aVar, "ViewModelProvider.Androi…(activity?.application!!)");
        return aVar;
    }

    public final <T extends a> T vm(o0 owner, Class<T> vmClass) {
        r.e(owner, "owner");
        r.e(vmClass, "vmClass");
        j0 j0VarA = new m0(owner, vmFactory()).a(vmClass);
        r.d(j0VarA, "ViewModelProvider(owner, vmFactory()).get(vmClass)");
        return (T) j0VarA;
    }

    protected m0.b vmFactory() {
        return getViewModelFactory();
    }
}
