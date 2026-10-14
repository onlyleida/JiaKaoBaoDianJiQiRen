package cn.mucang.android.jiakaoyi.k3setting.p003route.manager.item;

import android.annotation.SuppressLint;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.o0;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteMyItemBinding;
import cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteDetailActivity;
import cn.mucang.android.jiakaoyi.k3setting.p003route.edit.RouteEditActivity;
import cn.mucang.android.jiakaoyi.k3setting.p003route.manager.RouteViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000e2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/item/RouteItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMyItemBinding;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteItemBinder extends ViewBindingBinder<LocalRoute, RouteMyItemBinding> {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f4655d = true;
    private final ExamSiteModel b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.e$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/item/RouteItemBinder$Companion;", "", "()V", "isMyRoute", "", "()Z", "setMyRoute", "(Z)V", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(boolean z) {
            RouteItemBinder.f4655d = z;
        }
    }

    public RouteItemBinder(ExamSiteModel examSite) {
        r.e(examSite, "examSite");
        this.b = examSite;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final LocalRoute item, View view) {
        r.e(item, "$item");
        Context context = view.getContext();
        r.d(context, "it.context");
        new JCommonDialog(context, new JCommonDialog.DialogParams((String) null, "是否确定删除", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RouteItemBinder.v(item, view2);
            }
        }, false, 64, (o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(LocalRoute item, View view) {
        r.e(item, "$item");
        ComponentCallbacks2 componentCallbacks2A = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(componentCallbacks2A, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
        j0 j0VarA = new m0((o0) componentCallbacks2A).a(RouteViewModel.class);
        r.d(j0VarA, "ViewModelProvider(activi…uteViewModel::class.java)");
        ((RouteViewModel) j0VarA).n(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(LocalRoute item, RouteItemBinder this$0, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        if (f4655d) {
            RouteEditActivity.a aVar = RouteEditActivity.i;
            Context context = view.getContext();
            r.d(context, "it.context");
            aVar.a(context, item, this$0.getB());
            return;
        }
        ComponentCallbacks2 componentCallbacks2A = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(componentCallbacks2A, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
        j0 j0VarA = new m0((o0) componentCallbacks2A).a(RouteViewModel.class);
        r.d(j0VarA, "ViewModelProvider(activi…uteViewModel::class.java)");
        ((RouteViewModel) j0VarA).m(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(LocalRoute item, View view) {
        r.e(item, "$item");
        RouteDetailActivity.a aVar = RouteDetailActivity.f4492d;
        Context context = view.getContext();
        r.d(context, "it.context");
        aVar.b(context, item);
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final ExamSiteModel getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RouteMyItemBinding> holder, final LocalRoute item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((RouteMyItemBinding) holder.getViewBinding()).nameTv.setText(item.getRouteName());
        if (item.isOfficial()) {
            ((RouteMyItemBinding) holder.getViewBinding()).officialRouteTv.setVisibility(0);
        } else {
            ((RouteMyItemBinding) holder.getViewBinding()).officialRouteTv.setVisibility(8);
        }
        if (f4655d) {
            TextView textView = ((RouteMyItemBinding) holder.getViewBinding()).descTv;
            StringBuilder sb = new StringBuilder();
            sb.append("长度");
            sb.append(FormatUtils.b(item.getDistance()));
            sb.append("公里  ");
            List<RouteNode> nodes = item.getNodes();
            sb.append(nodes == null ? null : Integer.valueOf(nodes.size()));
            sb.append("个指令");
            textView.setText(sb.toString());
            ((RouteMyItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
            ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setText("编辑");
            ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setVisibility(0);
            if (item.isCanPublic()) {
                ((RouteMyItemBinding) holder.getViewBinding()).openTv.setVisibility(8);
            } else {
                ((RouteMyItemBinding) holder.getViewBinding()).openTv.setVisibility(0);
            }
            if (item.isProxyRoute()) {
                ((RouteMyItemBinding) holder.getViewBinding()).proxyRouteTv.setVisibility(0);
            } else {
                ((RouteMyItemBinding) holder.getViewBinding()).proxyRouteTv.setVisibility(8);
            }
        } else {
            ((RouteMyItemBinding) holder.getViewBinding()).proxyRouteTv.setVisibility(8);
            ((RouteMyItemBinding) holder.getViewBinding()).descTv.setText("离我" + FormatUtils.b(item.getFromDistance()) + "公里  已使用" + item.getUseCount() + (char) 27425);
            ((RouteMyItemBinding) holder.getViewBinding()).deleteTv.setVisibility(8);
            ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setText("添加到我的路线");
            ((RouteMyItemBinding) holder.getViewBinding()).openTv.setVisibility(8);
            if (item.isCanAdd()) {
                ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setVisibility(0);
            } else {
                ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setVisibility(8);
            }
        }
        ((RouteMyItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteItemBinder.u(item, view);
            }
        });
        ((RouteMyItemBinding) holder.getViewBinding()).funcTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteItemBinder.w(item, this, view);
            }
        });
        ((RouteMyItemBinding) holder.getViewBinding()).previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.manager.t.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteItemBinder.x(item, view);
            }
        });
    }
}
