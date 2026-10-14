package cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite;

import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3collect.databinding.K3ExamSiteAddItemBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3SiteItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;", "(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;)V", "getActivity", "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3SiteItemBinder extends ViewBindingBinder<ExamSiteModel, K3ExamSiteAddItemBinding> {
    private final K3ExamSiteSelectActivity b;

    public K3SiteItemBinder(K3ExamSiteSelectActivity activity) {
        r.e(activity, "activity");
        this.b = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3SiteItemBinder this$0, ExamSiteModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.getB().t(item);
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final K3ExamSiteSelectActivity getB() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<K3ExamSiteAddItemBinding> holder, final ExamSiteModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((K3ExamSiteAddItemBinding) holder.getViewBinding()).nameTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) item.cityName);
        sb.append('-');
        sb.append((Object) item.examSiteName);
        textView.setText(sb.toString());
        ((K3ExamSiteAddItemBinding) holder.getViewBinding()).descTv.setText(item.examSysName);
        ((K3ExamSiteAddItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteItemBinder.q(this.f4113a, item, view);
            }
        });
    }
}
