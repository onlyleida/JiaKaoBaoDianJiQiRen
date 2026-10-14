.class Lcom/iflytek/cloud/c/a/f$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/c/a/f$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/c/a/f$a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/f$a$a;->a:Lcom/iflytek/cloud/c/a/f$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/f$a$a;->a:Lcom/iflytek/cloud/c/a/f$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/f$a;->a(Lcom/iflytek/cloud/c/a/f$a;)Lcom/iflytek/cloud/GrammarListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/f$a$a;->a:Lcom/iflytek/cloud/c/a/f$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/f$a;->a(Lcom/iflytek/cloud/c/a/f$a;)Lcom/iflytek/cloud/GrammarListener;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/f$a$a;->a:Lcom/iflytek/cloud/c/a/f$a;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/f$a;->a(Lcom/iflytek/cloud/c/a/f$a;)Lcom/iflytek/cloud/GrammarListener;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
