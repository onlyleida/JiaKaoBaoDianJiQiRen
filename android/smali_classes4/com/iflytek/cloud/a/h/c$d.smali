.class Lcom/iflytek/cloud/a/h/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/a/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/cloud/a/h/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/h/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iput-object p2, p0, Lcom/iflytek/cloud/a/h/c$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->d(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    const-string v1, "tts_data_notify"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->e(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "buffer"

    .line 6
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 7
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v3}, Lcom/iflytek/cloud/a/h/c;->c(Lcom/iflytek/cloud/a/h/c;)Z

    move-result v3

    const/16 v5, 0x5209

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 9
    iput v5, v3, Landroid/os/Message;->what:I

    .line 10
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 11
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 12
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    iget-object v4, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iget-object v4, v4, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static {v4, v5, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v3}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v3

    invoke-interface {v3, v5, v2, v2, v4}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v3}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/iflytek/cloud/record/b;->a(Ljava/util/ArrayList;III)V

    .line 16
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "percent"

    .line 18
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "begpos"

    .line 19
    invoke-virtual {p1, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "endpos"

    .line 20
    invoke-virtual {p1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "spellinfo"

    .line 21
    invoke-virtual {p1, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v3}, Lcom/iflytek/cloud/a/h/c;->c(Lcom/iflytek/cloud/a/h/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    iget-object p3, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iget-object p3, p3, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    const/4 p4, 0x2

    invoke-static {p3, p4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/iflytek/cloud/SynthesizerListener;->onBufferProgress(IIILjava/lang/String;)V

    :cond_3
    :goto_2
    const/16 p1, 0x64

    if-lt p2, p1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->f(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "audio_format"

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->g(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->h(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/iflytek/cloud/a/h/c$d;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p2}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p3, :cond_4

    goto :goto_4

    .line 28
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->i(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 30
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->j(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, p4

    .line 31
    :goto_3
    iget-object p2, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p2}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iflytek/cloud/record/b;->e()I

    move-result p2

    if-eqz p2, :cond_a

    .line 32
    iget-object p2, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p2}, Lcom/iflytek/cloud/a/h/c;->m(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/record/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p3, :cond_9

    .line 33
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 34
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->c(Lcom/iflytek/cloud/a/h/c;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 35
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iget-object p1, p1, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    invoke-static {p1, v0, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_5

    .line 37
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 38
    :cond_a
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x2786

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :goto_5
    return-void

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 40
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 41
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->c(Lcom/iflytek/cloud/a/h/c;)Z

    move-result p1

    const/16 p2, 0x4e2a

    if-eqz p1, :cond_c

    .line 42
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iget-object p1, p1, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    new-instance p3, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p3, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-static {p1, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 43
    :cond_c
    :try_start_2
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    new-instance p3, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p3, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {p1, p3}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    nop

    .line 44
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->k(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 45
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->l(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    :cond_e
    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->c(Lcom/iflytek/cloud/a/h/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    iget-object v0, v0, Lcom/iflytek/cloud/a/h/c;->t:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$d;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->t(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    :goto_0
    return-void
.end method
