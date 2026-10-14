package cn.mucang.android.core.config.mapping;

import cn.mucang.android.core.webview.MenuOptions;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileJsonData;", "Ljava/io/Serializable;", Constant.PROTOCOL_WEBVIEW_NAME, "", TtmlNode.ATTR_ID, "", "list", "", "Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;", "(Ljava/lang/String;JLjava/util/List;)V", "getId", "()J", "setId", "(J)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "component1", "component2", "component3", MenuOptions.COPY, "equals", "", "other", "", "hashCode", "", "toString", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class ProfileJsonData implements Serializable {
    private long id;
    private List<ProfileHostJsonData> list;
    private String name;

    public ProfileJsonData() {
        this(null, 0L, null, 7, null);
    }

    public ProfileJsonData(String name, long j, List<ProfileHostJsonData> list) {
        r.e(name, "name");
        r.e(list, "list");
        this.name = name;
        this.id = j;
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProfileJsonData copy$default(ProfileJsonData profileJsonData, String str, long j, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = profileJsonData.name;
        }
        if ((i & 2) != 0) {
            j = profileJsonData.id;
        }
        if ((i & 4) != 0) {
            list = profileJsonData.list;
        }
        return profileJsonData.copy(str, j, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getId() {
        return this.id;
    }

    public final List<ProfileHostJsonData> component3() {
        return this.list;
    }

    public final ProfileJsonData copy(String name, long id, List<ProfileHostJsonData> list) {
        r.e(name, "name");
        r.e(list, "list");
        return new ProfileJsonData(name, id, list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileJsonData)) {
            return false;
        }
        ProfileJsonData profileJsonData = (ProfileJsonData) other;
        return r.a(this.name, profileJsonData.name) && this.id == profileJsonData.id && r.a(this.list, profileJsonData.list);
    }

    public final long getId() {
        return this.id;
    }

    public final List<ProfileHostJsonData> getList() {
        return this.list;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + defpackage.c.a(this.id)) * 31) + this.list.hashCode();
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setList(List<ProfileHostJsonData> list) {
        r.e(list, "<set-?>");
        this.list = list;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        return "ProfileJsonData(name=" + this.name + ", id=" + this.id + ", list=" + this.list + ')';
    }

    public /* synthetic */ ProfileJsonData(String str, long j, List list, int i, o oVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? u.j() : list);
    }
}
