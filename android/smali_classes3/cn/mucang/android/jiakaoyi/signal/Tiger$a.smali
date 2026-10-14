.class final Lcn/mucang/android/jiakaoyi/signal/Tiger$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/Tiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;->c:Landroidx/lifecycle/r;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;->b:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->c(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
