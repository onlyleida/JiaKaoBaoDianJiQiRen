.class public abstract Lcom/iflytek/cloud/a/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/f/d$a;
    }
.end annotation


# static fields
.field protected static final sSync:Ljava/lang/Object;


# instance fields
.field protected mSessionParams:Lcom/iflytek/cloud/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "params"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStartMode(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/a/f/d$a;
    .locals 0

    .line 1
    sget-object p1, Lcom/iflytek/cloud/a/f/d$a;->a:Lcom/iflytek/cloud/a/f/d$a;

    return-object p1
.end method

.method public setParameter(Lcom/iflytek/cloud/b/a;)Z
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const/4 p1, 0x1

    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "params"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->a()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->d(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 6
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/b/a;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
