.class Lcom/nirvana/tools/crash/CrashUcSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;->uploadException(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

.field final synthetic val$customInfo:Ljava/util/Map;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    iput-object p2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$t:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$e:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$customInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    const-string v1, "CrashShield"

    invoke-direct {v0, v1}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->uploadNow(Z)Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    move-result-object v0

    const-string v1, "processName"

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v2}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$700(Lcom/nirvana/tools/crash/CrashUcSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    move-result-object v0

    const-string v1, "threadName"

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$t:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->stack(Ljava/lang/Throwable;)Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$customInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$4;->val$customInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/nirvana/tools/crash/CustomLogInfoBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/nirvana/tools/crash/CustomLogInfoBuilder;->build()Lcom/uc/crashsdk/export/CustomLogInfo;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
