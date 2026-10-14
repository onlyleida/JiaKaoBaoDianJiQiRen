.class public Lcn/mucang/android/jiakaoyi/signal/Tiger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/Tiger$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/Tiger$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->f(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic c(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->k(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method private static d(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/r;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/q;)V

    :cond_2
    return-void
.end method

.method private static e(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce8\u9500:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tiger"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5206\u53d1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tiger"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/Tiger;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    invoke-interface {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static g(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/r;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->k(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p0, v3}, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/signal/Tiger$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method private static k(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    const-string v1, "Tiger"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_5

    .line 3
    instance-of v0, p0, Landroid/app/Activity;

    const-string v2, "\u6ce8\u518c\u65f6\u9875\u9762\u5df2\u9500\u6bc1"

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->g(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 7
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->g(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_4
    instance-of v0, p0, Lcn/mucang/android/core/api/c/e;

    if-eqz v0, :cond_5

    .line 13
    move-object v0, p0

    check-cast v0, Lcn/mucang/android/core/api/c/e;

    invoke-interface {v0}, Lcn/mucang/android/core/api/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_5
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->d(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v3}, Lcn/mucang/android/jiakaoyi/signal/Tiger$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/signal/Tiger$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
