.class Lcn/mucang/android/core/widget/datepick/SelectDateView$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/widget/datepick/SelectDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/core/widget/datepick/SelectDateView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/core/widget/datepick/SelectDateView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->j()V

    :cond_0
    return-void
.end method
