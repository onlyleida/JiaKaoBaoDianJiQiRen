package cn.mucang.jiakaoyi.uilib.cost.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class CostSyncResult implements Serializable {
    public String finishMessage;
    public boolean finished;

    public String getFinishMessage() {
        return this.finishMessage;
    }

    public boolean isFinished() {
        return this.finished;
    }

    public void setFinishMessage(String str) {
        this.finishMessage = str;
    }

    public void setFinished(boolean z) {
        this.finished = z;
    }
}
