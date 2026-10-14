.class Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a:Ljava/lang/ref/Reference;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->i:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b()V

    :cond_0
    return-void
.end method

.method d(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    return-object v0
.end method

.method f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eq p1, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method h(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a:Ljava/lang/ref/Reference;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a:Ljava/lang/ref/Reference;

    :cond_1
    :goto_0
    return-void
.end method

.method i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->h(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    :cond_0
    return-void
.end method

.method j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->e()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
