package cn.mucang.sundial.library.sdk.coach;

import android.os.Bundle;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.o0;
import cn.mucang.sundial.library.activity.TopActivity;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ-\u0010\u0016\u001a\u00028\u0000\"\b\b\u0000\u0010\u0011*\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d\"\n\b\u0000\u0010\u001c\u0018\u0001*\u00020\u001bH\u0085\b¢\u0006\u0004\b\u0016\u0010\u001e¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;", "Lcn/mucang/sundial/library/activity/TopActivity;", "Landroidx/lifecycle/m0$a;", "getViewModelFactory", "()Landroidx/lifecycle/m0$a;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onCreate", "(Landroid/os/Bundle;)V", "initData", "()V", "initViewModel", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Landroidx/lifecycle/a;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/o0;", "owner", "Ljava/lang/Class;", "vmClass", "vm", "(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;", "Landroidx/lifecycle/m0$b;", "vmFactory", "()Landroidx/lifecycle/m0$b;", "Landroidx/lifecycle/j0;", "VM", "Lkotlin/f;", "()Lkotlin/f;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public class TopBaseActivity extends TopActivity {

    /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.TopBaseActivity$vm$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/j0;", "VM", "Landroidx/lifecycle/m0$b;", "invoke", "()Landroidx/lifecycle/m0$b;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    public static final class AnonymousClass1 extends Lambda implements Function0<m0.b> {
        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final m0.b invoke() {
            return TopBaseActivity.this.vmFactory();
        }
    }

    private final m0.a getViewModelFactory() {
        m0.a aVar = m0.a.getInstance(getApplication());
        r.d(aVar, "ViewModelProvider.Androi….getInstance(application)");
        return aVar;
    }

    public void initData() {
    }

    public void initViewModel() {
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setRequestedOrientation(0);
        initData();
        initViewModel();
        setContentView(onCreateView(savedInstanceState));
    }

    public View onCreateView(Bundle savedInstanceState) {
        return null;
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

    protected final /* synthetic */ <VM extends j0> Lazy<VM> vm() {
        new AnonymousClass1();
        r.j(4, "VM");
        throw null;
    }
}
