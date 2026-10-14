package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.Context;
import cn.mucang.android.core.webview.MenuOptions;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.t0, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010(\u001a\u00020\bHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010*\u001a\u00020\bHÆ\u0003J\t\u0010+\u001a\u00020\bHÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003Je\u0010-\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0001J\u0013\u0010.\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\u0003HÖ\u0001J\t\u00101\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0016\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0016\"\u0004\b\u001d\u0010\u0019R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0012¨\u00062"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "", "icon", "", "title", "", SocialConstants.PARAM_APP_DESC, "divider", "", "onClickListener", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "needLogin", "havePermission", "noPermissionCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Landroid/content/Context;", "(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;ZZLcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getDivider", "()Z", "getHavePermission", "setHavePermission", "(Z)V", "getIcon", "()I", "getNeedLogin", "setNeedLogin", "getNoPermissionCallback", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "setNoPermissionCallback", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getOnClickListener", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "getTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", MenuOptions.COPY, "equals", "other", "hashCode", "toString", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class SettingItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private final int icon;

    /* JADX INFO: renamed from: b, reason: from toString */
    private final String title;

    /* JADX INFO: renamed from: c, reason: from toString */
    private String desc;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
    private final boolean divider;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from toString */
    private final SettingItemClick onClickListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from toString */
    private boolean needLogin;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from toString */
    private boolean havePermission;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from toString */
    private cn.mucang.android.jiakaoyi.framework.h.b<Context> noPermissionCallback;

    public SettingItem(int i, String title, String str, boolean z, SettingItemClick settingItemClick, boolean z2, boolean z3, cn.mucang.android.jiakaoyi.framework.h.b<Context> bVar) {
        kotlin.jvm.internal.r.e(title, "title");
        this.icon = i;
        this.title = title;
        this.desc = str;
        this.divider = z;
        this.onClickListener = settingItemClick;
        this.needLogin = z2;
        this.havePermission = z3;
        this.noPermissionCallback = bVar;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getDivider() {
        return this.divider;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getHavePermission() {
        return this.havePermission;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getNeedLogin() {
        return this.needLogin;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SettingItem)) {
            return false;
        }
        SettingItem settingItem = (SettingItem) other;
        return this.icon == settingItem.icon && kotlin.jvm.internal.r.a(this.title, settingItem.title) && kotlin.jvm.internal.r.a(this.desc, settingItem.desc) && this.divider == settingItem.divider && kotlin.jvm.internal.r.a(this.onClickListener, settingItem.onClickListener) && this.needLogin == settingItem.needLogin && this.havePermission == settingItem.havePermission && kotlin.jvm.internal.r.a(this.noPermissionCallback, settingItem.noPermissionCallback);
    }

    public final cn.mucang.android.jiakaoyi.framework.h.b<Context> f() {
        return this.noPermissionCallback;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final SettingItemClick getOnClickListener() {
        return this.onClickListener;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public int hashCode() {
        int iHashCode = ((this.icon * 31) + this.title.hashCode()) * 31;
        String str = this.desc;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.divider;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode2 + r1) * 31;
        SettingItemClick settingItemClick = this.onClickListener;
        int iHashCode3 = (i + (settingItemClick == null ? 0 : settingItemClick.hashCode())) * 31;
        boolean z2 = this.needLogin;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (iHashCode3 + r2) * 31;
        boolean z3 = this.havePermission;
        int i3 = (i2 + (z3 ? 1 : z3)) * 31;
        cn.mucang.android.jiakaoyi.framework.h.b<Context> bVar = this.noPermissionCallback;
        return i3 + (bVar != null ? bVar.hashCode() : 0);
    }

    public final void i(String str) {
        this.desc = str;
    }

    public final void j(boolean z) {
        this.havePermission = z;
    }

    public String toString() {
        return "SettingItem(icon=" + this.icon + ", title=" + this.title + ", desc=" + ((Object) this.desc) + ", divider=" + this.divider + ", onClickListener=" + this.onClickListener + ", needLogin=" + this.needLogin + ", havePermission=" + this.havePermission + ", noPermissionCallback=" + this.noPermissionCallback + ')';
    }

    public /* synthetic */ SettingItem(int i, String str, String str2, boolean z, SettingItemClick settingItemClick, boolean z2, boolean z3, cn.mucang.android.jiakaoyi.framework.h.b bVar, int i2, kotlin.jvm.internal.o oVar) {
        this(i, str, str2, z, (i2 & 16) != 0 ? null : settingItemClick, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? true : z3, (i2 & 128) != 0 ? null : bVar);
    }
}
