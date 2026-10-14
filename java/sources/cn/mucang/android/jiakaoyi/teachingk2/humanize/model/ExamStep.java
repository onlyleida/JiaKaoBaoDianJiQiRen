package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0005\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0013\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;", "Ljava/io/Serializable;", "()V", "isSingle", "", "()Z", "passed", "getPassed", "setPassed", "(Z)V", Constant.START_TIME, "", "getStartTime", "()J", "setStartTime", "(J)V", "step", "", "getStep", "()I", "steps", "", "getSteps", "()Ljava/util/List;", "setSteps", "(Ljava/util/List;)V", "type", "getType", "setType", "(I)V", "addStep", "", "isValid", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamStep implements Serializable {
    private boolean passed;
    private long startTime;
    private List<Integer> steps;
    private int type;

    public final void addStep(int step) {
        if (this.steps == null) {
            this.steps = new ArrayList();
        }
        List<Integer> list = this.steps;
        r.c(list);
        list.add(Integer.valueOf(step));
    }

    public final boolean getPassed() {
        return this.passed;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getStep() {
        List<Integer> list;
        if (isSingle() && (list = this.steps) != null) {
            r.c(list);
            if (list.size() > 0) {
                List<Integer> list2 = this.steps;
                r.c(list2);
                return list2.get(0).intValue();
            }
        }
        return -1;
    }

    public final List<Integer> getSteps() {
        return this.steps;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isSingle() {
        return this.type == 2;
    }

    public final boolean isValid() {
        List<Integer> list = this.steps;
        if (list == null) {
            return false;
        }
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((Number) it.next()).intValue() > 0) {
                return true;
            }
        }
        return false;
    }

    public final void setPassed(boolean z) {
        this.passed = z;
    }

    public final void setStartTime(long j) {
        this.startTime = j;
    }

    public final void setSteps(List<Integer> list) {
        this.steps = list;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
