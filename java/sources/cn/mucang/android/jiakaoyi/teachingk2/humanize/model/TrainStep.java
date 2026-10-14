package cn.mucang.android.jiakaoyi.teachingk2.humanize.model;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TrainStep implements Serializable {
    public List<Deduction> deduction;
    public boolean passed;
    public long startTime;
    public int step;
    public boolean valid;

    public static class Deduction implements Serializable {

        @JSONField(name = "c")
        public int code;

        @JSONField(name = "d")
        public String desc;

        @JSONField(name = "sc")
        public int score;
        public int t;

        public Deduction() {
        }

        public Deduction(int i, String str, int i2) {
            this.code = i;
            this.desc = str;
            this.score = i2;
        }
    }

    public TrainStep() {
        this.step = -1;
    }

    public void addDeduction(Deduct deduct) {
        if (this.deduction == null) {
            this.deduction = new ArrayList();
        }
        this.deduction.add(new Deduction(deduct.code, deduct.name, deduct.deductScore));
    }

    public void set(boolean z, boolean z2) {
        this.valid = z2;
        this.passed = z;
    }

    public TrainStep(int i, boolean z, boolean z2) {
        this.step = -1;
        this.step = i;
        this.valid = z2;
        this.passed = z;
        this.deduction = new ArrayList();
    }
}
