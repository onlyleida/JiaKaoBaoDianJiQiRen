package cn.mucang.sundial.library.binder;

import android.widget.TextView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.sundial.library.databinding.TtPhotoRecordItemBinding;
import cn.mucang.sundial.library.entity.PhotoEntity;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/binder/PhotoRecordBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/library/entity/PhotoEntity;", "Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/PhotoEntity;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class PhotoRecordBinder extends ViewBindingBinder<PhotoEntity, TtPhotoRecordItemBinding> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtPhotoRecordItemBinding> holder, PhotoEntity item) {
        r.e(holder, "holder");
        r.e(item, "item");
        String strB = p0.b(item.getImageTime());
        r.d(strB, "TimeUtils.getDataYYYYMMDDSS(item.imageTime)");
        List listP0 = StringsKt__StringsKt.p0(strB, new String[]{" "}, false, 0, 6, null);
        if (listP0.size() > 1) {
            TextView textView = ((TtPhotoRecordItemBinding) holder.getViewBinding()).date;
            r.d(textView, "holder.viewBinding.date");
            textView.setText((CharSequence) listP0.get(0));
            TextView textView2 = ((TtPhotoRecordItemBinding) holder.getViewBinding()).time;
            r.d(textView2, "holder.viewBinding.time");
            textView2.setText((CharSequence) listP0.get(1));
        }
        Glide.with(MucangConfig.getContext()).load(item.getImageUrl()).transform(new RoundedCorners(s0.a(6.0f))).into(((TtPhotoRecordItemBinding) holder.getViewBinding()).icon);
    }
}
