.class final Lcom/tencent/bugly/crashreport/crash/anr/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/bugly/proguard/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "anr is processing, return"

    .line 2
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "main thread blocked overdue, blockTime:%s"

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->c(Lcom/tencent/bugly/crashreport/crash/anr/b;)Landroid/app/ActivityManager;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/a;->a(Landroid/app/ActivityManager;)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "proc is not in anr, wait next check"

    .line 5
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 7
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/b;J)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v1, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/b;Z)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "found anr"

    .line 9
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->isEnableCatchAnrTrace()Z

    move-result v2

    if-eqz v2, :cond_5

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "anr trace enable, do dump trace"

    .line 12
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->dumpAnrNativeStack()V

    return-void

    :cond_5
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "anr trace not enable"

    .line 14
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$3;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d(Lcom/tencent/bugly/crashreport/crash/anr/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "manual_bugly_trace_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".txt"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, p1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "create new trace file:%s"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 p2, 0x18c00

    const-string v0, "android trace not enable\n"

    .line 17
    invoke-static {v1, v0, p2, p3, p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    return-void
.end method
