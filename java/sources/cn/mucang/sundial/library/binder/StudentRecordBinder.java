package cn.mucang.sundial.library.binder;

import android.view.View;
import android.widget.TextView;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.ClearIdEvent;
import cn.mucang.sundial.android.eventbus.event.IdCardEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.library.databinding.TtStudentRecordItemBinding;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.widget.ViewBindingBinder;
import cn.mucang.sundial.library.widget.ViewBindingHolder;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/binder/StudentRecordBinder;", "Lcn/mucang/sundial/library/widget/ViewBindingBinder;", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "holder", "item", "Lkotlin/v;", "onBindViewHolder", "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "", "lastClickTime", "J", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class StudentRecordBinder extends ViewBindingBinder<StudentInfo, TtStudentRecordItemBinding> {
    private long lastClickTime;

    public final long getLastClickTime() {
        return this.lastClickTime;
    }

    public final void setLastClickTime(long j) {
        this.lastClickTime = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public void onBindViewHolder(ViewBindingHolder<TtStudentRecordItemBinding> holder, final StudentInfo item) {
        String studentName;
        String strX;
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((TtStudentRecordItemBinding) holder.getViewBinding()).name;
        r.d(textView, "holder.viewBinding.name");
        if (item.getStudentName().length() > 5) {
            StringBuilder sb = new StringBuilder();
            String studentName2 = item.getStudentName();
            r.d(studentName2, "item.studentName");
            Objects.requireNonNull(studentName2, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = studentName2.substring(0, 5);
            r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            sb.append("...");
            studentName = sb.toString();
        } else {
            studentName = item.getStudentName();
        }
        textView.setText(studentName);
        TextView textView2 = ((TtStudentRecordItemBinding) holder.getViewBinding()).desc;
        r.d(textView2, "holder.viewBinding.desc");
        int length = item.getIdCard().length();
        if (length == 15) {
            String idCard = item.getIdCard();
            r.d(idCard, "item.idCard");
            String idCard2 = item.getIdCard();
            r.d(idCard2, "item.idCard");
            Objects.requireNonNull(idCard2, "null cannot be cast to non-null type java.lang.String");
            String strSubstring2 = idCard2.substring(5, 11);
            r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            strX = t.x(idCard, strSubstring2, "xxxxxx", false, 4, null);
        } else if (length != 18) {
            strX = item.getIdCard();
        } else {
            String idCard3 = item.getIdCard();
            r.d(idCard3, "item.idCard");
            String idCard4 = item.getIdCard();
            r.d(idCard4, "item.idCard");
            Objects.requireNonNull(idCard4, "null cannot be cast to non-null type java.lang.String");
            String strSubstring3 = idCard4.substring(5, 14);
            r.d(strSubstring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            strX = t.x(idCard3, strSubstring3, "xxxxxxxxx", false, 4, null);
        }
        textView2.setText(strX);
        ((TtStudentRecordItemBinding) holder.getViewBinding()).llLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.binder.StudentRecordBinder.onBindViewHolder.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (System.currentTimeMillis() - StudentRecordBinder.this.getLastClickTime() > 800) {
                    StudentRecordBinder.this.setLastClickTime(System.currentTimeMillis());
                }
                if (AppLocation.isLocationValid()) {
                    LiveBus.INSTANCE.post(new IdCardEvent(item.getIdCard()));
                } else {
                    Tts.speak$default("获取定位信息失败", null, 2, null);
                }
            }
        });
        ((TtStudentRecordItemBinding) holder.getViewBinding()).cancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.binder.StudentRecordBinder.onBindViewHolder.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveBus.INSTANCE.post(new ClearIdEvent(item.getId()));
            }
        });
    }
}
