package cn.mucang.android.jiakaoyi.k3setting.p003route.detail.mark;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.v.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/mark/BrakePointMarkView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "setData", "", "note", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakePointMarkView extends LinearLayout {
    public BrakePointMarkView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.route_detail_positon_brake_mark, this);
    }

    public final void setData(RouteNode note) {
        r.e(note, "note");
        Step.findWithType(note.getStepId());
        ((TextView) findViewById(R.id.descTv)).setText(note.getId() + "刹车点");
        ((ImageView) findViewById(R.id.iconIv)).setRotation(note.getBrakeBearing() + ((float) 90));
    }
}
