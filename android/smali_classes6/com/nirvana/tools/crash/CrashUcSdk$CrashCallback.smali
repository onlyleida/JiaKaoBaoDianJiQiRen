.class Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uc/crashsdk/export/ICrashClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrashCallback"
.end annotation


# instance fields
.field private mCrashCallback:Lcom/nirvana/tools/crash/OnCrashCallback;

.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;


# direct methods
.method public constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/OnCrashCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;->mCrashCallback:Lcom/nirvana/tools/crash/OnCrashCallback;

    return-void
.end method


# virtual methods
.method public onAddCrashStats(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirvana/tools/crash/FileUtils;->gzipCompress(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nirvana/tools/crash/FileUtils;->deleteFile(Ljava/io/File;)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method public onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCrashRestarting(Z)V
    .locals 0

    return-void
.end method

.method public onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLogGenerated(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
