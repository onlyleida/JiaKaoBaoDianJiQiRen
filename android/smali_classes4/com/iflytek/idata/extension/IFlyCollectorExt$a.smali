.class Lcom/iflytek/idata/extension/IFlyCollectorExt$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/idata/extension/IFlyCollectorExt;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/idata/extension/IFlyCollectorExt;


# direct methods
.method constructor <init>(Lcom/iflytek/idata/extension/IFlyCollectorExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt$a;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    new-instance v0, Lcom/iflytek/idata/extension/c;

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt$a;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    invoke-static {v1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->access$000(Lcom/iflytek/idata/extension/IFlyCollectorExt;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/idata/extension/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/idata/extension/c;->run()V

    return-void
.end method
