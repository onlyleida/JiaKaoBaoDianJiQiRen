package cn.mucang.android.jiakaoyi.teachingk2.record;

import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "Ljava/io/Serializable;", "()V", "c", "", "getC", "()I", "setC", "(I)V", "ext", "", "getExt", "()Ljava/lang/String;", "setExt", "(Ljava/lang/String;)V", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;", "getExtra", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;", "setExtra", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V", "s", "getS", "setS", "t", "", "getT", "()F", "setT", "(F)V", "tp", "getTp", "setTp", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserRecordModel implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private int c;
    private String ext;
    private transient UnityRecordModel extra;
    private int s;
    private float t;
    private int tp = RecordType.Behavior.typeId;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordModel$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$Companion;", "", "()V", "createModel", "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "code", "", "step", "time", "", "extra", "(ILjava/lang/Integer;FLjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final UserRecordModel a(int i, Integer num, float f2, Object obj) {
            UserRecordModel userRecordModel = new UserRecordModel();
            userRecordModel.setC(i);
            userRecordModel.setS(num == null ? 0 : num.intValue());
            userRecordModel.setT(f2);
            if (obj == null) {
                userRecordModel.setExt(null);
            } else if (obj instanceof String) {
                userRecordModel.setExt((String) obj);
            } else {
                userRecordModel.setExt(JSON.toJSONString(obj));
            }
            return userRecordModel;
        }
    }

    public static final UserRecordModel createModel(int i, Integer num, float f2, Object obj) {
        return INSTANCE.a(i, num, f2, obj);
    }

    public final int getC() {
        return this.c;
    }

    public final String getExt() {
        return this.ext;
    }

    public final UnityRecordModel getExtra() {
        return this.extra;
    }

    public final int getS() {
        return this.s;
    }

    public final float getT() {
        return this.t;
    }

    public final int getTp() {
        return this.tp;
    }

    public final void setC(int i) {
        this.c = i;
    }

    public final void setExt(String str) {
        this.ext = str;
    }

    public final void setExtra(UnityRecordModel unityRecordModel) {
        this.extra = unityRecordModel;
    }

    public final void setS(int i) {
        this.s = i;
    }

    public final void setT(float f2) {
        this.t = f2;
    }

    public final void setTp(int i) {
        this.tp = i;
    }
}
