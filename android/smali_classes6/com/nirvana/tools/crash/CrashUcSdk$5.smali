.class Lcom/nirvana/tools/crash/CrashUcSdk$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;->generateCustomLogUploadItrace(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

.field final synthetic val$customInfo:Ljava/util/Map;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$logFileName:Ljava/lang/String;

.field final synthetic val$sdkInfo:Lcom/nirvana/tools/crash/SdkInfo;

.field final synthetic val$t:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    iput-object p2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$sdkInfo:Lcom/nirvana/tools/crash/SdkInfo;

    iput-object p3, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$t:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$e:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$time:Ljava/lang/String;

    iput-object p6, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$logFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$customInfo:Ljava/util/Map;

    iput-object p8, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$800(Lcom/nirvana/tools/crash/CrashUcSdk;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$sdkInfo:Lcom/nirvana/tools/crash/SdkInfo;

    iget-object v3, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$t:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$e:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$time:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$900(Lcom/nirvana/tools/crash/CrashUcSdk;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$logFileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$customInfo:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/nirvana/tools/crash/FileUtils;->writeSelfJavaLog(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/nirvana/tools/crash/FileUtils;->gzipCompress(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nirvana/tools/crash/FileUtils;->deleteFile(Ljava/io/File;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$logFileName:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "https://px.ucweb.com/upload"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/nirvana/tools/crash/CrashUploadUtils;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$sdkInfo:Lcom/nirvana/tools/crash/SdkInfo;

    invoke-virtual {v1}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$e:Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$sdkInfo:Lcom/nirvana/tools/crash/SdkInfo;

    invoke-virtual {v1}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$e:Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirvana/tools/crash/CrashUcSdk$5;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
