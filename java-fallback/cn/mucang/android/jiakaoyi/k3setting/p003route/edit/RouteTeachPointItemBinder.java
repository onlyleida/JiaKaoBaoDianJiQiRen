package cn.mucang.android.jiakaoyi.k3setting.route.edit;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding;
import cn.mucang.jiakaoyi.uilib.model.TeachStepNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;", "gpsGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "Landroid/location/Location;", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "updateName", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteTeachPointItemBinder extends cn.mucang.android.jiakaoyi.framework.base.f<TeachStepNode, K3TeachPointItemBinding> {
    private final cn.mucang.android.jiakaoyi.framework.h.c<Location> b;

    public RouteTeachPointItemBinder(cn.mucang.android.jiakaoyi.framework.h.c<Location> r2) {
        kotlin.jvm.internal.r.e(r2, "gpsGetter");
        this.b = r2;
    }

    public static final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.c n(RouteTeachPointItemBinder r0) {
        return r0.b;
    }

    public static final /* synthetic */ void o(RouteTeachPointItemBinder r0, TeachStepNode r1, cn.mucang.android.jiakaoyi.framework.base.h r2) {
        r0.u(r1, r2);
    }

    public static /* synthetic */ void p(TeachStepNode r0, RouteTeachPointItemBinder r1, cn.mucang.android.jiakaoyi.framework.base.h r2, View r3) {
        s(r0, r1, r2, r3);
    }

    public static /* synthetic */ void q(TeachStepNode r0, RouteTeachPointItemBinder r1, cn.mucang.android.jiakaoyi.framework.base.h r2, View r3) {
        t(r0, r1, r2, r3);
    }

    private static final void s(TeachStepNode r11, RouteTeachPointItemBinder r12, cn.mucang.android.jiakaoyi.framework.base.h r13, View r14) {
        kotlin.jvm.internal.r.e(r11, "$item");
        kotlin.jvm.internal.r.e(r12, "this$0");
        kotlin.jvm.internal.r.e(r13, "$holder");
        if (r11.getTeachId() != null) goto L7;
        cn.mucang.android.core.utils.u.h("teachId 为空");
        return;
    L7:
        if (r11.getUid() != null) goto L11;
        cn.mucang.android.core.utils.u.h("uid 为空");
        return;
    L11:
        if (r11.getLatitude() != null) goto L13;
    L17:
        cn.mucang.android.core.utils.u.h("经纬度为空");
        return;
    L13:
        if (r11.getLongitude() == null) goto L17;
        Activity r15 = MucangConfig.i();
        kotlin.jvm.internal.r.d(r15, "getCurrentActivity()");
        cn.mucang.android.jiakaoyi.framework.base.dialog.t r4 = new cn.mucang.android.jiakaoyi.framework.base.dialog.t(r15);
        r4.b("清空教学采集点中");
        kotlinx.coroutines.f.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new RouteTeachPointItemBinder$onBindViewHolder$1$1(r11, r12, r13, r4, null), 3, null);
    }

    private static final void t(TeachStepNode r11, RouteTeachPointItemBinder r12, cn.mucang.android.jiakaoyi.framework.base.h r13, View r14) {
        kotlin.jvm.internal.r.e(r11, "$item");
        kotlin.jvm.internal.r.e(r12, "this$0");
        kotlin.jvm.internal.r.e(r13, "$holder");
        if (r11.getTeachId() != null) goto L7;
        cn.mucang.android.core.utils.u.h("teachId 为空");
        return;
    L7:
        if (r11.getUid() != null) goto L10;
        cn.mucang.android.core.utils.u.h("uid 为空");
        return;
    L10:
        Activity r15 = MucangConfig.i();
        kotlin.jvm.internal.r.d(r15, "getCurrentActivity()");
        cn.mucang.android.jiakaoyi.framework.base.dialog.t r4 = new cn.mucang.android.jiakaoyi.framework.base.dialog.t(r15);
        r4.b("添加教学采集点中");
        kotlinx.coroutines.f.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new RouteTeachPointItemBinder$onBindViewHolder$2$1(r12, r11, r13, r4, null), 3, null);
    }

    private final void u(TeachStepNode r6, cn.mucang.android.jiakaoyi.framework.base.h<K3TeachPointItemBinding> r7) {
        if (r6.getLatitude() != null) goto L5;
    L12:
        ((K3TeachPointItemBinding) r7.getViewBinding()).tvContent.setText(r6.getName());
        return;
    L5:
        if (r6.getLongitude() == null) goto L12;
        Double r0 = r6.getLatitude();
        kotlin.jvm.internal.r.c(r0);
        if (r0.doubleValue() >= 1.0E-6d) goto L11;
        Double r1 = r6.getLongitude();
        kotlin.jvm.internal.r.c(r1);
        if (r1.doubleValue() < 1.0E-6d) goto L12;
    L11:
        ((K3TeachPointItemBinding) r7.getViewBinding()).tvContent.setText(r6.getName() + "\n(" + r6.getLatitude() + ',' + r6.getLongitude() + ')');
    }

    @Override // com.drakeet.multitype.c
    public /* bridge */ /* synthetic */ void c(RecyclerView.c0 r1, Object r2) {
        r((cn.mucang.android.jiakaoyi.framework.base.h) r1, (TeachStepNode) r2);
    }

    public void r(final cn.mucang.android.jiakaoyi.framework.base.h<K3TeachPointItemBinding> r3, final TeachStepNode r4) {
        kotlin.jvm.internal.r.e(r3, "holder");
        kotlin.jvm.internal.r.e(r4, "item");
        u(r4, r3);
        ((K3TeachPointItemBinding) r3.getViewBinding()).tvClear.setOnClickListener(new s0(r4, this, r3));
        ((K3TeachPointItemBinding) r3.getViewBinding()).tvAdd.setOnClickListener(new t0(r4, this, r3));
    }
}
