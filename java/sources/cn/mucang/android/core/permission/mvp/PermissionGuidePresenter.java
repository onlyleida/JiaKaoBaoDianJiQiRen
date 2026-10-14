package cn.mucang.android.core.permission.mvp;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.permission.mvp.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/core/permission/mvp/PermissionGuidePresenter;", "Lcn/mucang/android/ui/framework/mvp/BasePresenter;", "Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;", "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;", "view", "(Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;)V", "bind", "", "model", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionGuidePresenter extends cn.mucang.android.ui.framework.mvp.a<PermissionGuideItemView, PermissionItemModel> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionGuidePresenter(PermissionGuideItemView view) {
        super(view);
        r.e(view, "view");
    }

    @Override // cn.mucang.android.ui.framework.mvp.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void a(PermissionItemModel model) {
        r.e(model, "model");
        ((PermissionGuideItemView) this.f8977a).getPermissionItemDesc().setText(model.getDesc());
        ((PermissionGuideItemView) this.f8977a).getPermissionItemName().setText(model.getTitle());
        if (model.getImg() <= 0) {
            ((PermissionGuideItemView) this.f8977a).getPermissionItemImg().setVisibility(8);
        } else {
            ((PermissionGuideItemView) this.f8977a).getPermissionItemImg().setVisibility(0);
            ((PermissionGuideItemView) this.f8977a).getPermissionItemImg().setImageResource(model.getImg());
        }
    }
}
