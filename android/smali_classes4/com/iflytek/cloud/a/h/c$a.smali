.class Lcom/iflytek/cloud/a/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/a/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/h/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "percent"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "begpos"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpos"

    .line 4
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spellinfo"

    .line 5
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p5, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p5}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 7
    iget-object p5, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p5}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object p5

    const/4 v1, 0x2

    invoke-static {p5, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :cond_0
    :try_start_0
    iget-object p5, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p5}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/iflytek/cloud/record/b;->a(Ljava/util/ArrayList;III)V

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->n(Lcom/iflytek/cloud/a/h/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 11
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    const/16 p3, 0x4e2a

    invoke-direct {p2, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object p2, p1, Lcom/iflytek/cloud/a/h/c;->o:Lcom/iflytek/cloud/SpeechError;

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    iget-object p2, p2, Lcom/iflytek/cloud/a/h/c;->o:Lcom/iflytek/cloud/SpeechError;

    const/4 p3, 0x6

    invoke-static {p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    :goto_0
    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    iput-object p1, v0, Lcom/iflytek/cloud/a/h/c;->o:Lcom/iflytek/cloud/SpeechError;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/iflytek/cloud/a/h/c;->m:Z

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->o(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->p(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "audio_format"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->q(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/h/c$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->q(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/h/c$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/a/h/c$f;->a()V

    const-string v0, "onCompleted NextSession pause"

    .line 8
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v1}, Lcom/iflytek/cloud/a/h/c;->r(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/f/a;->getSessionID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v1}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->b(Lcom/iflytek/cloud/a/h/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->s(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$a;->a:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->s(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/record/c;->k()V

    :cond_2
    return-void
.end method
