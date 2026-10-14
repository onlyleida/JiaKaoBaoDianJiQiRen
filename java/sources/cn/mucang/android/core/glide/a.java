package cn.mucang.android.core.glide;

import cn.mucang.android.framework.core.R;
import com.bumptech.glide.request.target.ViewTarget;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f2519a = false;

    public static void a() {
        if (f2519a) {
            return;
        }
        ViewTarget.setTagId(R.id.core__glide_view_tag);
        f2519a = true;
    }
}
