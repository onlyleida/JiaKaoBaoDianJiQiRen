.class Lcom/iflytek/cloud/SpeechUtility$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/SpeechUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field final synthetic c:Lcom/iflytek/cloud/SpeechUtility;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechUtility;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUtility$b;->c:Lcom/iflytek/cloud/SpeechUtility;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUtility$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUtility$b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUtility$b;->a:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUtility$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getInstance(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;

    move-result-object v0

    const-string v1, "5d2386c983"

    .line 2
    invoke-virtual {v0, v1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->setAppId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUtility$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->setSubId(Ljava/lang/String;)V

    return-void
.end method
