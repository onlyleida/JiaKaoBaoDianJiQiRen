package cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite;

import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.k3collect.databinding.K3ItemLoadMoreBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u001c\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter;", "Lcom/drakeet/multitype/MultiTypeAdapter;", "cityCode", "", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;", "stateLayout", "Lcn/mucang/android/core/widget/StateLayout;", "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;Lcn/mucang/android/core/widget/StateLayout;)V", "getActivity", "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;", "getCityCode", "()Ljava/lang/String;", "loadMore", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;", "getStateLayout", "()Lcn/mucang/android/core/widget/StateLayout;", "firstLoad", "", "showContent", "", "dataList", "", "", "hasMore", "showLoading", "showNetError", "LoadMore", "LoadingMoreItemBinder", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamSiteSelectAdapter extends com.drakeet.multitype.f {
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final K3ExamSiteSelectActivity f4114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final StateLayout f4115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f4116f;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.h$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;", "", "state", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "clickListener", "Landroid/view/View$OnClickListener;", "(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;Landroid/view/View$OnClickListener;)V", "getClickListener", "()Landroid/view/View$OnClickListener;", "getState", "()Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "setState", "(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LoadingState f4117a;
        private final View.OnClickListener b;

        public a(LoadingState state, View.OnClickListener clickListener) {
            r.e(state, "state");
            r.e(clickListener, "clickListener");
            this.f4117a = state;
            this.b = clickListener;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final View.OnClickListener getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final LoadingState getF4117a() {
            return this.f4117a;
        }

        public final void c(LoadingState loadingState) {
            r.e(loadingState, "<set-?>");
            this.f4117a = loadingState;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.h$b */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadingMoreItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ViewBindingBinder<a, K3ItemLoadMoreBinding> {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.h$b$a */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f4118a;

            static {
                int[] iArr = new int[LoadingState.values().length];
                iArr[LoadingState.Loading.ordinal()] = 1;
                iArr[LoadingState.Fail.ordinal()] = 2;
                iArr[LoadingState.Success.ordinal()] = 3;
                f4118a = iArr;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(a item, View view) {
            r.e(item, "$item");
            item.getB().onClick(view);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<K3ItemLoadMoreBinding> holder, final a item) {
            r.e(holder, "holder");
            r.e(item, "item");
            int i = a.f4118a[item.getF4117a().ordinal()];
            if (i == 1) {
                ((K3ItemLoadMoreBinding) holder.getViewBinding()).stateTv.setText("加载中...");
            } else if (i == 2) {
                ((K3ItemLoadMoreBinding) holder.getViewBinding()).stateTv.setText("加载失败");
            } else if (i == 3) {
                ((K3ItemLoadMoreBinding) holder.getViewBinding()).stateTv.setText("没有更多了");
            }
            ((K3ItemLoadMoreBinding) holder.getViewBinding()).stateTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    K3ExamSiteSelectAdapter.b.p(item, view);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K3ExamSiteSelectAdapter(String cityCode, K3ExamSiteSelectActivity activity, StateLayout stateLayout) {
        super(null, 0, null, 7, null);
        r.e(cityCode, "cityCode");
        r.e(activity, "activity");
        r.e(stateLayout, "stateLayout");
        this.c = cityCode;
        this.f4114d = activity;
        this.f4115e = stateLayout;
        this.f4116f = new a(LoadingState.Loading, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3ExamSiteSelectAdapter.o(this.f4111a, view);
            }
        });
        g(ExamSiteModel.class, new K3SiteItemBinder(activity));
        g(a.class, new b());
    }

    private final boolean k() {
        return c().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(K3ExamSiteSelectAdapter this$0, View view) {
        r.e(this$0, "this$0");
        j0 j0VarA = new m0(this$0.getF4114d()).a(K3ExamSiteSelectViewModel.class);
        r.d(j0VarA, "ViewModelProvider(activi…ectViewModel::class.java)");
        K3ExamSiteSelectViewModel.g((K3ExamSiteSelectViewModel) j0VarA, this$0.getC(), false, 2, null);
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final K3ExamSiteSelectActivity getF4114d() {
        return this.f4114d;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final String getC() {
        return this.c;
    }

    public final void p(List<? extends Object> dataList, boolean z) {
        r.e(dataList, "dataList");
        List<? extends Object> listO0 = CollectionsKt___CollectionsKt.O0(dataList);
        if (listO0.isEmpty()) {
            this.f4115e.d();
            return;
        }
        if (z) {
            this.f4116f.c(LoadingState.Loading);
            listO0.add(this.f4116f);
        }
        i(listO0);
        notifyDataSetChanged();
        this.f4115e.c();
    }

    public final void q() {
        if (k()) {
            this.f4115e.f();
        } else {
            this.f4116f.c(LoadingState.Loading);
            notifyItemChanged(getItemCount() - 1);
        }
    }

    public final void r() {
        if (k()) {
            this.f4115e.g();
        } else {
            this.f4116f.c(LoadingState.Fail);
            notifyItemChanged(getItemCount() - 1);
        }
    }
}
