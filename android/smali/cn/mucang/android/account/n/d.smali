.class public Lcn/mucang/android/account/n/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/account/n/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/n/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/account/n/d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/account/n/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/n/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/n/c;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/account/n/d;->c:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/n/d;->b()V

    .line 2
    iput p1, p0, Lcn/mucang/android/account/n/d;->b:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/account/n/d;->a()Lcn/mucang/android/account/n/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/account/n/c;->c(I)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/n/d;->c()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/n/d;->a()Lcn/mucang/android/account/n/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3
    iget p1, p0, Lcn/mucang/android/account/n/d;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/account/n/d;->c:I

    .line 4
    iget v1, p0, Lcn/mucang/android/account/n/d;->b:I

    sub-int/2addr v1, p1

    if-lez v1, :cond_1

    .line 5
    invoke-interface {v0, v1}, Lcn/mucang/android/account/n/c;->c(I)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/n/d;->c()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/account/n/c;->f()V

    :cond_2
    :goto_0
    return-void
.end method
