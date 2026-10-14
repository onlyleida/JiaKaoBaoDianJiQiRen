package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionEventEntry;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionResult;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ActionEventHandler implements ActionHandler {
    public List<List<ActionEventEntry>> entryList;
    public List<List<ActionEventEntry>> errorEntryList;
    public int errorLevel;
    public int level;
    public final TeachData teachData;

    public ActionEventHandler(TeachData teachData) {
        this.teachData = teachData;
    }

    private <T extends Variable> boolean handle(ActionEventEntry actionEventEntry, cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return actionEventEntry.variableHandler.isTrigger(actionEventEntry.variable, eVar, examProcessor, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.ActionHandler
    public ActionResult isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean z;
        List<List<ActionEventEntry>> list = this.errorEntryList;
        if (list != null && !list.isEmpty() && this.errorLevel < this.errorEntryList.size()) {
            for (int i = this.errorLevel; i < this.errorEntryList.size(); i++) {
                List<ActionEventEntry> list2 = this.errorEntryList.get(i);
                if (list2 != null && !list2.isEmpty()) {
                    Iterator<ActionEventEntry> it = list2.iterator();
                    while (it.hasNext()) {
                        if (handle(it.next(), eVar, examProcessor, bVar)) {
                            return new ActionResult(ActionState.Error);
                        }
                    }
                }
            }
        }
        List<List<ActionEventEntry>> list3 = this.entryList;
        if (list3 == null || list3.isEmpty() || this.level >= this.entryList.size()) {
            return null;
        }
        Iterator<ActionEventEntry> it2 = this.entryList.get(this.level).iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
            if (!handle(it2.next(), eVar, examProcessor, bVar)) {
                z = false;
                break;
            }
        }
        if (!z) {
            return null;
        }
        int i2 = this.level + 1;
        this.level = i2;
        if (i2 == this.entryList.size()) {
            return new ActionResult(ActionState.Finish);
        }
        return null;
    }
}
