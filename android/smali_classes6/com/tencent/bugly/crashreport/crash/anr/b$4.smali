.class final Lcom/tencent/bugly/crashreport/crash/anr/b$4;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d(Lcom/tencent/bugly/crashreport/crash/anr/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string v0, "observe file, dir:%s fileName:%s"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2
    invoke-static {p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "not manual trace file, ignore."

    .line 3
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "proc is not in anr, just ignore"

    .line 5
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string p1, "manual_bugly_trace_"

    const-string v0, ".txt"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 7
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d(Lcom/tencent/bugly/crashreport/crash/anr/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/b;JLjava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Finish handling one anr."

    .line 8
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
