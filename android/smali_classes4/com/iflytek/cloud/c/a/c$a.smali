.class final Lcom/iflytek/cloud/c/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/IdentityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/IdentityListener;

.field private b:Z

.field private c:Landroid/os/Handler;

.field final synthetic d:Lcom/iflytek/cloud/c/a/c;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/c;Lcom/iflytek/cloud/IdentityListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/c$a;->a:Lcom/iflytek/cloud/IdentityListener;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/c$a;->b:Z

    .line 4
    new-instance p1, Lcom/iflytek/cloud/c/a/c$a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/c$a$a;-><init>(Lcom/iflytek/cloud/c/a/c$a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/c$a;->a:Lcom/iflytek/cloud/IdentityListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/c$a;)Lcom/iflytek/cloud/IdentityListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/c$a;->a:Lcom/iflytek/cloud/IdentityListener;

    return-object p0
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/c$a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/c$a;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/c/a/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/c/a/c$a;->b:Z

    return p0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c;->a(Lcom/iflytek/cloud/c/a/c;)Lcom/iflytek/cloud/a/f/a;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/e/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/e/b;->a()Lcom/iflytek/cloud/msc/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/util/c;->a()V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    invoke-static {v0}, Lcom/iflytek/cloud/c/a/c;->b(Lcom/iflytek/cloud/c/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/c$a;->d:Lcom/iflytek/cloud/c/a/c;

    invoke-static {v1}, Lcom/iflytek/cloud/c/a/c;->c(Lcom/iflytek/cloud/c/a/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/c$a;->a()V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/IdentityResult;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/c$a;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/c$a;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
