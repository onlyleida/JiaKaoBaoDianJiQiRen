package cn.mucang.android.jiakaoyi.k3setting.backup;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "icon", "Landroid/widget/ImageView;", Constant.PROTOCOL_WEBVIEW_NAME, "Landroid/widget/TextView;", "root", "Landroid/view/View;", "selectBgColor", "", "selectDrawable", "Landroid/graphics/drawable/Drawable;", "selectTextColor", "unselectBgColor", "unselectDrawable", "unselectTextColor", "setSelectEnable", "", "selectEnable", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TabItem extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f4197a;
    private final Drawable b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4200f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TextView f4201g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ImageView f4202h;
    private final View i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.backup_tab);
        r.d(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…, R.styleable.backup_tab)");
        this.f4197a = typedArrayObtainStyledAttributes.getDrawable(R.styleable.backup_tab_select_drawable);
        this.b = typedArrayObtainStyledAttributes.getDrawable(R.styleable.backup_tab_unselect_drawable);
        this.c = typedArrayObtainStyledAttributes.getColor(R.styleable.backup_tab_select_textColor, Color.parseColor("#333333"));
        this.f4198d = typedArrayObtainStyledAttributes.getColor(R.styleable.backup_tab_unselect_textColor, Color.parseColor("#FFFFFF"));
        this.f4200f = typedArrayObtainStyledAttributes.getColor(R.styleable.backup_tab_unselect_bg, Color.parseColor("#FFFFFF"));
        this.f4199e = typedArrayObtainStyledAttributes.getColor(R.styleable.backup_tab_select_bg, Color.parseColor("#FF0087FB"));
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.backup_tab_tab_name);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.backup_tab_select_enable, false);
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.include_backup_tab_item, (ViewGroup) this, true);
        r.d(viewInflate, "from(context).inflate(R.…kup_tab_item, this, true)");
        this.i = viewInflate;
        View viewFindViewById = findViewById(R.id.icon);
        r.d(viewFindViewById, "findViewById(R.id.icon)");
        this.f4202h = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.name);
        r.d(viewFindViewById2, "findViewById(R.id.name)");
        TextView textView = (TextView) viewFindViewById2;
        this.f4201g = textView;
        textView.setText(string);
        setSelectEnable(z);
    }

    public final void setSelectEnable(boolean selectEnable) {
        if (selectEnable) {
            this.i.setBackgroundColor(this.f4199e);
            this.f4201g.setTextColor(this.c);
            this.f4202h.setImageDrawable(this.f4197a);
        } else {
            this.i.setBackgroundColor(this.f4200f);
            this.f4201g.setTextColor(this.f4198d);
            this.f4202h.setImageDrawable(this.b);
        }
    }
}
