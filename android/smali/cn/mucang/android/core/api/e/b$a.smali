.class Lcn/mucang/android/core/api/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/verify/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/e/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/e/b$a;->a:Lcn/mucang/android/core/api/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/e/b$a;->a:Lcn/mucang/android/core/api/e/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/e/b;->b(Lcn/mucang/android/core/api/e/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/e/b$a;->a:Lcn/mucang/android/core/api/e/b;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/e/b;->c(Lcn/mucang/android/core/api/e/b;Z)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/e/b$a;->a:Lcn/mucang/android/core/api/e/b;

    invoke-static {p1, p2}, Lcn/mucang/android/core/api/e/b;->d(Lcn/mucang/android/core/api/e/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/e/b$a;->a:Lcn/mucang/android/core/api/e/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/e/b;->b(Lcn/mucang/android/core/api/e/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
