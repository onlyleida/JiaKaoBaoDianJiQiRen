.class Lcom/iflytek/cloud/a/h/c$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/iflytek/cloud/a/h/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/h/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/iflytek/cloud/a/h/c$c;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ", endpos: "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    const/16 v1, 0x4e21

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "tts-onCompleted"

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v2}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    iget v2, p0, Lcom/iflytek/cloud/a/h/c$c;->a:I

    if-eq v2, v0, :cond_1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts-onSpeakProgress percent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", begpos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iput v0, p0, Lcom/iflytek/cloud/a/h/c$c;->a:I

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v1}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, p1, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakProgress(III)V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "tts-onSpeakResumed"

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakResumed()V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "tts-onSpeakPaused"

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakPaused()V

    goto/16 :goto_0

    .line 16
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "percent"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "begpos"

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "endpos"

    .line 19
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "spellinfo"

    .line 20
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v4, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v4}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tts-onBufferProgress percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", beg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spell: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {v1}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/iflytek/cloud/SynthesizerListener;->onBufferProgress(IIILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "tts-onSpeakBegin"

    .line 24
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/iflytek/cloud/a/h/c$c;->b:Lcom/iflytek/cloud/a/h/c;

    invoke-static {p1}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakBegin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakSession mUiHandler error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
