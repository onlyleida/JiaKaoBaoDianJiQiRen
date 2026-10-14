.class abstract Lcom/felhr/usbserial/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Z

.field private volatile b:Z

.field private volatile c:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/felhr/usbserial/a;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/felhr/usbserial/a;->b:Z

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/felhr/usbserial/a;->b:Z

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/a;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/a;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/felhr/usbserial/a;->c:Ljava/lang/Thread;

    .line 3
    :goto_0
    iget-boolean v0, p0, Lcom/felhr/usbserial/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/felhr/usbserial/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/felhr/usbserial/a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
