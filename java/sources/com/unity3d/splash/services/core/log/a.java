package com.unity3d.splash.services.core.log;

/* JADX INFO: loaded from: classes6.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f14408a;
    private String b;
    private StackTraceElement c;

    public a(b bVar, String str, StackTraceElement stackTraceElement) {
        this.f14408a = null;
        this.b = null;
        this.c = null;
        this.f14408a = bVar;
        this.b = str;
        this.c = stackTraceElement;
    }

    public b a() {
        return this.f14408a;
    }

    public String b() {
        String className;
        String methodName;
        int lineNumber;
        String str = this.b;
        StackTraceElement stackTraceElement = this.c;
        if (stackTraceElement != null) {
            className = stackTraceElement.getClassName();
            methodName = this.c.getMethodName();
            lineNumber = this.c.getLineNumber();
        } else {
            className = "UnknownClass";
            methodName = "unknownMethod";
            lineNumber = -1;
        }
        if (str != null && !str.isEmpty()) {
            str = " :: " + str;
        }
        if (str == null) {
            str = "";
        }
        return className + "." + methodName + "()" + (" (line:" + lineNumber + ")") + str;
    }
}
