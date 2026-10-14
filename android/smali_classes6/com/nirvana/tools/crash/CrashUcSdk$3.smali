.class Lcom/nirvana/tools/crash/CrashUcSdk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;->doRegisterUc(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "filePathName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const-string v2, "exception"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$200(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/SdkInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$200(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/SdkInfo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$300(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$202(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/SdkInfo;)Lcom/nirvana/tools/crash/SdkInfo;

    :cond_3
    return-void

    :cond_4
    const-string v2, "java"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/nirvana/tools/crash/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nirvana/tools/crash/UcLogProcessor;->getJavaStackTracingFromLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v2}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$400(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/StackAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nirvana/tools/crash/StackAnalyzer;->checkJavaCrashInSdk(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v2}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$600(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1, v0, v2}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$300(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "java"

    invoke-virtual/range {v3 .. v9}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$500(Lcom/nirvana/tools/crash/CrashUcSdk;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {v1}, Lcom/nirvana/tools/crash/FileUtils;->deleteFile(Ljava/io/File;)V

    :cond_8
    return-void

    :cond_9
    const-string v2, "jni"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v1}, Lcom/nirvana/tools/crash/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nirvana/tools/crash/UcLogProcessor;->getNativeStackTracingFromLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v2}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$400(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/StackAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nirvana/tools/crash/StackAnalyzer;->checkNativeCrashInSdk(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object p1

    if-eqz p1, :cond_c

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v2}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$600(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1, v0, v2}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$300(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "jni"

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$500(Lcom/nirvana/tools/crash/CrashUcSdk;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {v1}, Lcom/nirvana/tools/crash/FileUtils;->deleteFile(Ljava/io/File;)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$3;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$500(Lcom/nirvana/tools/crash/CrashUcSdk;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {v1}, Lcom/nirvana/tools/crash/FileUtils;->deleteFile(Ljava/io/File;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk$3;->onReceiveValue(Landroid/os/Bundle;)V

    return-void
.end method
