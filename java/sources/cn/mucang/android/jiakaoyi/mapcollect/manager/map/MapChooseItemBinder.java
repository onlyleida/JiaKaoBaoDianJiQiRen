package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.annotation.SuppressLint;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.MapChooseListItemBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.map.y0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0017R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapChooseItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapChooseListItemBinding;", "onChoose", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnChoose", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapChooseItemBinder extends ViewBindingBinder<ExamSiteModel, MapChooseListItemBinding> {
    private final Function1<ExamSiteModel, kotlin.v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public MapChooseItemBinder(Function1<? super ExamSiteModel, kotlin.v> onChoose) {
        kotlin.jvm.internal.r.e(onChoose, "onChoose");
        this.b = onChoose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(MapChooseItemBinder this$0, ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<ExamSiteModel, kotlin.v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<MapChooseListItemBinding> holder, final ExamSiteModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((MapChooseListItemBinding) holder.getViewBinding()).schoolTv.setText(item.driveSchoolName);
        ((MapChooseListItemBinding) holder.getViewBinding()).siteTv.setText(item.examSiteName);
        ((MapChooseListItemBinding) holder.getViewBinding()).isChoose.setSelected(item.examSiteId == ExamSiteUtil.e(0L));
        ((MapChooseListItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapChooseItemBinder.q(this.f5114a, item, view);
            }
        });
    }
}
