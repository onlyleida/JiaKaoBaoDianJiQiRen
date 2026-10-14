package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300135_Event extends d<K2GlobalConfig> {
    private final List<Step> types;

    public K2_Global_300135_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.types = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K2GlobalConfig) this.config).p401126.value).booleanValue()) {
            if (examProcessor.v()) {
                int iIndexOf = this.types.indexOf(examProcessor.s().f3142e);
                if (iIndexOf == 0) {
                    this.types.remove(0);
                } else if (iIndexOf > 0) {
                    this.types.subList(0, iIndexOf + 1).clear();
                }
            }
            if (examProcessor.z()) {
                setDoNotExecute(true);
                return this.types.isEmpty();
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        String[] strArrSplit = ((String) ((K2GlobalConfig) this.config).p401127.value).split("-");
        if (strArrSplit.length > 0) {
            this.types.clear();
            for (String str : strArrSplit) {
                if (y.a(str)) {
                    Step stepFindWithK2Number = Step.findWithK2Number(y.f(str).intValue());
                    if ((!f.b() || stepFindWithK2Number != Step.K2_ShangPoQiBu) && stepFindWithK2Number != null && !this.types.contains(stepFindWithK2Number)) {
                        this.types.add(stepFindWithK2Number);
                    }
                }
            }
        }
    }
}
