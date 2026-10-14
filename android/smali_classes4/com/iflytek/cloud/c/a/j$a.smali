.class Lcom/iflytek/cloud/c/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/SpeechListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/TextUnderstanderListener;

.field final synthetic b:Lcom/iflytek/cloud/c/a/j;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/j;Lcom/iflytek/cloud/TextUnderstanderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/j$a;->b:Lcom/iflytek/cloud/c/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/j$a;->a:Lcom/iflytek/cloud/TextUnderstanderListener;

    return-void
.end method


# virtual methods
.method public onBufferReceived([B)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/iflytek/cloud/UnderstanderResult;

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/UnderstanderResult;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/j$a;->a:Lcom/iflytek/cloud/TextUnderstanderListener;

    invoke-interface {p1, v0}, Lcom/iflytek/cloud/TextUnderstanderListener;->onResult(Lcom/iflytek/cloud/UnderstanderResult;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/j$a;->a:Lcom/iflytek/cloud/TextUnderstanderListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/iflytek/cloud/TextUnderstanderListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
