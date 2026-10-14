package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000e¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;", "Ljava/io/Serializable;", "()V", SocialConstants.PARAM_APP_DESC, "", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "examSiteId", "", "getExamSiteId", "()I", "setExamSiteId", "(I)V", "materialId", "getMaterialId", "setMaterialId", "materialType", "getMaterialType", "setMaterialType", "path", "getPath", "setPath", "select", "", "getSelect", "()Z", "setSelect", "(Z)V", "stepId", "getStepId", "setStepId", "subStepId", "getSubStepId", "setSubStepId", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MaterialModel implements Serializable {
    private String desc;
    private int examSiteId;
    private int materialId;
    private int materialType;
    private String path;
    private transient boolean select;
    private int stepId;
    private int subStepId;

    public final String getDesc() {
        return this.desc;
    }

    public final int getExamSiteId() {
        return this.examSiteId;
    }

    public final int getMaterialId() {
        return this.materialId;
    }

    public final int getMaterialType() {
        return this.materialType;
    }

    public final String getPath() {
        return this.path;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final int getStepId() {
        return this.stepId;
    }

    public final int getSubStepId() {
        return this.subStepId;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setExamSiteId(int i) {
        this.examSiteId = i;
    }

    public final void setMaterialId(int i) {
        this.materialId = i;
    }

    public final void setMaterialType(int i) {
        this.materialType = i;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setSelect(boolean z) {
        this.select = z;
    }

    public final void setStepId(int i) {
        this.stepId = i;
    }

    public final void setSubStepId(int i) {
        this.subStepId = i;
    }
}
