package cn.mucang.android.jiakaoyi.teachingk2.safe;

import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R(\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;", "()V", "isChecked", "", "()Z", "setChecked", "(Z)V", "onClick", "Lkotlin/Function1;", "Landroid/widget/ImageView;", "", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "setOnClick", "(Lkotlin/jvm/functions/Function1;)V", "text", "", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeSwitchModel extends SafeVisibleModel {
    private boolean isChecked;
    private Function1<? super ImageView, kotlin.v> onClick;
    private String text;

    public final Function1<ImageView, kotlin.v> getOnClick() {
        return this.onClick;
    }

    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: isChecked, reason: from getter */
    public final boolean getIsChecked() {
        return this.isChecked;
    }

    public final void setChecked(boolean z) {
        this.isChecked = z;
    }

    public final void setOnClick(Function1<? super ImageView, kotlin.v> function1) {
        this.onClick = function1;
    }

    public final void setText(String str) {
        this.text = str;
    }
}
