package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

/* JADX INFO: loaded from: classes2.dex */
public class ActionResult {
    public final String desc;
    public final int errorCode;
    public final ActionState state;

    public ActionResult(ActionState actionState, String str, int i) {
        this.state = actionState;
        this.desc = str;
        this.errorCode = i;
    }

    public ActionResult(ActionState actionState) {
        this.state = actionState;
        this.desc = null;
        this.errorCode = 0;
    }
}
