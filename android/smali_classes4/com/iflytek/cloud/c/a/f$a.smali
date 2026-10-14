.class final Lcom/iflytek/cloud/c/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/GrammarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/GrammarListener;

.field private b:Landroid/os/Handler;

.field final synthetic c:Lcom/iflytek/cloud/c/a/f;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/c/a/f;Lcom/iflytek/cloud/GrammarListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/f$a;->c:Lcom/iflytek/cloud/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/c/a/f$a;->a:Lcom/iflytek/cloud/GrammarListener;

    .line 3
    new-instance p1, Lcom/iflytek/cloud/c/a/f$a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/iflytek/cloud/c/a/f$a$a;-><init>(Lcom/iflytek/cloud/c/a/f$a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/f$a;->b:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/iflytek/cloud/c/a/f$a;->a:Lcom/iflytek/cloud/GrammarListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/f$a;)Lcom/iflytek/cloud/GrammarListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/f$a;->a:Lcom/iflytek/cloud/GrammarListener;

    return-object p0
.end method


# virtual methods
.method public onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/f$a;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/f$a;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/f$a;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/f$a;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
