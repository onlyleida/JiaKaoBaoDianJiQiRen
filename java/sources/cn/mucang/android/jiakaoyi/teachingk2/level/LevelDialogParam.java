package cn.mucang.android.jiakaoyi.teachingk2.level;

import com.tencent.open.SocialConstants;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;", "", "title", "", SocialConstants.PARAM_APP_DESC, "recommendText", "btnText", "clickUrl", "extraUrl", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelItemStatus;", "showClose", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V", "getBtnText", "()Ljava/lang/String;", "getClickUrl", "getDesc", "getExtraUrl", "getList", "()Ljava/util/List;", "getRecommendText", "getShowClose", "()Z", "getTitle", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelDialogParam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7270a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f7272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f7273f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<LevelItemStatus> f7274g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f7275h;

    public LevelDialogParam(String title, String desc, String recommendText, String btnText, String clickUrl, String str, List<LevelItemStatus> list, boolean z) {
        kotlin.jvm.internal.r.e(title, "title");
        kotlin.jvm.internal.r.e(desc, "desc");
        kotlin.jvm.internal.r.e(recommendText, "recommendText");
        kotlin.jvm.internal.r.e(btnText, "btnText");
        kotlin.jvm.internal.r.e(clickUrl, "clickUrl");
        kotlin.jvm.internal.r.e(list, "list");
        this.f7270a = title;
        this.b = desc;
        this.c = recommendText;
        this.f7271d = btnText;
        this.f7272e = clickUrl;
        this.f7273f = str;
        this.f7274g = list;
        this.f7275h = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF7271d() {
        return this.f7271d;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF7272e() {
        return this.f7272e;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getF7273f() {
        return this.f7273f;
    }

    public final List<LevelItemStatus> e() {
        return this.f7274g;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getF7275h() {
        return this.f7275h;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getF7270a() {
        return this.f7270a;
    }
}
