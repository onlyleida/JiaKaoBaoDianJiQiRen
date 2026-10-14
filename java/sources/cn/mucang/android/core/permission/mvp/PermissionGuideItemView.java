package cn.mucang.android.core.permission.mvp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.t0;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.ui.framework.mvp.b;

/* JADX INFO: loaded from: classes.dex */
public class PermissionGuideItemView extends RelativeLayout implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f2600a;
    private TextView b;
    private TextView c;

    public PermissionGuideItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.f2600a = (ImageView) findViewById(R.id.permission_item_img);
        this.b = (TextView) findViewById(R.id.permission_item_name);
        this.c = (TextView) findViewById(R.id.permission_item_desc);
    }

    public static PermissionGuideItemView b(ViewGroup viewGroup) {
        return (PermissionGuideItemView) t0.b(viewGroup, R.layout.core__permission_guide_item);
    }

    public TextView getPermissionItemDesc() {
        return this.c;
    }

    public ImageView getPermissionItemImg() {
        return this.f2600a;
    }

    public TextView getPermissionItemName() {
        return this.b;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }
}
