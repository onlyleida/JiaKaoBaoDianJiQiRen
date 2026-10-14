package cn.mucang.android.jiakaoyi.mapcollect.select;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.CommonListSelectItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.select.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u001e\u0010\f\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/select/SchoolCarItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CommonListSelectItemBinding;", "selectSchool", "", "onClick", "Lkotlin/Function1;", "", "(ZLkotlin/jvm/functions/Function1;)V", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SchoolCarItemBinder extends ViewBindingBinder<HpCarMapModel, CommonListSelectItemBinding> {
    private final boolean b;
    private final Function1<HpCarMapModel, v> c;

    /* JADX WARN: Multi-variable type inference failed */
    public SchoolCarItemBinder(boolean z, Function1<? super HpCarMapModel, v> onClick) {
        r.e(onClick, "onClick");
        this.b = z;
        this.c = onClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SchoolCarItemBinder this$0, HpCarMapModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<HpCarMapModel, v> n() {
        return this.c;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<CommonListSelectItemBinding> holder, final HpCarMapModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((CommonListSelectItemBinding) holder.getViewBinding()).nameTv.setText(this.b ? item.driveSchoolName : item.plateNum);
        ((CommonListSelectItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SchoolCarItemBinder.q(this.f5192a, item, view);
            }
        });
    }
}
