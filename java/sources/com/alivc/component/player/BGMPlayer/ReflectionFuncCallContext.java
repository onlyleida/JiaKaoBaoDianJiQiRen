package com.alivc.component.player.BGMPlayer;

/* JADX INFO: loaded from: classes5.dex */
class ReflectionFuncCallContext {
    public String fullClassName;
    public String funcName;
    public Class<?>[] formalParameters = null;
    public Object[] effectiveParameters = null;
    public Object instance = null;

    ReflectionFuncCallContext() {
    }

    public String toString() {
        return "fullClassName=" + this.fullClassName + ", funcName=" + this.funcName + ", parameters count=" + String.valueOf(this.effectiveParameters.length);
    }
}
