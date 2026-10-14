package cn.mucang.android.jiakaoyi.exam.k3.collision.result;

import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoResult {
    public Pos leftEnd;
    public K3CollisionModel leftLine;
    public Pos leftStart;
    public Pos rightEnd;
    public K3CollisionModel rightLine;
    public Pos rightStart;

    public BianDaoResult emptyResult() {
        this.leftLine = null;
        this.rightLine = null;
        return this;
    }

    public BianDaoResult leftBianDao(K3CollisionModel k3CollisionModel, Pos pos, Pos pos2) {
        this.leftLine = k3CollisionModel;
        this.leftStart = pos;
        this.leftEnd = pos2;
        this.rightLine = null;
        this.rightStart = null;
        this.rightEnd = null;
        return this;
    }

    public BianDaoResult rightBianDao(K3CollisionModel k3CollisionModel, Pos pos, Pos pos2) {
        this.leftLine = null;
        this.leftStart = null;
        this.leftEnd = null;
        this.rightLine = k3CollisionModel;
        this.rightStart = pos;
        this.rightEnd = pos2;
        return this;
    }
}
