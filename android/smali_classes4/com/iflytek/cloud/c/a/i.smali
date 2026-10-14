.class public Lcom/iflytek/cloud/c/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/i$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/iflytek/cloud/c/a/i;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    .line 3
    new-instance v0, Lcom/iflytek/cloud/c/a/f;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/c/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .locals 3

    .line 1
    new-instance v0, Lcom/iflytek/cloud/c/a/i$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/c/a/i$a;-><init>(Lcom/iflytek/cloud/c/a/i;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    const-string v1, "asr_sch"

    invoke-virtual {p1, v1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    const-string v1, "nlp_version"

    invoke-virtual {p1, v1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "3.0"

    goto :goto_0

    :cond_1
    const-string p1, "2.0"

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v2, v1, p1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    const-string v1, "result_type"

    invoke-virtual {p1, v1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    const-string v2, "json"

    invoke-virtual {p1, v1, v2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/c/a/f;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    const/4 p1, 0x0

    return p1
.end method

.method public a([BII)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/f;->writeAudio([BII)I

    move-result p1

    return p1
.end method

.method public a(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/f;->cancel(Z)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 14
    sput-object v1, Lcom/iflytek/cloud/c/a/i;->a:Lcom/iflytek/cloud/c/a/i;

    :cond_0
    return v0
.end method

.method public a(Lcom/iflytek/cloud/b/a;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/f;->isListening()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/i;->b:Lcom/iflytek/cloud/c/a/f;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/f;->stopListening()V

    return-void
.end method
