package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStraightenChecker;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HuiZhenVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class HuiZhenHandler implements VariableHandler<HuiZhenVariable> {
    public CarStraightenChecker straightenChecker;
    public long lastCalTime = 0;
    public long carStraightRunStartTime = 0;
    public boolean result = false;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(HuiZhenVariable huiZhenVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().L == this.lastCalTime) {
            return this.result;
        }
        if (this.straightenChecker == null) {
            CarStraightenChecker carStraightenChecker = new CarStraightenChecker();
            this.straightenChecker = carStraightenChecker;
            carStraightenChecker.start();
        }
        this.result = this.straightenChecker.onCheck(eVar.d().b, eVar.d().D, examProcessor.i);
        this.lastCalTime = eVar.d().L;
        return this.result;
    }
}
