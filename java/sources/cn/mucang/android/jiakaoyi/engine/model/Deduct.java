package cn.mucang.android.jiakaoyi.engine.model;

import cn.mucang.android.core.utils.n0;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Deduct implements Serializable {
    public int code;
    public int deductScore;
    public String desc;
    public JudgeType judgeType;
    public String name;
    public Step step;
    public int useMode;

    public Deduct() {
    }

    public static Deduct empty(String str, Step step) {
        return new Deduct(0, str, str, 0, step, JudgeType.auto);
    }

    public static Deduct wrapDeduct(Deduct deduct, String str) {
        if (n0.e(str)) {
            return deduct;
        }
        Deduct deduct2 = new Deduct();
        deduct2.code = deduct.code;
        deduct2.name = deduct.name + "(" + str + ")";
        deduct2.deductScore = deduct.deductScore;
        deduct2.step = deduct.step;
        deduct2.judgeType = deduct.judgeType;
        deduct2.desc = deduct.desc;
        return deduct2;
    }

    public boolean needAutoCheck() {
        JudgeType judgeType = this.judgeType;
        return judgeType == JudgeType.auto || judgeType == JudgeType.both;
    }

    public boolean supportPracticeMode() {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.useMode, 0);
    }

    public Deduct(int i, String str, String str2, int i2, Step step, JudgeType judgeType) {
        this(i, str, str2, i2, step, judgeType, 0);
    }

    public Deduct(int i, String str, String str2, int i2, Step step, JudgeType judgeType, int i3) {
        this.code = i;
        this.name = str;
        this.desc = str2;
        this.deductScore = i2;
        this.step = step;
        this.judgeType = judgeType;
        this.useMode = i3;
    }
}
