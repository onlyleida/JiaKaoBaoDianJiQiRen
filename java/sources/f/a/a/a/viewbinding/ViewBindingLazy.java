package f.a.a.a.viewbinding;

import android.view.LayoutInflater;
import androidx.viewbinding.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.u.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0012B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00028\u00008VX\u0096\u0004¢\u0006\f\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/core/viewbinding/ViewBindingLazy;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lkotlin/Lazy;", "viewBingClass", "Ljava/lang/Class;", "layoutInflaterProvider", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "(Ljava/lang/Class;Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;)V", "cached", "Landroidx/viewbinding/ViewBinding;", "value", "getValue$annotations", "()V", "getValue", "()Landroidx/viewbinding/ViewBinding;", "isInitialized", "", "LayoutInflaterProvider", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ViewBindingLazy<VB extends androidx.viewbinding.a> implements Lazy<VB> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<VB> f14501a;
    private final a b;
    private VB c;

    /* JADX INFO: renamed from: f.a.a.a.u.d$a */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        LayoutInflater get();
    }

    public ViewBindingLazy(Class<VB> viewBingClass, a layoutInflaterProvider) {
        r.e(viewBingClass, "viewBingClass");
        r.e(layoutInflaterProvider, "layoutInflaterProvider");
        this.f14501a = viewBingClass;
        this.b = layoutInflaterProvider;
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public VB getValue() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        VB vb = this.c;
        if (vb != null) {
            return vb;
        }
        Method declaredMethod = this.f14501a.getDeclaredMethod("inflate", LayoutInflater.class);
        r.d(declaredMethod, "viewBingClass.getDeclare…youtInflater::class.java)");
        Object objInvoke = declaredMethod.invoke(null, this.b.get());
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type VB of cn.mucang.android.core.viewbinding.ViewBindingLazy._get_value_$lambda-1");
        VB vb2 = (VB) objInvoke;
        this.c = vb2;
        return vb2;
    }
}
