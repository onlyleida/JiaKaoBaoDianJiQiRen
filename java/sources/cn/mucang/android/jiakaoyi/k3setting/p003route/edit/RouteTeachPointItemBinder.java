package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding;
import cn.mucang.jiakaoyi.uilib.model.TeachStepNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;", "gpsGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "Landroid/location/Location;", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "updateName", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteTeachPointItemBinder extends ViewBindingBinder<TeachStepNode, K3TeachPointItemBinding> {
    private final c<Location> b;

    public RouteTeachPointItemBinder(c<Location> gpsGetter) {
        r.e(gpsGetter, "gpsGetter");
        this.b = gpsGetter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(TeachStepNode item, RouteTeachPointItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        if (item.getTeachId() == null) {
            u.h("teachId 为空");
            return;
        }
        if (item.getUid() == null) {
            u.h("uid 为空");
            return;
        }
        if (item.getLatitude() == null || item.getLongitude() == null) {
            u.h("经纬度为空");
            return;
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b("清空教学采集点中");
        g.b(j0.a(w0.b()), null, null, new RouteTeachPointItemBinder$onBindViewHolder$1$1(item, this$0, holder, jLoadingDialog, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(TeachStepNode item, RouteTeachPointItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        if (item.getTeachId() == null) {
            u.h("teachId 为空");
            return;
        }
        if (item.getUid() == null) {
            u.h("uid 为空");
            return;
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b("添加教学采集点中");
        g.b(j0.a(w0.b()), null, null, new RouteTeachPointItemBinder$onBindViewHolder$2$1(this$0, item, holder, jLoadingDialog, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        if (r0.doubleValue() < 1.0E-6d) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(cn.mucang.jiakaoyi.uilib.model.TeachStepNode r6, cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder<cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding> r7) {
        /*
            r5 = this;
            java.lang.Double r0 = r6.getLatitude()
            if (r0 == 0) goto L69
            java.lang.Double r0 = r6.getLongitude()
            if (r0 == 0) goto L69
            java.lang.Double r0 = r6.getLatitude()
            kotlin.jvm.internal.r.c(r0)
            double r0 = r0.doubleValue()
            r2 = 4517329193108106637(0x3eb0c6f7a0b5ed8d, double:1.0E-6)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L30
            java.lang.Double r0 = r6.getLongitude()
            kotlin.jvm.internal.r.c(r0)
            double r0 = r0.doubleValue()
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L30
            goto L69
        L30:
            androidx.viewbinding.a r7 = r7.getViewBinding()
            cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding r7 = (cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding) r7
            android.widget.TextView r7 = r7.tvContent
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r6.getName()
            r0.append(r1)
            java.lang.String r1 = "\n("
            r0.append(r1)
            java.lang.Double r1 = r6.getLatitude()
            r0.append(r1)
            r1 = 44
            r0.append(r1)
            java.lang.Double r6 = r6.getLongitude()
            r0.append(r6)
            r6 = 41
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r7.setText(r6)
            goto L78
        L69:
            androidx.viewbinding.a r7 = r7.getViewBinding()
            cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding r7 = (cn.mucang.android.jiakaoyi.k3setting.databinding.K3TeachPointItemBinding) r7
            android.widget.TextView r7 = r7.tvContent
            java.lang.String r6 = r6.getName()
            r7.setText(r6)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.k3setting.p003route.edit.RouteTeachPointItemBinder.u(cn.mucang.jiakaoyi.uilib.model.TeachStepNode, cn.mucang.android.jiakaoyi.framework.base.h):void");
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<K3TeachPointItemBinding> holder, final TeachStepNode item) {
        r.e(holder, "holder");
        r.e(item, "item");
        u(item, holder);
        ((K3TeachPointItemBinding) holder.getViewBinding()).tvClear.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteTeachPointItemBinder.s(item, this, holder, view);
            }
        });
        ((K3TeachPointItemBinding) holder.getViewBinding()).tvAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteTeachPointItemBinder.t(item, this, holder, view);
            }
        });
    }
}
