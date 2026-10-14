.class Lcom/nirvana/tools/crash/CrashUcSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/crash/OnCrashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$1;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$1;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$1;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$1;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$1;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
