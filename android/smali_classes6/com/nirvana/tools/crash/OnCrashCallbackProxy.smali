.class Lcom/nirvana/tools/crash/OnCrashCallbackProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crashCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nirvana/tools/crash/OnCrashCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nirvana/tools/crash/OnCrashCallback;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/nirvana/tools/crash/OnCrashCallback;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirvana/tools/crash/OnCrashCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lcom/nirvana/tools/crash/OnCrashCallback;->onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerCrashCallback(Ljava/lang/String;Lcom/nirvana/tools/crash/OnCrashCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterCrashCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->crashCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
