.class Lcom/iflytek/cloud/SpeechSynthesizer$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/SpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/SpeechSynthesizer;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechSynthesizer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    iget-object p1, p1, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/InitListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/iflytek/cloud/InitListener;->onInit(I)V

    return-void
.end method
